/// <reference types="jest" />
import { coutAchat, choisirReleve, formaterFcfa, releveAncien, valeurQuantite } from '../budget';
import { calculerPlat } from '../plat';
import { formaterQuantite, horsPlage, quantiteManquante, quantiteRequise } from '../quantites';
import { correspond, normaliser } from '../recherche';
import type { FormatVente, IngredientRecette, Releve } from '../types';
import { ingredients, recettes } from '../../data/seed';

const riz: IngredientRecette = { ingredientId: 'riz-local', quantite: 500, regle: 'proportionnel', indispensable: true };
const releveRiz: Releve = {
  ingredientId: 'riz-local', ville: 'Abidjan', zone: 'District d’Abidjan', prixMoyen: 720,
  unitePrix: 'kg', source: 'OCPV', dateReleve: '2026-11-08',
};
const sachet: FormatVente = { ingredientId: 'riz-local', ville: 'Abidjan', libelle: 'sachet 1 kg', quantite: 1000, prix: 800 };

describe('quantités', () => {
  it('500 g pour 4 donnent 750 g pour 6', () => {
    expect(quantiteRequise(riz, 4, 6)).toBe(750);
  });
  it('une quantité fixe ne suit pas les portions', () => {
    expect(quantiteRequise({ ...riz, regle: 'fixe' }, 4, 8)).toBe(500);
  });
  it('conserve les décimales jusqu’à l’affichage', () => {
    expect(quantiteRequise({ ...riz, quantite: 2 }, 4, 3)).toBe(1.5);
  });
  it('signale une demande hors plage testée', () => {
    expect(horsPlage(recettes[0], 40)).toBe(true);
    expect(horsPlage(recettes[0], 4)).toBe(false);
  });
  it('formate les grammes et kilos', () => {
    expect(formaterQuantite(750, 'g')).toBe('750 g');
    expect(formaterQuantite(1250, 'g')).toBe('1,25 kg');
  });
});

describe('stock', () => {
  it.each([
    [{ etat: 'assez' } as const, 0],
    [{ etat: 'partie', disponible: 250 } as const, 500],
    [{ etat: 'partie', disponible: 900 } as const, 0],
    [{ etat: 'aucun' } as const, 750],
    [{ etat: 'a_verifier' } as const, 750],
  ])('%j → manque %d', (stock, attendu) => {
    expect(quantiteManquante(750, stock)).toBe(attendu);
  });
});

describe('budget (exemple du cahier des charges)', () => {
  it('750 g à 720 FCFA/kg valent 540 FCFA', () => {
    expect(valeurQuantite(750, releveRiz)).toBe(540);
  });
  it('500 g à acheter en vrac coûtent 360 FCFA', () => {
    expect(coutAchat(500, releveRiz)?.cout).toBe(360);
  });
  it('avec un sachet de 1 kg à 800 FCFA, le budget passe à 800 FCFA', () => {
    const achat = coutAchat(500, releveRiz, sachet);
    expect(achat).toMatchObject({ mode: 'format', nombre: 1, cout: 800, surplus: 500 });
  });
  it('sans prix ni format, l’achat est à chiffrer', () => {
    expect(coutAchat(500, undefined)).toBeNull();
  });
  it('marque les relevés de plus de 28 jours', () => {
    expect(releveAncien(releveRiz, new Date('2026-11-13'))).toBe(false);
    expect(releveAncien(releveRiz, new Date('2026-12-20'))).toBe(true);
  });
  it('prend le relevé le plus récent de la ville', () => {
    const ancien = { ...releveRiz, prixMoyen: 600, dateReleve: '2026-10-01' };
    expect(choisirReleve([ancien, releveRiz], 'riz-local', 'Abidjan')?.prixMoyen).toBe(720);
  });
  it('arrondit en francs à l’affichage', () => {
    expect(formaterFcfa(1234.6)).toBe('1 235 FCFA');
  });
});

describe('calcul complet du plat', () => {
  it('calcule coût du plat et budget courses', () => {
    const r = calculerPlat(recettes[0], 6, { 'riz-local': { etat: 'partie', disponible: 250 } }, {
      ingredients, releves: [releveRiz], formats: [], ville: 'Abidjan', aujourdhui: new Date('2026-11-13'),
    });
    const ligneRiz = r.lignes.find((l) => l.ingredient.id === 'riz-local')!;
    expect(ligneRiz.requis).toBe(750);
    expect(ligneRiz.valeur).toBe(540);
    expect(ligneRiz.achat?.cout).toBe(360);
    expect(r.aChiffrer.length).toBe(recettes[0].ingredients.length - 1);
  });
});

describe('recherche tolérante', () => {
  it('« attieke » retrouve attiéké', () => {
    expect(normaliser('Attiéké')).toBe('attieke');
    expect(correspond('attieke', ['Attiéké poisson braisé'])).toBe(true);
  });
  it('n’égare pas une requête sans rapport', () => {
    expect(correspond('couscous', ['Riz gras au poulet'])).toBe(false);
  });
});
