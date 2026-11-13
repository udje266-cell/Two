import type { FormatVente, Releve } from './types';

export const SEUIL_RELEVE_ANCIEN_JOURS = 28;

/** Prix en FCFA d'une unité de base (1 g, 1 ml ou 1 pièce). */
export function prixParUniteBase(releve: Releve): number {
  return releve.unitePrix === 'piece' ? releve.prixMoyen : releve.prixMoyen / 1000;
}

/** Valeur de la quantité utilisée, au prix moyen relevé. */
export function valeurQuantite(quantite: number, releve: Releve): number {
  return quantite * prixParUniteBase(releve);
}

export type Achat =
  | { mode: 'vrac'; quantiteAchetee: number; cout: number; surplus: 0 }
  | { mode: 'format'; format: FormatVente; nombre: number; quantiteAchetee: number; cout: number; surplus: number };

/**
 * Coût d'achat d'une quantité manquante.
 * Avec un format imposé : nombre de paquets arrondi au supérieur × prix du paquet.
 * Sinon : achat en vrac au prix relevé.
 */
export function coutAchat(manquant: number, releve: Releve | undefined, format?: FormatVente): Achat | null {
  if (manquant <= 0) return { mode: 'vrac', quantiteAchetee: 0, cout: 0, surplus: 0 };
  if (format && format.quantite > 0 && Number.isFinite(format.prix)) {
    const nombre = Math.ceil(manquant / format.quantite);
    const quantiteAchetee = nombre * format.quantite;
    return { mode: 'format', format, nombre, quantiteAchetee, cout: nombre * format.prix, surplus: quantiteAchetee - manquant };
  }
  if (!releve) return null;
  return { mode: 'vrac', quantiteAchetee: manquant, cout: valeurQuantite(manquant, releve), surplus: 0 };
}

export function releveAncien(releve: Releve, aujourdhui: Date, seuilJours = SEUIL_RELEVE_ANCIEN_JOURS): boolean {
  const date = new Date(`${releve.dateReleve}T00:00:00Z`).getTime();
  if (Number.isNaN(date)) return true;
  return (aujourdhui.getTime() - date) / 86_400_000 > seuilJours;
}

/**
 * Choisit le dernier relevé compatible : d'abord dans la zone demandée,
 * puis dans la ville. Renvoie aussi la zone réellement utilisée.
 */
export function choisirReleve(releves: Releve[], ingredientId: string, ville: string, zone?: string): Releve | undefined {
  const candidats = releves
    .filter((r) => r.ingredientId === ingredientId && r.ville === ville)
    .sort((a, b) => b.dateReleve.localeCompare(a.dateReleve));
  return (zone && candidats.find((r) => r.zone === zone)) || candidats[0];
}

export function formaterFcfa(montant: number): string {
  return `${Math.round(montant).toLocaleString('fr-FR').replace(/ | /g, ' ')} FCFA`;
}
