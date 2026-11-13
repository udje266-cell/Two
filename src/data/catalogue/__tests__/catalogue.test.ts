/// <reference types="jest" />
import { ingredients, recettes } from '..';

describe('catalogue', () => {
  it('contient un large choix de recettes', () => {
    expect(recettes.length).toBeGreaterThanOrEqual(100);
  });

  it('a des identifiants uniques', () => {
    const slugs = recettes.map((r) => r.slug);
    expect(new Set(slugs).size).toBe(slugs.length);
  });

  it.each(recettes.map((r) => [r.slug, r] as const))('%s est cohérente', (_slug, r) => {
    for (const i of r.ingredients) {
      expect(ingredients[i.ingredientId]).toBeDefined();
      expect(i.quantite).toBeGreaterThan(0);
    }
    expect(r.etapes.length).toBeGreaterThan(0);
    expect(r.tempsTotalMin).toBeGreaterThanOrEqual(r.tempsActifMin);
    expect(r.ingredients.some((i) => i.indispensable)).toBe(true);
    for (const e of r.etapes) expect(e.repere.length).toBeGreaterThan(0);
  });
});
