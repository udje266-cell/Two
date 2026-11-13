import type { FormatVente, Releve } from '@/domain/types';

export { ingredients, recettes } from './catalogue';

/** Seul relevé réel : bulletin OCPV du 2 au 8 novembre 2026. Les autres prix sont à relever. */
export const releves: Releve[] = [
  {
    ingredientId: 'riz-local', ville: 'Abidjan', zone: 'District d’Abidjan', prixMoyen: 720,
    unitePrix: 'kg', source: 'OCPV, bulletin du 2 au 8 novembre 2026', dateReleve: '2026-11-08',
  },
];

export const formats: FormatVente[] = [];
