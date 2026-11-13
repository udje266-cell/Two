import type { FormatVente, Ingredient, Recette, Releve } from '@/domain/types';

/**
 * Données de démarrage, utilisées hors connexion et quand Supabase n'est pas configuré.
 * Les recettes ne sont pas encore testées ni relues : statut brouillon.
 */
const liste: Ingredient[] = [
  { id: 'riz-local', nom: 'Riz local blanchi', alias: ['riz'], unite: 'g', rayon: 'Céréales et épicerie', allergenes: [] },
  { id: 'poulet', nom: 'Poulet en morceaux', alias: ['poulet'], unite: 'g', rayon: 'Viandes et poissons', allergenes: [] },
  { id: 'tomate', nom: 'Tomates fraîches', alias: ['tomate'], unite: 'g', rayon: 'Légumes', allergenes: [] },
  { id: 'oignon', nom: 'Oignons', alias: ['oignon'], unite: 'g', rayon: 'Légumes', allergenes: [] },
  { id: 'concentre-tomate', nom: 'Concentré de tomate', alias: ['tomate concentrée'], unite: 'g', rayon: 'Céréales et épicerie', allergenes: [] },
  { id: 'huile-vegetale', nom: 'Huile végétale', alias: ['huile'], unite: 'ml', rayon: 'Céréales et épicerie', allergenes: [] },
  { id: 'banane-plantain', nom: 'Banane plantain mûre', alias: ['plantain', 'aloco'], unite: 'piece', rayon: 'Fruits et légumes', allergenes: [] },
  { id: 'oeuf', nom: 'Œuf', alias: ['oeuf'], unite: 'piece', rayon: 'Frais', allergenes: ['œufs'] },
  { id: 'attieke', nom: 'Attiéké', alias: ['attieke', 'semoule de manioc'], unite: 'g', rayon: 'Céréales et épicerie', allergenes: [] },
  { id: 'poisson', nom: 'Poisson entier (chinchard ou tilapia)', alias: ['poisson'], unite: 'g', rayon: 'Viandes et poissons', allergenes: ['poisson'] },
  { id: 'piment', nom: 'Piment frais', alias: ['piment'], unite: 'g', rayon: 'Légumes', allergenes: [] },
  { id: 'sel', nom: 'Sel', alias: [], unite: 'g', rayon: 'Céréales et épicerie', allergenes: [] },
];

export const ingredients: Record<string, Ingredient> = Object.fromEntries(liste.map((i) => [i.id, i]));

