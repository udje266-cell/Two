/** Unité de base stockée : grammes, millilitres ou pièces. */
export type UniteBase = 'g' | 'ml' | 'piece';

export type Ingredient = {
  id: string;
  nom: string;
  /** Synonymes et noms locaux qui désignent le même produit. */
  alias: string[];
  unite: UniteBase;
  rayon: string;
  allergenes: string[];
};

export type IngredientRecette = {
  ingredientId: string;
  /** Quantité pour le rendement de référence, en unité de base. */
  quantite: number;
  /** proportionnel : suit le nombre de portions ; fixe : même quantité par lot. */
  regle: 'proportionnel' | 'fixe';
  indispensable: boolean;
  preparation?: string;
};

export type Etape = {
  ordre: number;
  action: string;
  dose?: string;
  /** Repère de réussite compréhensible par un débutant. */
  repere: string;
  minuteurSec?: number;
};

export type Niveau = 'debutant' | 'intermediaire' | 'avance';

export type Recette = {
  slug: string;
  titre: string;
  alias: string[];
  origine: string;
  familles: string[];
  niveau: Niveau;
  tempsActifMin: number;
  tempsTotalMin: number;
  materiel: string[];
  rendement: { valeur: number; unite: 'personnes' | 'pieces' };
  plageTestee: { min: number; max: number };
  ingredients: IngredientRecette[];
  etapes: Etape[];
  /** Référence documentaire du plat. */
  source?: string;
};

/** Photo sous licence libre, avec les crédits exigés par la licence. */
export type Photo = {
  auteur: string;
  licence: string;
  lienLicence?: string;
  source: string;
};

/** Relevé de prix d'un produit, en FCFA par kg, par litre ou par pièce. */
export type Releve = {
  ingredientId: string;
  ville: string;
  zone: string;
  prixMin?: number;
  prixMoyen: number;
  prixMax?: number;
  /** Unité du prix : 'kg' pour g, 'l' pour ml, 'piece' pour piece. */
  unitePrix: 'kg' | 'l' | 'piece';
  source: string;
  /** Date de fin de période du relevé (AAAA-MM-JJ). */
  dateReleve: string;
};

/** Format vendu en conditionnement fixe (sachet, boîte, bouteille). */
export type FormatVente = {
  ingredientId: string;
  ville: string;
  libelle: string;
  /** Contenu du format, en unité de base. */
  quantite: number;
  prix: number;
};

export type EtatStock =
  | { etat: 'a_verifier' }
  | { etat: 'assez' }
  | { etat: 'partie'; disponible: number }
  | { etat: 'aucun' };
