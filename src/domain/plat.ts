import { choisirReleve, coutAchat, releveAncien, valeurQuantite, type Achat } from './budget';
import { quantiteManquante, quantiteRequise } from './quantites';
import type { EtatStock, FormatVente, Ingredient, Recette, Releve } from './types';

export type LignePlat = {
  ingredient: Ingredient;
  requis: number;
  manquant: number;
  indispensable: boolean;
  stock: EtatStock;
  releve?: Releve;
  valeur: number | null;
  achat: Achat | null;
  ancien: boolean;
};

export type CalculPlat = {
  lignes: LignePlat[];
  /** Coût du plat : valeur de tout ce qui est utilisé, stock compris. */
  coutPlat: number;
  coutParPortion: number;
  /** Budget courses : ce qu'il faut acheter, formats arrondis. */
  budgetCourses: number;
  /** Ingrédients sans prix : l'estimation est incomplète. */
  aChiffrer: Ingredient[];
  contientAncien: boolean;
};

export type ContexteCalcul = {
  ingredients: Record<string, Ingredient>;
  releves: Releve[];
  formats: FormatVente[];
  ville: string;
  aujourdhui: Date;
};

/** Un seul calcul alimente la fiche, la liste de courses, les prix et le mode guidé. */
export function calculerPlat(
  recette: Recette,
  portions: number,
  stocks: Record<string, EtatStock>,
  ctx: ContexteCalcul,
): CalculPlat {
  const lignes: LignePlat[] = recette.ingredients.map((ri) => {
    const ingredient = ctx.ingredients[ri.ingredientId];
    const requis = quantiteRequise(ri, recette.rendement.valeur, portions);
    const stock = stocks[ri.ingredientId] ?? { etat: 'aucun' };
    const manquant = quantiteManquante(requis, stock);
    const releve = choisirReleve(ctx.releves, ri.ingredientId, ctx.ville);
    const format = ctx.formats.find((f) => f.ingredientId === ri.ingredientId && f.ville === ctx.ville);
    return {
      ingredient,
      requis,
      manquant,
      indispensable: ri.indispensable,
      stock,
      releve,
      valeur: releve ? valeurQuantite(requis, releve) : null,
      achat: coutAchat(manquant, releve, format),
      ancien: releve ? releveAncien(releve, ctx.aujourdhui) : false,
    };
  });

  const coutPlat = lignes.reduce((s, l) => s + (l.valeur ?? 0), 0);
  return {
    lignes,
    coutPlat,
    coutParPortion: portions > 0 ? coutPlat / portions : 0,
    budgetCourses: lignes.reduce((s, l) => s + (l.achat?.cout ?? 0), 0),
    aChiffrer: lignes.filter((l) => l.valeur === null).map((l) => l.ingredient),
    contientAncien: lignes.some((l) => l.ancien),
  };
}
