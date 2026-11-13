import AsyncStorage from '@react-native-async-storage/async-storage';
import { createContext, useContext, useEffect, useMemo, useReducer, type ReactNode } from 'react';

import { catalogueLocal, chargerCatalogue, type Catalogue } from '@/data/depot';
import type { EtatStock } from '@/domain/types';

import { validerEtat, type EtatPersiste } from './restauration';

type EnCours = { slug: string; etape: number; portions: number };

/** Minuteur sauvegardé avec son échéance, pour retrouver le bon état après une mise en veille. */
export type Minuteur = { slug: string; etape: number; finA: number | null; resteMs: number };

type Etat = {
  catalogue: Catalogue;
  ville: string;
  portions: Record<string, number>;
  stocks: Record<string, Record<string, EtatStock>>;
  favoris: string[];
  courses: string[];
  enCours: EnCours | null;
  minuteur: Minuteur | null;
  /** Vrai une fois l'état de l'appareil relu : on ne sauvegarde pas avant. */
  restaure: boolean;
};

type Action =
  | { type: 'catalogue'; catalogue: Catalogue }
  | { type: 'restaurer'; etat: Partial<EtatPersiste> }
  | { type: 'portions'; slug: string; valeur: number }
  | { type: 'stock'; slug: string; ingredientId: string; stock: EtatStock }
  | { type: 'favori'; slug: string }
  | { type: 'courses'; slug: string; ajouter: boolean }
  | { type: 'enCours'; valeur: EnCours | null }
  | { type: 'minuteur'; valeur: Minuteur | null }
  | { type: 'ville'; valeur: string };

const initial: Etat = {
  catalogue: catalogueLocal,
  ville: 'Abidjan',
  portions: {},
  stocks: {},
  favoris: [],
  courses: [],
  enCours: null,
  minuteur: null,
  restaure: false,
};

function reducteur(etat: Etat, a: Action): Etat {
  switch (a.type) {
    case 'catalogue':
      return { ...etat, catalogue: a.catalogue };
    case 'restaurer':
      return { ...etat, ...a.etat, restaure: true };
    case 'portions':
      if (!Number.isFinite(a.valeur)) return etat;
      return { ...etat, portions: { ...etat.portions, [a.slug]: Math.max(1, Math.min(50, Math.round(a.valeur))) } };
    case 'stock':
      return { ...etat, stocks: { ...etat.stocks, [a.slug]: { ...etat.stocks[a.slug], [a.ingredientId]: a.stock } } };
    case 'favori':
      return {
        ...etat,
        favoris: etat.favoris.includes(a.slug) ? etat.favoris.filter((s) => s !== a.slug) : [...etat.favoris, a.slug],
      };
    case 'courses': {
      const sans = etat.courses.filter((s) => s !== a.slug);
      return { ...etat, courses: a.ajouter ? [...sans, a.slug] : sans };
    }
    case 'enCours':
      return { ...etat, enCours: a.valeur };
    case 'minuteur':
      return { ...etat, minuteur: a.valeur };
    case 'ville':
      return { ...etat, ville: a.valeur };
  }
}

const CLE = 'mijote/etat/v1';
const Contexte = createContext<{ etat: Etat; envoyer: (a: Action) => void } | null>(null);

export function FournisseurMijote({ children }: { children: ReactNode }) {
  const [etat, envoyer] = useReducer(reducteur, initial);

  useEffect(() => {
    let actif = true;
    AsyncStorage.getItem(CLE)
      .then((brut) => {
        if (actif) envoyer({ type: 'restaurer', etat: brut ? validerEtat(JSON.parse(brut) as unknown) : {} });
      })
      .catch((e: unknown) => {
        // État illisible : on repart d'un état vide plutôt que de bloquer l'app.
        if (__DEV__) console.warn('Mijote : état local illisible', e);
        if (actif) envoyer({ type: 'restaurer', etat: {} });
      });
    void chargerCatalogue().then((catalogue) => actif && envoyer({ type: 'catalogue', catalogue }));
    return () => {
      actif = false;
    };
  }, []);

  useEffect(() => {
    if (!etat.restaure) return;
    const { catalogue: _c, restaure: _r, ...aSauver } = etat;
    AsyncStorage.setItem(CLE, JSON.stringify(aSauver)).catch((e: unknown) => {
      if (__DEV__) console.warn('Mijote : sauvegarde locale impossible', e);
    });
  }, [etat]);

  const valeur = useMemo(() => ({ etat, envoyer }), [etat]);
  return <Contexte.Provider value={valeur}>{children}</Contexte.Provider>;
}

export function useMijote() {
  const ctx = useContext(Contexte);
  if (!ctx) throw new Error('useMijote doit être utilisé dans FournisseurMijote');
  return ctx;
}

export function useRecette(slug: string | undefined) {
  const { etat } = useMijote();
  const recette = etat.catalogue.recettes.find((r) => r.slug === slug);
  const portions = (slug && etat.portions[slug]) || recette?.rendement.valeur || 4;
  const stocks = (slug && etat.stocks[slug]) || {};
  return { recette, portions, stocks };
}
