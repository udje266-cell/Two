/** Couleurs reprises du logo Mijote. L'orange n'est jamais une couleur de texte sur fond crème. */
export const Couleurs = {
  aubergine: '#3A1C2E',
  vapeur: '#F59E42',
  creme: '#FDF3E3',
  sable: '#F3E4CC',
  bordure: '#E3CFB0',
  caramel: '#8A4B12',
  blanc: '#FFFFFF',
  texte: '#2B1422',
  texteSecondaire: '#6B5562',
  succesFond: '#DCEFD9',
  succesTexte: '#1F4D22',
} as const;

export const Espace = { xs: 4, s: 8, m: 12, l: 16, xl: 20, xxl: 32 } as const;
export const Rayon = { s: 10, m: 14, l: 18, rond: 999 } as const;
/** Taille minimale d'une zone tactile (accessibilité). */
export const CIBLE_MIN = 48;
