import type { Recette } from '@/domain/types';

import { afrique } from './afrique';
import { asieAmeriques } from './asie-ameriques';
import { deplier } from './compact';
import { coteIvoire } from './cote-ivoire';
import { europe } from './europe';
import { maghrebOrient } from './maghreb-orient';
import { sucre } from './sucre';

export { ingredients } from './ingredients';

/** Catalogue de départ : brouillons non testés, à faire valider avant publication. */
export const recettes: Recette[] = [...coteIvoire, ...afrique, ...maghrebOrient, ...europe, ...asieAmeriques, ...sucre].map(deplier);
