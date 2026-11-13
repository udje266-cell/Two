import type { EtatStock, IngredientRecette, Recette, UniteBase } from './types';

/**
 * Quantité requise pour `demande` portions (ou pièces).
 * Quantité requise = quantité de référence × demande ÷ référence.
 * Les décimales sont conservées : on n'arrondit qu'à l'affichage.
 */
export function quantiteRequise(ing: IngredientRecette, reference: number, demande: number): number {
  if (reference <= 0 || demande <= 0) return 0;
  if (ing.regle === 'fixe') return ing.quantite;
  return (ing.quantite * demande) / reference;
}

/** Indique si la demande sort de la plage testée de la recette. */
export function horsPlage(recette: Recette, demande: number): boolean {
  return demande < recette.plageTestee.min || demande > recette.plageTestee.max;
}

/**
 * Quantité manquante selon l'état du stock.
 * - assez : 0
 * - partie : max(0, requis − disponible)
 * - aucun : totalité
 * - à vérifier : totalité (l'ingrédient est ajouté et signalé « à vérifier »)
 */
export function quantiteManquante(requis: number, stock: EtatStock): number {
  switch (stock.etat) {
    case 'assez':
      return 0;
    case 'partie':
      return Math.max(0, requis - stock.disponible);
    case 'aucun':
    case 'a_verifier':
      return requis;
  }
}

/** Formatage d'une quantité pour l'affichage (arrondi seulement ici). */
export function formaterQuantite(valeur: number, unite: UniteBase): string {
  const nf = (n: number, d = 0) =>
    n.toLocaleString('fr-FR', { maximumFractionDigits: d }).replace(/ | /g, ' ');
  if (unite === 'g') return valeur >= 1000 ? `${nf(valeur / 1000, 2)} kg` : `${nf(valeur)} g`;
  if (unite === 'ml') return valeur >= 1000 ? `${nf(valeur / 1000, 2)} l` : `${nf(valeur)} ml`;
  return `${nf(valeur, 1)} pièce${valeur > 1 ? 's' : ''}`;
}
