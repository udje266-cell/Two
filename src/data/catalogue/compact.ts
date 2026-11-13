import type { Etape, IngredientRecette, Niveau, Recette } from '@/domain/types';

/**
 * Format d'écriture compact des recettes du catalogue.
 * - i : [id, quantité, préparation?] ; un id préfixé de « ? » est facultatif,
 *   suffixé de « ! » sa quantité est fixe (ne suit pas les portions).
 * - e : [action, repère, minutes de minuteur?, dose?] ou, pour une étape détaillée,
 *   { a: action, r: repère, min?, dose?, d?: [[ingrédient, part 0–1], …], feu?, astuce? }
 */
export type EtapeDetaillee = {
  a: string;
  r: string;
  min?: number;
  dose?: string;
  d?: [string, number][];
  feu?: string;
  astuce?: string;
};

export type RecetteCompacte = {
  s: string;
  t: string;
  o: string;
  f: string[];
  n: 'd' | 'i' | 'a';
  a: number;
  tt: number;
  p: number;
  pc?: boolean;
  m: string[];
  i: [string, number, string?][];
  e: ([string, string, number?, string?] | EtapeDetaillee)[];
  al?: string[];
  /** Article Wikipédia (fr) qui documente le plat ; sert de source et pour la photo. */
  w?: string;
};

const NIVEAU: Record<RecetteCompacte['n'], Niveau> = { d: 'debutant', i: 'intermediaire', a: 'avance' };

export function deplier(r: RecetteCompacte): Recette {
  const ingredients: IngredientRecette[] = r.i.map(([brut, quantite, preparation]) => {
    const facultatif = brut.startsWith('?');
    const fixe = brut.endsWith('!');
    return {
      ingredientId: brut.replace(/^\?/, '').replace(/!$/, ''),
      quantite,
      regle: fixe ? 'fixe' : 'proportionnel',
      indispensable: !facultatif,
      preparation,
    };
  });
  const etapes: Etape[] = r.e.map((x, k) => {
    if (Array.isArray(x)) {
      const [action, repere, minutes, dose] = x;
      return { ordre: k + 1, action, repere, dose, minuteurSec: minutes ? Math.round(minutes * 60) : undefined };
    }
    return {
      ordre: k + 1,
      action: x.a,
      repere: x.r,
      dose: x.dose,
      doses: x.d?.map(([ingredientId, part]) => ({ ingredientId, part })),
      feu: x.feu,
      astuce: x.astuce,
      minuteurSec: x.min ? Math.round(x.min * 60) : undefined,
    };
  });
  const pc = !!r.pc;
  return {
    slug: r.s,
    titre: r.t,
    alias: r.al ?? [],
    origine: r.o,
    familles: r.f,
    niveau: NIVEAU[r.n],
    tempsActifMin: r.a,
    tempsTotalMin: r.tt,
    materiel: r.m,
    rendement: { valeur: r.p, unite: pc ? 'pieces' : 'personnes' },
    plageTestee: pc ? { min: Math.max(1, Math.round(r.p / 2)), max: r.p * 2 } : { min: 1, max: Math.max(8, r.p * 2) },
    ingredients,
    etapes,
    source: r.w ? `https://fr.wikipedia.org/wiki/${encodeURIComponent(r.w.replace(/ /g, '_'))}` : undefined,
  };
}
