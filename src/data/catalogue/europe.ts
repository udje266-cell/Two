import type { RecetteCompacte } from './compact';

const FR = 'France';

export const europe: RecetteCompacte[] = [
  {
    s: 'omelette', t: 'Omelette baveuse', o: FR, f: ['Petits-déjeuners et brunchs'], n: 'd', a: 10, tt: 10, p: 1,
    m: ['Poêle antiadhésive'], w: 'Omelette',
    i: [['oeuf', 3], ['beurre', 10], ['?fromage', 20], ['sel', 1], ['poivre', 0.5]],
    e: [
      ['Bats les œufs avec sel et poivre.', 'blancs et jaunes sont bien mélangés.'],
      ['Fais fondre le beurre à feu moyen, verse les œufs et ramène les bords vers le centre.', 'le dessous est pris, le dessus encore crémeux.', 2],
      ['Plie en deux et fais glisser dans l’assiette.', 'l’omelette est dorée sans être brune.'],
    ],
  },
  {
    s: 'crepes', t: 'Crêpes', o: 'France (Bretagne)', f: ['Petits-déjeuners et brunchs', 'Desserts'], n: 'd', a: 30, tt: 90, p: 15, pc: true,
    m: ['Poêle à crêpes', 'Fouet'], w: 'Crêpe',
    i: [['farine', 250], ['oeuf', 4], ['lait', 500], ['sucre', 30], ['beurre', 50, 'fondu'], ['sel', 2]],
    e: [
      ['Mélange farine, sucre, sel puis les œufs.', 'la pâte est épaisse et lisse.'],
      ['Ajoute le lait petit à petit, puis le beurre fondu.', 'la pâte est fluide, sans grumeaux.'],
      ['Laisse reposer.', 'la mousse a disparu.', 60],
      ['Verse une petite louche dans la poêle chaude, retourne.', 'les bords se décollent et dorent.', 1],
    ],
  },
  {
    s: 'quiche-lorraine', t: 'Quiche lorraine', o: 'France (Lorraine)', f: ['Plats au four et mijotés'], n: 'd', a: 20, tt: 60, p: 6,
    m: ['Moule à tarte', 'Four'], w: 'Quiche lorraine',
    i: [['pate-feuilletee!', 230, 'ou brisée'], ['lardons', 200], ['oeuf', 3], ['creme', 200], ['lait', 200], ['muscade', 0.5], ['sel', 2], ['poivre', 1]],
    e: [
      ['Fonce le moule avec la pâte et pique le fond.', 'la pâte couvre bien les bords.'],
      ['Fais dorer les lardons à la poêle.', 'ils ont rendu leur graisse.', 5],
      ['Bats œufs, crème, lait, muscade, sel et poivre.', 'le mélange est homogène.'],
      ['Répartis les lardons, verse l’appareil et cuis à 180 °C.', 'le centre est pris et doré.', 35],
    ],
  },
  {
    s: 'ratatouille', t: 'Ratatouille', o: 'France (Provence)', f: ['Légumes et légumineuses', 'Accompagnements'], n: 'd', a: 30, tt: 90, p: 6,
    m: ['Cocotte'], w: 'Ratatouille',
    i: [['aubergine', 400], ['courgette', 400], ['poivron', 300], ['tomate', 600], ['oignon', 200], ['ail', 15], ['thym', 2], ['huile-olive', 80], ['sel', 8]],
    e: [
      ['Coupe tous les légumes en dés.', 'les dés font environ 2 cm.'],
      ['Fais revenir séparément aubergines, courgettes puis poivrons dans l’huile.', 'chaque légume est légèrement doré.', 20],
      ['Réunis tout avec oignon, ail, tomates et thym, mijote à couvert.', 'les légumes sont fondants mais gardent leur forme.', 45],
    ],
  },
  {
    s: 'boeuf-bourguignon', t: 'Bœuf bourguignon', o: 'France (Bourgogne)', f: ['Plats au four et mijotés'], n: 'i', a: 40, tt: 210, p: 6,
    m: ['Cocotte en fonte'], w: 'Bœuf bourguignon',
    i: [['boeuf', 1200, 'à braiser'], ['lardons', 150], ['carotte', 300], ['oignon', 200], ['champignon', 250], ['ail', 10], ['farine', 30], ['bouillon', 1], ['concentre-tomate', 30], ['thym', 2], ['laurier', 1], ['beurre', 30], ['sel', 10]],
    e: [
      ['Fais dorer la viande en plusieurs fois dans le beurre.', 'chaque morceau a une croûte brune.', 15],
      ['Fais revenir lardons, oignons, carottes, puis saupoudre de farine.', 'la farine a légèrement roussi.', 5],
      ['Remets la viande, couvre de bouillon (ou vin rouge, facultatif), ajoute concentré et herbes.', 'la viande est juste couverte.'],
      ['Mijote à couvert à feu très doux, ajoute les champignons à la fin.', 'la viande se coupe à la cuillère.', 180],
    ],
  },
  {
    s: 'poulet-roti', t: 'Poulet rôti et pommes de terre', o: FR, f: ['Viandes, poissons et fruits de mer'], n: 'd', a: 15, tt: 90, p: 4,
    m: ['Four', 'Plat à rôtir'], w: 'Poulet rôti',
    i: [['poulet', 1500, 'entier'], ['pomme-de-terre', 800], ['beurre', 40], ['ail', 15], ['thym', 2], ['sel', 10], ['poivre', 1]],
    e: [
      ['Frotte le poulet de beurre, sel et poivre, entoure-le de pommes de terre en morceaux et d’ail.', 'le poulet est bien enduit.'],
      ['Rôtis à 200 °C en arrosant toutes les 20 minutes.', 'le jus qui sort de la cuisse est clair, sans rose.', 75],
    ],
  },
  {
    s: 'gratin-dauphinois', t: 'Gratin dauphinois', o: 'France (Dauphiné)', f: ['Accompagnements', 'Plats au four et mijotés'], n: 'd', a: 20, tt: 90, p: 6,
    m: ['Plat à gratin', 'Four'], w: 'Gratin dauphinois',
    i: [['pomme-de-terre', 1200], ['lait', 500], ['creme', 250], ['ail', 5], ['muscade', 0.5], ['beurre', 15], ['sel', 8]],
    e: [
      ['Coupe les pommes de terre en fines rondelles, sans les rincer.', 'les tranches font 3 mm.'],
      ['Fais frémir avec lait, ail, muscade et sel en remuant.', 'le lait a épaissi.', 10],
      ['Verse dans le plat beurré, ajoute la crème et enfourne à 160 °C.', 'le dessus est doré et un couteau entre sans résistance.', 60],
    ],
  },
  {
    s: 'soupe-oignon', t: 'Soupe à l’oignon', o: FR, f: ['Soupes et bouillons'], n: 'd', a: 20, tt: 70, p: 4,
    m: ['Cocotte', 'Bols allant au four'], w: 'Soupe à l’oignon',
    i: [['oignon', 800], ['beurre', 50], ['farine', 20], ['bouillon', 2], ['pain', 150], ['fromage', 120], ['sel', 5]],
    e: [
      ['Fais fondre les oignons émincés dans le beurre à feu doux.', 'ils sont bruns et caramélisés.', 35],
      ['Saupoudre de farine, ajoute 1,2 l de bouillon.', 'la soupe frémit.', 20],
      ['Verse en bols, couvre de pain et de fromage, gratine.', 'le fromage fait des bulles dorées.', 5],
    ],
  },
  {
    s: 'croque-monsieur', t: 'Croque-monsieur', o: FR, f: ['Cuisine de rue et repas à emporter'], n: 'd', a: 10, tt: 20, p: 2,
    m: ['Four ou poêle'], w: 'Croque-monsieur',
    i: [['pain-mie', 160], ['jambon', 80], ['fromage', 80], ['beurre', 20]],
    e: [
      ['Beurre le pain, garnis de jambon et de fromage, referme.', 'le fromage ne dépasse pas trop.'],
      ['Couvre d’un peu de fromage et cuis au four à 200 °C.', 'le dessus est doré et le fromage a fondu.', 10],
    ],
  },
  {
    s: 'salade-nicoise', t: 'Salade niçoise', o: 'France (Nice)', f: ['Apéritifs et entrées'], n: 'd', a: 20, tt: 30, p: 4,
    m: ['Saladier'], w: 'Salade niçoise',
    i: [['tomate', 400], ['oeuf', 4], ['thon-boite', 200], ['laitue', 150], ['poivron', 100], ['oignon-vert', 30], ['huile-olive', 50], ['vinaigre', 15], ['sel', 3]],
    e: [
      ['Fais cuire les œufs.', 'le jaune est juste pris.', 9],
      ['Coupe tomates et poivron, effeuille la salade.', 'les légumes sont en morceaux d’une bouchée.'],
      ['Dispose tout avec le thon et les œufs en quartiers, assaisonne.', 'chaque ingrédient est visible.'],
    ],
  },
  {
    s: 'spaghetti-bolognaise', t: 'Spaghetti à la sauce bolognaise', o: 'Italie', f: ['Pâtes et nouilles'], n: 'd', a: 20, tt: 80, p: 4,
    m: ['Grande casserole', 'Sauteuse'], w: 'Sauce bolognaise',
    i: [['pates', 400, 'spaghetti'], ['viande-hachee', 400], ['oignon', 100], ['carotte', 100], ['celeri', 50], ['tomate-pelee', 800], ['huile-olive', 30], ['?parmesan', 40], ['sel', 10]],
    e: [
      ['Fais revenir oignon, carotte et céleri hachés finement.', 'ils sont tendres.', 8],
      ['Ajoute la viande et fais-la dorer.', 'elle n’est plus rose.', 8],
      ['Ajoute les tomates et mijote à couvert.', 'la sauce est épaisse.', 45],
      ['Cuis les pâtes dans beaucoup d’eau salée.', 'elles sont tendres mais encore un peu fermes (al dente).', 10],
    ],
  },
  {
    s: 'pizza-margherita', t: 'Pizza margherita', o: 'Italie (Naples)', f: ['Cuisine de rue et repas à emporter', 'Boulangerie'], n: 'i', a: 30, tt: 150, p: 2, pc: true,
    m: ['Four très chaud', 'Plaque'], w: 'Pizza Margherita',
    i: [['farine', 400], ['levure-boulangere', 5], ['sel', 8], ['huile-olive', 20], ['tomate-pelee', 250], ['mozzarella', 250], ['basilic', 5]],
    e: [
      ['Pétris farine, levure, sel et 25 cl d’eau tiède.', 'la pâte est lisse et élastique.', 10],
      ['Laisse lever couvert.', 'la pâte a doublé de volume.', 90],
      ['Étale, garnis de tomate écrasée salée et de mozzarella.', 'le bord est laissé libre.'],
      ['Cuis au four à la température maximale.', 'les bords sont gonflés et tachetés de brun.', 10],
    ],
  },
  {
    s: 'risotto-champignons', t: 'Risotto aux champignons', o: 'Italie', f: ['Riz et autres céréales'], n: 'i', a: 35, tt: 35, p: 4,
    m: ['Sauteuse', 'Louche'], w: 'Risotto',
    i: [['riz-arborio', 320], ['champignon', 300], ['oignon', 80], ['bouillon', 2], ['beurre', 40], ['parmesan', 60], ['huile-olive', 20], ['sel', 4]],
    e: [
      ['Fais revenir l’oignon puis le riz dans l’huile.', 'les grains deviennent nacrés.', 3],
      ['Ajoute le bouillon chaud louche par louche en remuant.', 'le riz est crémeux et tendre avec un petit cœur ferme.', 18],
      ['Ajoute champignons sautés, beurre et parmesan hors du feu.', 'le risotto ondule quand on secoue la casserole.'],
    ],
  },
  {
    s: 'lasagnes', t: 'Lasagnes', o: 'Italie', f: ['Pâtes et nouilles', 'Plats au four et mijotés'], n: 'i', a: 40, tt: 120, p: 6,
    m: ['Plat à four'], w: 'Lasagne',
    i: [['pates', 300, 'plaques de lasagnes'], ['viande-hachee', 500], ['tomate-pelee', 800], ['oignon', 100], ['beurre', 50], ['farine', 50], ['lait', 600], ['fromage', 150], ['muscade', 0.5], ['sel', 10]],
    e: [
      ['Prépare une sauce viande-tomate.', 'elle a réduit et épaissi.', 30],
      ['Fais une béchamel : beurre, farine puis lait en fouettant.', 'elle nappe la cuillère.', 10],
      ['Alterne plaques, sauce viande, béchamel ; finis par béchamel et fromage.', 'il y a au moins 3 couches.'],
      ['Cuis à 180 °C.', 'le dessus est doré et ça bouillonne sur les bords.', 40],
    ],
  },
  {
    s: 'paella', t: 'Paella aux fruits de mer et poulet', o: 'Espagne', f: ['Riz et autres céréales'], n: 'i', a: 30, tt: 60, p: 6,
    m: ['Grande poêle large'], w: 'Paella',
    i: [['riz-arborio', 450, 'riz rond'], ['poulet', 600], ['crevette', 300], ['poivron', 150], ['petits-pois', 150], ['tomate', 200], ['ail', 10], ['safran', 0.2], ['paprika', 4], ['bouillon', 2], ['huile-olive', 60], ['citron', 1], ['sel', 8]],
    e: [
      ['Fais dorer le poulet dans l’huile, ajoute poivron, ail et tomate râpée.', 'la tomate a réduit.', 15],
      ['Ajoute riz, paprika, safran puis 1,3 l de bouillon chaud.', 'le riz est réparti en couche fine.'],
      ['Cuis sans remuer, ajoute crevettes et petits pois à mi-cuisson.', 'le riz a absorbé le liquide et accroche légèrement au fond.', 20],
      ['Couvre d’un torchon et laisse reposer.', 'le riz est tendre.', 5],
    ],
  },
  {
    s: 'tortilla-espagnole', t: 'Tortilla de patatas', o: 'Espagne', f: ['Petits-déjeuners et brunchs', 'Apéritifs et entrées'], n: 'i', a: 30, tt: 40, p: 4,
    m: ['Poêle', 'Assiette plate'], w: 'Tortilla de patatas',
    i: [['pomme-de-terre', 600], ['oignon', 150], ['oeuf', 6], ['huile-olive', 200], ['sel', 6]],
    e: [
      ['Fais confire pommes de terre en fines tranches et oignon dans l’huile à feu doux.', 'ils sont tendres sans être dorés.', 20],
      ['Égoutte et mélange aux œufs battus salés.', 'tout est enrobé d’œuf.'],
      ['Cuis dans la poêle, retourne avec une assiette, puis termine.', 'les deux faces sont dorées, le cœur juste pris.', 8],
    ],
  },
  {
    s: 'moussaka', t: 'Moussaka', o: 'Grèce', f: ['Plats au four et mijotés'], n: 'i', a: 50, tt: 120, p: 6,
    m: ['Plat à four'], w: 'Moussaka',
    i: [['aubergine', 1000], ['viande-hachee', 500], ['oignon', 150], ['tomate-pelee', 400], ['cannelle', 2], ['beurre', 50], ['farine', 50], ['lait', 500], ['oeuf', 1], ['fromage', 60], ['huile-olive', 60], ['sel', 10]],
    e: [
      ['Coupe les aubergines en tranches, badigeonne d’huile et fais-les rôtir.', 'elles sont tendres et dorées.', 25],
      ['Fais une sauce viande, oignon, tomate et cannelle.', 'elle a épaissi.', 20],
      ['Fais une béchamel et ajoute l’œuf hors du feu.', 'elle est lisse.', 10],
      ['Alterne aubergines et viande, couvre de béchamel et fromage, cuis à 180 °C.', 'le dessus est doré.', 45],
    ],
  },
  {
    s: 'salade-grecque', t: 'Salade grecque', o: 'Grèce', f: ['Apéritifs et entrées'], n: 'd', a: 15, tt: 15, p: 4,
    m: ['Saladier'], w: 'Salade grecque',
    i: [['tomate', 400], ['concombre', 300], ['poivron', 100], ['oignon', 50], ['feta', 200], ['origan', 1], ['huile-olive', 50], ['sel', 3]],
    e: [
      ['Coupe tomates, concombre et poivron en gros morceaux, l’oignon en fines lamelles.', 'les morceaux sont d’une bouchée.'],
      ['Pose la feta en bloc, parsème d’origan et arrose d’huile.', 'la feta est entière sur le dessus.'],
    ],
  },
  {
    s: 'fish-and-chips', t: 'Poisson pané et frites', o: 'Royaume-Uni', f: ['Cuisine de rue et repas à emporter'], n: 'i', a: 35, tt: 45, p: 4,
    m: ['Marmite pour friture', 'Thermomètre conseillé'], w: 'Fish and chips',
    i: [['filet-poisson', 600], ['farine', 200], ['levure-chimique', 5], ['pomme-de-terre', 1000], ['huile-vegetale!', 1500], ['citron', 1], ['sel', 8]],
    e: [
      ['Coupe les pommes de terre en bâtonnets et fais-les frire une première fois à feu moyen.', 'elles sont tendres mais pâles.', 6],
      ['Mélange farine, levure, sel et 25 cl d’eau très froide.', 'la pâte est fluide comme une crème épaisse.'],
      ['Trempe le poisson dans la pâte et fais-le frire.', 'la pâte est dorée et gonflée.', 6],
      ['Refais frire les frites à feu vif.', 'elles sont croustillantes et dorées.', 3],
    ],
  },
  {
    s: 'pierogi', t: 'Pierogi pomme de terre et fromage', o: 'Pologne', f: ['Pâtes et nouilles'], n: 'a', a: 60, tt: 80, p: 30, pc: true,
    m: ['Rouleau', 'Emporte-pièce'], w: 'Pierogi',
    i: [['farine', 400], ['oeuf', 1], ['pomme-de-terre', 500], ['fromage', 200], ['oignon', 150], ['beurre', 50], ['sel', 8]],
    e: [
      ['Pétris farine, œuf, sel et 20 cl d’eau tiède.', 'la pâte est souple.', 10],
      ['Écrase les pommes de terre cuites avec le fromage et l’oignon fondu.', 'la farce est lisse.'],
      ['Étale, découpe des disques, farcis et ferme en demi-lune.', 'les bords sont bien pincés.'],
      ['Fais pocher dans l’eau salée.', 'ils remontent à la surface depuis 2 minutes.', 4],
    ],
  },
];
