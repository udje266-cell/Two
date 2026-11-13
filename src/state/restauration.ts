import type { EtatStock } from '@/domain/types';

/** Données persistées sur l'appareil (tout l'état sauf le catalogue). */
export type EtatPersiste = {
  ville: string;
  portions: Record<string, number>;
  stocks: Record<string, Record<string, EtatStock>>;
  favoris: string[];
  courses: string[];
  enCours: { slug: string; etape: number; portions: number } | null;
  minuteur: { slug: string; etape: number; finA: number | null; resteMs: number } | null;
};

const estObjet = (v: unknown): v is Record<string, unknown> => typeof v === 'object' && v !== null && !Array.isArray(v);
const estNombre = (v: unknown): v is number => typeof v === 'number' && Number.isFinite(v);
const chaines = (v: unknown) => (Array.isArray(v) ? v.filter((x): x is string => typeof x === 'string') : []);

function stock(v: unknown): EtatStock | null {
  if (!estObjet(v)) return null;
  if (v.etat === 'partie') return estNombre(v.disponible) && v.disponible >= 0 ? { etat: 'partie', disponible: v.disponible } : null;
  if (v.etat === 'aucun' || v.etat === 'assez' || v.etat === 'a_verifier') return { etat: v.etat };
  return null;
}

/**
 * Valide un état lu sur l'appareil : on ne garde que les clés connues et bien formées,
 * pour qu'une donnée ancienne ou corrompue ne fasse pas planter l'app.
 */
export function validerEtat(brut: unknown): Partial<EtatPersiste> {
  if (!estObjet(brut)) return {};
  const res: Partial<EtatPersiste> = {};
  if (typeof brut.ville === 'string' && brut.ville) res.ville = brut.ville;
  if (estObjet(brut.portions)) {
    res.portions = Object.fromEntries(
      Object.entries(brut.portions).filter((e): e is [string, number] => estNombre(e[1]) && e[1] >= 1 && e[1] <= 50),
    );
  }
  if (estObjet(brut.stocks)) {
    res.stocks = {};
    for (const [slug, parIng] of Object.entries(brut.stocks)) {
      if (!estObjet(parIng)) continue;
      const ok: Record<string, EtatStock> = {};
      for (const [id, s] of Object.entries(parIng)) {
        const v = stock(s);
        if (v) ok[id] = v;
      }
      res.stocks[slug] = ok;
    }
  }
  res.favoris = chaines(brut.favoris);
  res.courses = chaines(brut.courses);
  const ec = brut.enCours;
  res.enCours =
    estObjet(ec) && typeof ec.slug === 'string' && estNombre(ec.etape) && estNombre(ec.portions)
      ? { slug: ec.slug, etape: Math.max(0, Math.floor(ec.etape)), portions: ec.portions }
      : null;
  const m = brut.minuteur;
  res.minuteur =
    estObjet(m) && typeof m.slug === 'string' && estNombre(m.etape) && estNombre(m.resteMs) && (m.finA === null || estNombre(m.finA))
      ? { slug: m.slug, etape: m.etape, finA: m.finA as number | null, resteMs: m.resteMs }
      : null;
  return res;
}
