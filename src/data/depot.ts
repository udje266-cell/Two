import type { FormatVente, Ingredient, Recette, Releve } from '@/domain/types';

import * as seed from './seed';
import { supabase } from './supabase';

export type Catalogue = {
  recettes: Recette[];
  ingredients: Record<string, Ingredient>;
  releves: Releve[];
  formats: FormatVente[];
  source: 'supabase' | 'local';
};

export const catalogueLocal: Catalogue = { ...seed, source: 'local' };

type LigneVersion = {
  niveau: Recette['niveau'];
  temps_actif_min: number;
  temps_total_min: number;
  materiel: string[];
  rendement_valeur: number;
  rendement_unite: 'personnes' | 'pieces';
  plage_min: number;
  plage_max: number;
  ingredients_recette: {
    ingredient_id: string; ordre: number; quantite: number;
    regle: 'proportionnel' | 'fixe'; indispensable: boolean; preparation: string | null;
  }[];
  etapes: { ordre: number; action: string; dose: string | null; repere: string; minuteur_sec: number | null }[];
};

/**
 * Charge le catalogue publié depuis Supabase. En cas d'absence de configuration
 * ou d'erreur réseau, renvoie les données locales pour rester utilisable hors connexion.
 */
export async function chargerCatalogue(): Promise<Catalogue> {
  if (!supabase) return catalogueLocal;
  try {
    const [rec, ing, rel, fmt] = await Promise.all([
      supabase
        .from('recettes')
        .select(`slug, titre, alias, familles,
          recettes_lieux(lieux(nom)),
          versions_recette!inner(niveau, temps_actif_min, temps_total_min, materiel, rendement_valeur,
            rendement_unite, plage_min, plage_max, statut,
            ingredients_recette(ingredient_id, ordre, quantite, regle, indispensable, preparation),
            etapes(ordre, action, dose, repere, minuteur_sec))`)
        .eq('versions_recette.statut', 'publiee'),
      supabase.from('ingredients').select('id, nom, alias, unite, rayon, allergenes'),
      supabase.from('releves').select('ingredient_id, ville, zone, prix_min, prix_moyen, prix_max, unite_prix, source, date_releve').eq('valide', true),
      supabase.from('formats_vente').select('ingredient_id, ville, libelle, quantite, prix').eq('valide', true),
    ]);
    const erreur = rec.error ?? ing.error ?? rel.error ?? fmt.error;
    if (erreur) throw erreur;

    const recettes: Recette[] = (rec.data ?? []).flatMap((r) => {
      const v = (r.versions_recette as unknown as LigneVersion[] | null)?.[0];
      if (!v || !(Number(v.rendement_valeur) > 0)) return [];
      const lieux = (r.recettes_lieux as unknown as { lieux: { nom: string } | null }[]) ?? [];
      return [{
        slug: r.slug,
        titre: r.titre,
        alias: r.alias ?? [],
        origine: lieux[0]?.lieux?.nom ?? '',
        familles: r.familles ?? [],
        niveau: v.niveau,
        tempsActifMin: v.temps_actif_min,
        tempsTotalMin: v.temps_total_min,
        materiel: v.materiel,
        rendement: { valeur: Number(v.rendement_valeur), unite: v.rendement_unite },
        plageTestee: { min: Number(v.plage_min), max: Number(v.plage_max) },
        ingredients: [...v.ingredients_recette]
          .sort((a, b) => a.ordre - b.ordre)
          .map((i) => ({
            ingredientId: i.ingredient_id, quantite: Number(i.quantite), regle: i.regle,
            indispensable: i.indispensable, preparation: i.preparation ?? undefined,
          })),
        etapes: [...v.etapes]
          .sort((a, b) => a.ordre - b.ordre)
          .map((e) => ({
            ordre: e.ordre, action: e.action, dose: e.dose ?? undefined, repere: e.repere,
            minuteurSec: e.minuteur_sec ?? undefined,
          })),
      }];
    });

    // Tant qu'aucune recette n'est publiée dans la base, on garde le catalogue local pour ne pas afficher une app vide.
    if (recettes.length === 0) return catalogueLocal;

    return {
      recettes,
      ingredients: Object.fromEntries((ing.data ?? []).map((i) => [i.id, i as Ingredient])),
      releves: (rel.data ?? []).filter((r) => Number.isFinite(Number(r.prix_moyen)) && r.prix_moyen !== null).map((r) => ({
        ingredientId: r.ingredient_id, ville: r.ville, zone: r.zone,
        prixMin: r.prix_min ?? undefined, prixMoyen: Number(r.prix_moyen), prixMax: r.prix_max ?? undefined,
        unitePrix: r.unite_prix, source: r.source, dateReleve: r.date_releve,
      })),
      formats: (fmt.data ?? []).filter((f) => Number(f.quantite) > 0 && f.prix !== null).map((f) => ({
        ingredientId: f.ingredient_id, ville: f.ville, libelle: f.libelle, quantite: Number(f.quantite), prix: Number(f.prix),
      })),
      source: 'supabase',
    };
  } catch (e) {
    // Hors connexion ou erreur serveur : on garde les données locales pour rester utilisable.
    if (__DEV__) console.warn('Mijote : catalogue Supabase indisponible', e);
    return catalogueLocal;
  }
}