export const recettes: Recette[] = [
  {
    slug: 'riz-gras-au-poulet',
    titre: 'Riz gras au poulet',
    alias: ['riz au gras'],
    origine: 'Côte d’Ivoire',
    familles: ['Riz et autres céréales', 'Plats au four et mijotés'],
    niveau: 'debutant',
    tempsActifMin: 40,
    tempsTotalMin: 70,
    materiel: ['Marmite avec couvercle', 'Planche et couteau'],
    rendement: { valeur: 4, unite: 'personnes' },
    plageTestee: { min: 2, max: 8 },
    ingredients: [
      { ingredientId: 'riz-local', quantite: 500, regle: 'proportionnel', indispensable: true, preparation: 'lavé' },
      { ingredientId: 'poulet', quantite: 800, regle: 'proportionnel', indispensable: true },
      { ingredientId: 'tomate', quantite: 300, regle: 'proportionnel', indispensable: true },
      { ingredientId: 'oignon', quantite: 200, regle: 'proportionnel', indispensable: true, preparation: 'émincés' },
      { ingredientId: 'concentre-tomate', quantite: 70, regle: 'proportionnel', indispensable: true },
      { ingredientId: 'huile-vegetale', quantite: 100, regle: 'proportionnel', indispensable: true },
      { ingredientId: 'piment', quantite: 10, regle: 'proportionnel', indispensable: false },
    ],
    etapes: [
      { ordre: 1, action: 'Coupe le poulet en morceaux et sale-le.', dose: 'Tout le poulet · 1 c. à café de sel', repere: 'chaque morceau est enrobé de sel.' },
      { ordre: 2, action: 'Fais dorer le poulet dans l’huile chaude.', dose: 'Toute l’huile · feu moyen-vif', repere: 'les morceaux sont dorés sur toutes les faces.', minuteurSec: 480 },
      { ordre: 3, action: 'Ajoute les oignons et remue à feu moyen.', dose: 'Tous les oignons', repere: 'les oignons deviennent translucides : on voit presque à travers, ils ne sont pas encore bruns.', minuteurSec: 300 },
      { ordre: 4, action: 'Ajoute tomates et concentré, laisse réduire.', dose: 'Toutes les tomates et le concentré', repere: 'la sauce épaissit et l’huile remonte sur les bords.', minuteurSec: 600 },
      { ordre: 5, action: 'Verse le riz lavé et l’eau, puis couvre à feu doux.', dose: 'Tout le riz · 1,5 fois son volume d’eau', repere: 'l’eau a disparu et de petits trous se forment à la surface.', minuteurSec: 1200 },
      { ordre: 6, action: 'Laisse reposer, puis égraine à la fourchette.', repere: 'les grains sont tendres et se détachent.', minuteurSec: 300 },
    ],
  },
  {
    slug: 'alloco-oeuf',
    titre: 'Alloco et œuf',
    alias: ['aloco', 'banane plantain frite'],
    origine: 'Côte d’Ivoire',
    familles: ['Tubercules et plantains', 'Cuisine de rue et repas à emporter'],
    niveau: 'debutant',
    tempsActifMin: 25,
    tempsTotalMin: 25,
    materiel: ['Poêle profonde ou marmite', 'Écumoire'],
    rendement: { valeur: 2, unite: 'personnes' },
    plageTestee: { min: 1, max: 6 },
    ingredients: [
      { ingredientId: 'banane-plantain', quantite: 2, regle: 'proportionnel', indispensable: true },
      { ingredientId: 'oeuf', quantite: 2, regle: 'proportionnel', indispensable: false },
      { ingredientId: 'huile-vegetale', quantite: 500, regle: 'fixe', indispensable: true, preparation: 'pour la friture' },
      { ingredientId: 'sel', quantite: 3, regle: 'proportionnel', indispensable: true },
    ],
    etapes: [
      { ordre: 1, action: 'Épluche les bananes et coupe-les en rondelles épaisses.', repere: 'les rondelles font à peu près l’épaisseur d’un doigt.' },
      { ordre: 2, action: 'Fais chauffer l’huile.', repere: 'un petit morceau de banane plongé dedans fait aussitôt de petites bulles.', minuteurSec: 300 },
      { ordre: 3, action: 'Fais frire les rondelles par petites quantités.', repere: 'elles sont dorées et légèrement caramélisées sur les bords.', minuteurSec: 240 },
      { ordre: 4, action: 'Égoutte, sale et sers avec les œufs.', repere: 'l’alloco est croustillant dehors et fondant dedans.' },
    ],
  },
  {
    slug: 'attieke-poisson-braise',
    titre: 'Attiéké poisson braisé',
    alias: ['garba'],
    origine: 'Côte d’Ivoire',
    familles: ['Tubercules et plantains', 'Viandes, poissons et fruits de mer'],
    niveau: 'debutant',
    tempsActifMin: 30,
    tempsTotalMin: 45,
    materiel: ['Grill ou poêle', 'Couscoussier ou passoire'],
    rendement: { valeur: 4, unite: 'personnes' },
    plageTestee: { min: 2, max: 8 },
    ingredients: [
      { ingredientId: 'attieke', quantite: 800, regle: 'proportionnel', indispensable: true },
      { ingredientId: 'poisson', quantite: 1000, regle: 'proportionnel', indispensable: true },
      { ingredientId: 'tomate', quantite: 200, regle: 'proportionnel', indispensable: false },
      { ingredientId: 'oignon', quantite: 100, regle: 'proportionnel', indispensable: false },
      { ingredientId: 'piment', quantite: 10, regle: 'proportionnel', indispensable: false },
    ],
    etapes: [
      { ordre: 1, action: 'Vide et nettoie le poisson, fais 3 entailles de chaque côté.', repere: 'les entailles vont jusqu’à l’arête.' },
      { ordre: 2, action: 'Fais griller le poisson.', repere: 'la peau est dorée et la chair se détache de l’arête.', minuteurSec: 1200 },
      { ordre: 3, action: 'Réchauffe l’attiéké à la vapeur.', repere: 'les grains sont chauds et souples.', minuteurSec: 600 },
      { ordre: 4, action: 'Prépare la garniture de tomate, oignon et piment.', repere: 'tout est coupé en petits dés réguliers.' },
    ],
  },
];

/** Seul relevé réel : bulletin OCPV du 2 au 8 novembre 2026. Les autres prix sont à relever. */
export const releves: Releve[] = [
  {
    ingredientId: 'riz-local', ville: 'Abidjan', zone: 'District d’Abidjan', prixMoyen: 720,
    unitePrix: 'kg', source: 'OCPV, bulletin du 2 au 8 novembre 2026', dateReleve: '2026-11-08',
  },
];

export const formats: FormatVente[] = [];
