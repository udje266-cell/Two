/** Minuscules, sans accents ni ponctuation : « Attiéké » → « attieke ». */
export function normaliser(texte: string): string {
  return texte
    .normalize('NFD')
    .replace(/[̀-ͯ]/g, '')
    .toLowerCase()
    .replace(/[’'\-]/g, ' ')
    .replace(/\s+/g, ' ')
    .trim();
}

/** Vrai si chaque mot de la requête figure dans l'un des textes. */
export function correspond(requete: string, textes: string[]): boolean {
  const mots = normaliser(requete).split(' ').filter(Boolean);
  if (mots.length === 0) return true;
  const corpus = textes.map(normaliser).join(' ');
  return mots.every((m) => corpus.includes(m));
}
