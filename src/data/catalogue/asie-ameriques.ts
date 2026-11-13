import type { RecetteCompacte } from './compact';

export const asieAmeriques: RecetteCompacte[] = [
  {
    s: 'riz-cantonais', t: 'Riz sauté cantonais', o: 'Chine', f: ['Riz et autres céréales'], n: 'd', a: 15, tt: 20, p: 4,
    m: ['Wok ou grande poêle'], w: 'Riz cantonais',
    i: [['riz-local', 600, 'cuit la veille'], ['oeuf', 3], ['jambon', 120], ['petits-pois', 120], ['oignon-vert', 30], ['sauce-soja', 30], ['huile-vegetale', 40], ['sel', 3]],
    e: [
      ['Brouille les œufs dans un peu d’huile et réserve.', 'ils sont juste pris.', 1],
      ['Fais sauter le riz froid à feu vif.', 'les grains sont séparés et chauds.', 4],
      ['Ajoute jambon, petits pois, œufs, soja et cive.', 'tout est chaud et bien mélangé.', 3],
    ],
  },
  {
    s: 'poulet-curry-coco', t: 'Curry de poulet au lait de coco', o: 'Inde', f: ['Plats au four et mijotés'], n: 'd', a: 20, tt: 50, p: 4,
    m: ['Sauteuse'], w: 'Curry',
    i: [['blanc-poulet', 700], ['lait-coco', 400], ['oignon', 150], ['ail', 10], ['gingembre', 15], ['tomate', 200], ['garam-masala', 8], ['curcuma', 3], ['huile-vegetale', 30], ['coriandre', 10], ['sel', 6]],
    e: [
      ['Fais fondre oignon, ail et gingembre.', 'l’oignon est doré.', 8],
      ['Ajoute épices et tomates.', 'l’huile se sépare de la sauce.', 5],
      ['Ajoute le poulet en morceaux et le lait de coco, mijote.', 'le poulet est cuit et la sauce nappe.', 20],
    ],
  },
  {
    s: 'dal', t: 'Dal de lentilles corail', o: 'Inde', f: ['Légumes et légumineuses', 'Soupes et bouillons'], n: 'd', a: 15, tt: 40, p: 4,
    m: ['Casserole'], w: 'Dal (plat)',
    i: [['lentilles', 250, 'corail'], ['oignon', 100], ['ail', 10], ['gingembre', 10], ['tomate', 200], ['curcuma', 3], ['cumin', 3], ['?lait-coco', 200], ['huile-vegetale', 30], ['sel', 6]],
    e: [
      ['Cuis les lentilles rincées avec le curcuma dans 80 cl d’eau.', 'elles se défont.', 20],
      ['Fais revenir cumin, oignon, ail, gingembre et tomate dans l’huile.', 'les tomates sont fondues.', 8],
      ['Verse sur les lentilles, ajoute le lait de coco et sale.', 'le dal est onctueux.'],
    ],
  },
  {
    s: 'biryani-poulet', t: 'Biryani de poulet', o: 'Inde, Pakistan', f: ['Riz et autres céréales'], n: 'a', a: 50, tt: 150, p: 6,
    m: ['Cocotte à couvercle lourd'], w: 'Biryani',
    i: [['riz-local', 500, 'basmati'], ['poulet', 1000], ['yaourt', 200], ['oignon', 400], ['ail', 15], ['gingembre', 15], ['garam-masala', 10], ['curcuma', 3], ['safran', 0.1], ['menthe', 10], ['coriandre', 10], ['huile-vegetale', 100], ['sel', 12]],
    e: [
      ['Fais mariner le poulet dans yaourt, ail, gingembre et épices.', 'il est bien enrobé.', 60],
      ['Fais frire les oignons émincés.', 'ils sont bruns et croustillants.', 15],
      ['Précuis le riz à l’eau salée.', 'il est cuit aux deux tiers.', 6],
      ['Alterne poulet, oignons, herbes et riz, arrose de safran infusé, couvre hermétiquement.', 'le couvercle ferme bien.'],
      ['Cuis à feu très doux.', 'le riz est tendre et le poulet cuit.', 40],
    ],
  },
  {
    s: 'pad-thai', t: 'Pad thaï', o: 'Thaïlande', f: ['Pâtes et nouilles'], n: 'i', a: 25, tt: 50, p: 2,
    m: ['Wok'], w: 'Pad thaï',
    i: [['nouilles-riz', 200], ['crevette', 200], ['oeuf', 2], ['tofu', 100], ['arachide', 40], ['nuoc-mam', 30], ['sucre', 20], ['citron-vert', 1], ['oignon-vert', 20], ['ail', 5], ['huile-vegetale', 30]],
    e: [
      ['Fais tremper les nouilles dans l’eau tiède.', 'elles sont souples mais fermes.', 25],
      ['Saisis ail, tofu et crevettes au wok.', 'les crevettes sont roses.', 3],
      ['Pousse sur le côté, brouille les œufs.', 'ils sont juste pris.', 1],
      ['Ajoute nouilles, sauce de poisson, sucre, citron ; sers avec cacahuètes et cive.', 'les nouilles sont enrobées et brillantes.', 3],
    ],
  },
  {
    s: 'nems', t: 'Rouleaux de printemps', o: 'Viêt Nam', f: ['Apéritifs et entrées'], n: 'i', a: 35, tt: 35, p: 12, pc: true,
    m: ['Bol d’eau tiède'], al: ['gỏi cuốn'], w: 'Rouleau de printemps',
    i: [['crevette', 250, 'cuites'], ['nouilles-riz', 100], ['laitue', 100], ['menthe', 15], ['coriandre', 15], ['carotte', 100], ['tortilla', 12, 'galettes de riz'], ['nuoc-mam', 30], ['citron-vert', 1]],
    e: [
      ['Cuis les vermicelles et égoutte-les.', 'ils sont tendres.', 4],
      ['Trempe une galette quelques secondes dans l’eau tiède.', 'elle est souple sans se déchirer.'],
      ['Garnis de salade, herbes, carotte, vermicelles et crevettes, roule serré.', 'le rouleau est bien fermé.'],
    ],
  },
  {
    s: 'pho', t: 'Phở au bœuf', o: 'Viêt Nam', f: ['Soupes et bouillons', 'Pâtes et nouilles'], n: 'a', a: 40, tt: 210, p: 4,
    m: ['Grande marmite'], w: 'Phở',
    i: [['boeuf', 800, 'os et jarret'], ['nouilles-riz', 300], ['oignon', 200], ['gingembre', 40], ['cannelle', 3], ['clou-girofle', 1], ['nuoc-mam', 40], ['coriandre', 15], ['basilic', 10], ['citron-vert', 2], ['sel', 8]],
    e: [
      ['Fais griller oignon et gingembre à sec.', 'ils sont noircis par endroits.', 8],
      ['Fais mijoter la viande avec oignon, gingembre et épices dans 3 l d’eau, écume.', 'le bouillon est clair et parfumé.', 180],
      ['Assaisonne avec la sauce de poisson, verse sur les nouilles et la viande tranchée.', 'la viande est couverte de bouillon.'],
    ],
  },
  {
    s: 'ramen', t: 'Ramen au poulet', o: 'Japon', f: ['Soupes et bouillons', 'Pâtes et nouilles'], n: 'i', a: 30, tt: 120, p: 4,
    m: ['Marmite'], w: 'Ramen',
    i: [['poulet', 1000, 'carcasse et ailes'], ['nouilles-ble', 400], ['oeuf', 4], ['sauce-soja', 60], ['gingembre', 20], ['ail', 15], ['oignon-vert', 30], ['champignon', 100], ['sel', 5]],
    e: [
      ['Fais mijoter le poulet avec gingembre et ail dans 2,5 l d’eau.', 'le bouillon est doré.', 90],
      ['Cuis les œufs, refroidis-les.', 'le jaune est encore mou.', 7],
      ['Assaisonne le bouillon de soja, cuis les nouilles à part.', 'les nouilles sont souples.', 4],
      ['Dresse nouilles, bouillon, poulet effiloché, œuf, champignons et cive.', 'le bol est bien garni.'],
    ],
  },
  {
    s: 'teriyaki-poulet', t: 'Poulet teriyaki', o: 'Japon', f: ['Viandes, poissons et fruits de mer'], n: 'd', a: 20, tt: 25, p: 4,
    m: ['Poêle'], w: 'Teriyaki',
    i: [['blanc-poulet', 600], ['sauce-soja', 60], ['miel', 40], ['gingembre', 10], ['ail', 5], ['sesame', 10], ['huile-vegetale', 15]],
    e: [
      ['Fais dorer le poulet en morceaux.', 'il est doré et cuit à cœur.', 8],
      ['Ajoute soja, miel, gingembre et ail, laisse réduire.', 'la sauce est sirupeuse et brillante.', 4],
      ['Parsème de sésame.', 'chaque morceau est laqué.'],
    ],
  },
  {
    s: 'bibimbap', t: 'Bibimbap', o: 'Corée du Sud', f: ['Riz et autres céréales'], n: 'i', a: 40, tt: 50, p: 4,
    m: ['Poêle', 'Bols'], w: 'Bibimbap',
    i: [['riz-local', 400], ['boeuf', 300], ['epinards', 200], ['carotte', 150], ['champignon', 150], ['oeuf', 4], ['sauce-soja', 40], ['sesame', 10], ['ail', 10], ['piment-poudre', 3], ['huile-vegetale', 30]],
    e: [
      ['Cuis le riz.', 'il est tendre.', 15],
      ['Fais sauter séparément viande au soja, épinards, carottes et champignons.', 'chaque légume est juste cuit.', 15],
      ['Fais cuire les œufs au plat.', 'le jaune est coulant.', 3],
      ['Dispose le tout sur le riz, ajoute sésame et piment.', 'chaque garniture a sa place.'],
    ],
  },
  {
    s: 'tacos-poulet', t: 'Tacos au poulet', o: 'Mexique', f: ['Cuisine de rue et repas à emporter'], n: 'd', a: 20, tt: 30, p: 4,
    m: ['Poêle'], w: 'Taco',
    i: [['blanc-poulet', 500], ['tortilla', 8], ['cumin', 3], ['paprika', 4], ['oignon', 80], ['tomate', 200], ['coriandre', 15], ['citron-vert', 2], ['avocat', 1], ['sel', 5]],
    e: [
      ['Fais dorer le poulet émincé avec cumin, paprika et sel.', 'il est cuit et doré.', 10],
      ['Prépare une salsa tomate, oignon, coriandre, citron.', 'la salsa est juteuse.'],
      ['Réchauffe les galettes et garnis.', 'les galettes sont souples.'],
    ],
  },
  {
    s: 'guacamole', t: 'Guacamole', o: 'Mexique', f: ['Apéritifs et entrées', 'Sauces et assaisonnements'], n: 'd', a: 10, tt: 10, p: 4,
    m: ['Bol', 'Fourchette'], w: 'Guacamole',
    i: [['avocat', 3], ['citron-vert', 1], ['oignon', 30], ['tomate', 100], ['coriandre', 10], ['?piment', 5], ['sel', 3]],
    e: [
      ['Écrase les avocats avec le jus de citron.', 'il reste quelques morceaux.'],
      ['Ajoute oignon, tomate, coriandre, piment et sel.', 'tout est bien réparti.'],
    ],
  },
  {
    s: 'chili-con-carne', t: 'Chili con carne', o: 'États-Unis (Texas)', f: ['Plats au four et mijotés'], n: 'd', a: 20, tt: 80, p: 6,
    m: ['Cocotte'], w: 'Chili con carne',
    i: [['viande-hachee', 600], ['haricots-rouges', 500, 'cuits'], ['tomate-pelee', 800], ['oignon', 150], ['poivron', 150], ['ail', 10], ['cumin', 5], ['piment-poudre', 4], ['huile-vegetale', 20], ['sel', 8]],
    e: [
      ['Fais revenir oignon, poivron et ail.', 'ils sont tendres.', 8],
      ['Ajoute la viande et les épices.', 'la viande est dorée.', 8],
      ['Ajoute tomates et haricots, mijote.', 'le chili est épais.', 45],
    ],
  },
  {
    s: 'pancakes', t: 'Pancakes', o: 'États-Unis', f: ['Petits-déjeuners et brunchs'], n: 'd', a: 20, tt: 25, p: 12, pc: true,
    m: ['Poêle', 'Fouet'], w: 'Pancake',
    i: [['farine', 250], ['lait', 300], ['oeuf', 2], ['sucre', 30], ['levure-chimique', 10], ['beurre', 40, 'fondu'], ['sel', 2]],
    e: [
      ['Mélange les ingrédients secs, puis lait, œufs et beurre.', 'la pâte est épaisse avec quelques grumeaux.'],
      ['Verse des petites louches dans la poêle chaude.', 'des bulles éclatent en surface.', 2],
      ['Retourne et termine la cuisson.', 'les deux faces sont dorées.', 1],
    ],
  },
  {
    s: 'burger-maison', t: 'Burger maison', o: 'États-Unis', f: ['Cuisine de rue et repas à emporter'], n: 'd', a: 20, tt: 25, p: 4,
    m: ['Poêle ou grill'], w: 'Hamburger',
    i: [['viande-hachee', 600], ['pain', 320, '4 pains à burger'], ['fromage', 80, 'en tranches'], ['tomate', 150], ['laitue', 60], ['oignon', 80], ['moutarde', 20], ['sel', 5]],
    e: [
      ['Forme 4 steaks un peu plus larges que les pains.', 'ils font environ 1,5 cm d’épaisseur.'],
      ['Saisis-les et sale.', 'une croûte brune s’est formée sur chaque face.', 6],
      ['Pose le fromage, puis monte les burgers.', 'le fromage a fondu.'],
    ],
  },
  {
    s: 'feijoada', t: 'Feijoada', o: 'Brésil', f: ['Plats au four et mijotés', 'Légumes et légumineuses'], n: 'i', a: 30, tt: 180, p: 6,
    m: ['Grande marmite'], w: 'Feijoada',
    i: [['haricots-rouges', 500, 'noirs de préférence, secs'], ['porc', 600], ['lardons', 150], ['oignon', 150], ['ail', 15], ['laurier', 2], ['orange', 1], ['riz-local', 400], ['sel', 10]],
    e: [
      ['Fais cuire les haricots trempés avec la viande et le laurier.', 'les haricots sont fondants.', 150],
      ['Fais revenir lardons, oignon et ail, ajoute-les aux haricots.', 'le bouillon a épaissi.', 20],
      ['Sers avec du riz et des quartiers d’orange.', 'chaque assiette a son orange.'],
    ],
  },
  {
    s: 'ceviche', t: 'Ceviche', o: 'Pérou', f: ['Apéritifs et entrées'], n: 'i', a: 20, tt: 35, p: 4,
    m: ['Saladier en verre'], w: 'Ceviche',
    i: [['filet-poisson', 500, 'très frais'], ['citron-vert', 8], ['oignon', 100, 'rouge'], ['piment', 10], ['coriandre', 15], ['patate-douce', 300, 'cuite'], ['sel', 5]],
    e: [
      ['Coupe le poisson en dés et sale-le.', 'les dés font 2 cm.'],
      ['Couvre de jus de citron vert avec oignon et piment, au frais.', 'la chair est devenue blanche et opaque.', 15],
      ['Ajoute la coriandre et sers avec la patate douce.', 'le ceviche est bien froid.'],
    ],
  },
  {
    s: 'poulet-colombo', t: 'Colombo de poulet', o: 'Antilles (Guadeloupe, Martinique)', f: ['Plats au four et mijotés'], n: 'd', a: 20, tt: 70, p: 4,
    m: ['Cocotte'], w: 'Colombo',
    i: [['poulet', 1200], ['curry', 15, 'poudre à colombo'], ['oignon', 150], ['ail', 10], ['pomme-de-terre', 400], ['courgette', 200], ['citron-vert', 1], ['piment', 5], ['huile-vegetale', 30], ['sel', 8]],
    e: [
      ['Fais mariner le poulet avec citron, ail et poudre à colombo.', 'il est bien jaune.', 30],
      ['Fais-le dorer avec l’oignon.', 'il a pris couleur.', 10],
      ['Ajoute légumes et 40 cl d’eau, mijote.', 'les pommes de terre sont tendres.', 30],
    ],
  },
  {
    s: 'accras-morue', t: 'Accras', o: 'Antilles', f: ['Apéritifs et entrées'], n: 'i', a: 30, tt: 90, p: 25, pc: true,
    m: ['Marmite pour friture'], w: 'Accra',
    i: [['filet-poisson', 250, 'morue dessalée ou poisson blanc'], ['farine', 200], ['levure-chimique', 5], ['oignon-vert', 30], ['persil', 15], ['ail', 5], ['piment', 5], ['huile-vegetale!', 600], ['sel', 3]],
    e: [
      ['Émiette le poisson cuit.', 'il n’y a plus d’arêtes.'],
      ['Mélange farine, levure, 20 cl d’eau, herbes, ail, piment et poisson.', 'la pâte est épaisse.'],
      ['Laisse reposer puis fais frire des cuillerées.', 'les accras sont dorés et gonflés.', 4],
    ],
  },
];
