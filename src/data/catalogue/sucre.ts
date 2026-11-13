import type { RecetteCompacte } from './compact';

const FR = 'France';

export const sucre: RecetteCompacte[] = [
  // Boulangerie
  {
    s: 'pain-maison', t: 'Pain de campagne maison', o: FR, f: ['Boulangerie'], n: 'i', a: 25, tt: 240, p: 1, pc: true,
    m: ['Four', 'Cocotte en fonte conseillée'], w: 'Pain',
    i: [['farine', 500], ['levure-boulangere', 5], ['sel', 10]],
    e: [
      ['Mélange farine, levure, sel et 35 cl d’eau tiède, pétris.', 'la pâte est lisse et revient quand on l’appuie.', 10],
      ['Laisse lever couvert.', 'la pâte a doublé de volume.', 120],
      ['Façonne une boule et laisse lever encore.', 'une marque du doigt revient lentement.', 45],
      ['Entaille et cuis à 240 °C.', 'le dessous sonne creux quand on le tapote.', 40],
    ],
  },
  {
    s: 'baguette', t: 'Baguettes', o: FR, f: ['Boulangerie'], n: 'a', a: 40, tt: 300, p: 3, pc: true,
    m: ['Four', 'Plaque', 'Lame'], w: 'Baguette',
    i: [['farine', 500], ['levure-boulangere', 3], ['sel', 10]],
    e: [
      ['Mélange farine et 34 cl d’eau, laisse reposer, puis ajoute levure et sel.', 'la pâte est lisse.', 30],
      ['Fais lever en rabattant la pâte toutes les 30 minutes.', 'la pâte est gonflée et souple.', 120],
      ['Divise, façonne des baguettes et laisse lever.', 'elles ont pris un tiers de volume.', 60],
      ['Grigne et cuis à 250 °C avec un bol d’eau dans le four.', 'la croûte est dorée et chante en refroidissant.', 22],
    ],
  },
  {
    s: 'pain-pita', t: 'Pains pita', o: 'Levant, Grèce', f: ['Boulangerie'], n: 'd', a: 25, tt: 120, p: 8, pc: true,
    m: ['Four très chaud', 'Rouleau'], w: 'Pita',
    i: [['farine', 500], ['levure-boulangere', 7], ['huile-olive', 20], ['sucre', 5], ['sel', 8]],
    e: [
      ['Pétris tous les ingrédients avec 30 cl d’eau tiède.', 'la pâte est souple.', 8],
      ['Laisse lever.', 'elle a doublé.', 60],
      ['Étale 8 disques de 5 mm et cuis sur plaque à 250 °C.', 'les pains gonflent comme des ballons.', 4],
    ],
  },
  {
    s: 'msemen', t: 'Msemen', o: 'Maroc, Algérie', f: ['Boulangerie', 'Petits-déjeuners et brunchs'], n: 'i', a: 45, tt: 60, p: 10, pc: true,
    m: ['Poêle', 'Plan de travail huilé'], w: 'Msemen',
    i: [['farine', 400], ['semoule', 100, 'fine'], ['beurre', 60, 'fondu'], ['huile-vegetale', 60], ['sel', 6]],
    e: [
      ['Pétris farine, semoule, sel et 30 cl d’eau.', 'la pâte est très souple.', 10],
      ['Fais des boules et laisse reposer sous un linge huilé.', 'elles se détendent.', 15],
      ['Étale très finement, enduis de beurre et semoule, plie en carré.', 'le carré a plusieurs couches.'],
      ['Aplatis et cuis à la poêle.', 'les deux faces sont dorées et feuilletées.', 4],
    ],
  },
  // Viennoiserie
  {
    s: 'brioche', t: 'Brioche tressée', o: FR, f: ['Viennoiserie', 'Petits-déjeuners et brunchs'], n: 'i', a: 35, tt: 240, p: 1, pc: true,
    m: ['Four', 'Robot conseillé'], w: 'Brioche',
    i: [['farine', 500], ['oeuf', 4], ['lait', 100], ['sucre', 60], ['beurre', 150, 'mou'], ['levure-boulangere', 10], ['sel', 8]],
    e: [
      ['Pétris farine, œufs, lait tiède, sucre, sel et levure.', 'la pâte se décolle des parois.', 10],
      ['Ajoute le beurre en morceaux et pétris encore.', 'la pâte est lisse, brillante et élastique.', 10],
      ['Laisse lever, puis tresse en trois brins.', 'la pâte a doublé avant le tressage.', 90],
      ['Laisse lever, dore à l’œuf et cuis à 170 °C.', 'la brioche est bien dorée.', 30],
    ],
  },
  {
    s: 'croissants', t: 'Croissants', o: FR, f: ['Viennoiserie'], n: 'a', a: 90, tt: 780, p: 12, pc: true,
    m: ['Rouleau', 'Four', 'Réfrigérateur'], w: 'Croissant',
    i: [['farine', 500], ['beurre', 280, 'froid, pour le tourage'], ['lait', 150], ['sucre', 60], ['levure-boulangere', 12], ['oeuf', 1], ['sel', 10]],
    e: [
      ['Pétris farine, lait, 15 cl d’eau, sucre, sel et levure, laisse au frais.', 'la pâte est froide et ferme.', 60],
      ['Enferme le beurre aplati dans la pâte, étale et plie en trois ; recommence 3 fois avec 30 min de froid.', 'on ne voit pas de beurre percer.', 120],
      ['Étale, découpe des triangles et roule-les.', 'la pointe est sous le croissant.'],
      ['Laisse pousser au tiède, dore et cuis à 190 °C.', 'les couches sont visibles et bien dorées.', 18],
    ],
  },
  {
    s: 'pains-chocolat', t: 'Pains au chocolat', o: FR, f: ['Viennoiserie'], n: 'a', a: 90, tt: 780, p: 12, pc: true,
    m: ['Rouleau', 'Four'], al: ['chocolatines'], w: 'Pain au chocolat',
    i: [['farine', 500], ['beurre', 280], ['lait', 150], ['sucre', 60], ['levure-boulangere', 12], ['chocolat', 120, 'en barres'], ['oeuf', 1], ['sel', 10]],
    e: [
      ['Prépare une pâte feuilletée levée comme pour les croissants.', 'la pâte a reçu ses 3 tours.', 180],
      ['Découpe des rectangles, roule-les autour de 2 barres de chocolat.', 'la soudure est dessous.'],
      ['Laisse pousser, dore et cuis à 190 °C.', 'ils sont dorés et gonflés.', 18],
    ],
  },
  // Pâtisserie
  {
    s: 'gateau-yaourt', t: 'Gâteau au yaourt', o: FR, f: ['Pâtisserie'], n: 'd', a: 10, tt: 45, p: 8,
    m: ['Moule à cake', 'Four'], w: 'Gâteau au yaourt',
    i: [['yaourt', 125], ['sucre', 200], ['farine', 260], ['oeuf', 3], ['huile-vegetale', 100], ['levure-chimique', 11], ['?vanille', 8]],
    e: [
      ['Utilise le pot de yaourt comme mesure : mélange yaourt, sucre, œufs.', 'le mélange est mousseux.'],
      ['Ajoute farine, levure, puis huile.', 'la pâte est lisse.'],
      ['Verse dans le moule et cuis à 180 °C.', 'une lame ressort sèche.', 35],
    ],
  },
  {
    s: 'fondant-chocolat', t: 'Fondant au chocolat', o: FR, f: ['Pâtisserie'], n: 'd', a: 15, tt: 40, p: 8,
    m: ['Moule rond', 'Four'], w: 'Fondant au chocolat',
    i: [['chocolat', 200], ['beurre', 150], ['sucre', 150], ['oeuf', 4], ['farine', 50]],
    e: [
      ['Fais fondre chocolat et beurre doucement.', 'le mélange est lisse et brillant.', 3],
      ['Ajoute sucre, œufs un à un, puis farine.', 'la pâte est homogène.'],
      ['Cuis à 180 °C.', 'les bords sont cuits et le centre tremble encore un peu.', 22],
    ],
  },
  {
    s: 'tarte-pommes', t: 'Tarte aux pommes', o: FR, f: ['Pâtisserie'], n: 'd', a: 25, tt: 65, p: 8,
    m: ['Moule à tarte', 'Four'], w: 'Tarte aux pommes',
    i: [['pate-feuilletee!', 230], ['pomme', 5], ['sucre', 50], ['beurre', 30], ['?cannelle', 2]],
    e: [
      ['Fonce le moule avec la pâte.', 'la pâte couvre les bords.'],
      ['Dispose les pommes en fines lamelles en rosace.', 'les lamelles se chevauchent.'],
      ['Parsème de sucre et de noisettes de beurre, cuis à 190 °C.', 'les pommes sont caramélisées sur les bords.', 40],
    ],
  },
  {
    s: 'clafoutis', t: 'Clafoutis aux fruits', o: 'France (Limousin)', f: ['Desserts', 'Pâtisserie'], n: 'd', a: 15, tt: 55, p: 6,
    m: ['Plat à four'], w: 'Clafoutis',
    i: [['fruits-rouges', 500, 'ou mangue en dés'], ['oeuf', 3], ['sucre', 100], ['farine', 80], ['lait', 300], ['beurre', 15]],
    e: [
      ['Beurre le plat et répartis les fruits.', 'le fond est couvert.'],
      ['Fouette œufs et sucre, ajoute farine puis lait.', 'la pâte est fluide.'],
      ['Verse sur les fruits et cuis à 180 °C.', 'le clafoutis est gonflé et doré.', 40],
    ],
  },
  {
    s: 'creme-caramel', t: 'Crème caramel', o: FR, f: ['Desserts'], n: 'i', a: 25, tt: 230, p: 6,
    m: ['Ramequins', 'Four', 'Bain-marie'], al: ['flan'], w: 'Crème caramel',
    i: [['lait', 500], ['oeuf', 4], ['sucre', 180], ['vanille', 8]],
    e: [
      ['Fais un caramel avec 100 g de sucre et un peu d’eau, verse dans les ramequins.', 'le caramel est ambré.', 8],
      ['Fouette œufs et sucre restant, ajoute le lait chaud vanillé.', 'le mélange est homogène.'],
      ['Cuis au bain-marie à 160 °C.', 'la crème est prise mais tremble au centre.', 35],
      ['Laisse refroidir au frais avant de démouler.', 'la crème est bien froide.', 180],
    ],
  },
  {
    s: 'mousse-chocolat', t: 'Mousse au chocolat', o: FR, f: ['Desserts'], n: 'i', a: 20, tt: 200, p: 6,
    m: ['Batteur', 'Saladier'], w: 'Mousse au chocolat',
    i: [['chocolat', 200], ['oeuf', 6], ['sucre', 30], ['sel', 1]],
    e: [
      ['Fais fondre le chocolat, ajoute les jaunes un à un.', 'le mélange est brillant.'],
      ['Monte les blancs avec le sel, puis le sucre.', 'les blancs forment un bec ferme.', 5],
      ['Incorpore délicatement les blancs au chocolat.', 'il ne reste plus de traces blanches.'],
      ['Mets au frais.', 'la mousse est ferme.', 180],
    ],
  },
  {
    s: 'cookies', t: 'Cookies aux pépites de chocolat', o: 'États-Unis', f: ['Biscuits et petites douceurs'], n: 'd', a: 15, tt: 30, p: 16, pc: true,
    m: ['Plaque', 'Four'], w: 'Cookie',
    i: [['beurre', 120, 'mou'], ['sucre', 150], ['oeuf', 1], ['farine', 220], ['levure-chimique', 5], ['chocolat', 150, 'en morceaux'], ['sel', 2]],
    e: [
      ['Mélange beurre et sucre, puis l’œuf.', 'le mélange est crémeux.'],
      ['Ajoute farine, levure, sel et chocolat.', 'la pâte est homogène.'],
      ['Forme des boules espacées et cuis à 180 °C.', 'les bords sont dorés, le centre encore mou.', 11],
    ],
  },
  {
    s: 'madeleines', t: 'Madeleines', o: 'France (Lorraine)', f: ['Biscuits et petites douceurs'], n: 'd', a: 15, tt: 75, p: 20, pc: true,
    m: ['Moule à madeleines', 'Four'], w: 'Madeleine (gâteau)',
    i: [['oeuf', 3], ['sucre', 130], ['farine', 150], ['levure-chimique', 5], ['beurre', 120, 'fondu'], ['citron', 1, 'zeste']],
    e: [
      ['Fouette œufs et sucre, ajoute farine, levure, zeste puis beurre.', 'la pâte est lisse.'],
      ['Laisse reposer au frais.', 'la pâte est froide.', 45],
      ['Remplis les moules et cuis à 220 °C puis 180 °C.', 'une bosse s’est formée et les bords sont dorés.', 10],
    ],
  },
  {
    s: 'cornes-gazelle', t: 'Cornes de gazelle', o: 'Maroc, Algérie', f: ['Biscuits et petites douceurs'], n: 'a', a: 60, tt: 80, p: 30, pc: true,
    m: ['Rouleau', 'Four'], w: 'Corne de gazelle',
    i: [['amande', 300], ['sucre', 150], ['fleur-oranger', 40], ['beurre', 60], ['farine', 250], ['oeuf', 1]],
    e: [
      ['Mélange amandes, sucre, fleur d’oranger et un peu de beurre.', 'la pâte d’amande est malléable.'],
      ['Pétris farine, beurre restant, œuf et un peu d’eau.', 'la pâte est souple.', 10],
      ['Étale très finement, enferme des boudins d’amande et forme des croissants.', 'les bords sont bien soudés.'],
      ['Cuis à 170 °C.', 'elles sont à peine blondes.', 15],
    ],
  },
  {
    s: 'baklava', t: 'Baklava', o: 'Turquie, Grèce, Levant', f: ['Pâtisserie'], n: 'a', a: 45, tt: 110, p: 24, pc: true,
    m: ['Plat à four', 'Pinceau'], w: 'Baklava',
    i: [['feuilles-brick', 20, 'ou pâte filo'], ['pistache', 300, 'concassées'], ['beurre', 200, 'fondu'], ['sucre', 300], ['miel', 100], ['citron', 1], ['cannelle', 2]],
    e: [
      ['Beurre une feuille sur deux et superpose-en la moitié dans le plat.', 'chaque couche est beurrée.'],
      ['Étale les pistaches à la cannelle, puis le reste des feuilles beurrées.', 'le dessus est lisse.'],
      ['Découpe en losanges et cuis à 170 °C.', 'le dessus est doré.', 45],
      ['Fais un sirop sucre, miel, citron et 20 cl d’eau, verse sur la baklava chaude.', 'le sirop est absorbé.', 10],
    ],
  },
  {
    s: 'gateau-coco', t: 'Gâteau à la noix de coco', o: 'Afrique de l’Ouest, Antilles', f: ['Pâtisserie'], n: 'd', a: 15, tt: 50, p: 8,
    m: ['Moule rond', 'Four'],
    i: [['noix-coco', 1, 'râpée, soit 150 g'], ['lait-coco', 200], ['sucre', 150], ['oeuf', 3], ['farine', 200], ['levure-chimique', 10], ['beurre', 80, 'fondu']],
    e: [
      ['Fouette œufs et sucre, ajoute beurre et lait de coco.', 'le mélange est lisse.'],
      ['Ajoute farine, levure et coco râpée.', 'la pâte est épaisse.'],
      ['Cuis à 180 °C.', 'le gâteau est doré et une lame ressort sèche.', 35],
    ],
  },
  {
    s: 'banane-flambee', t: 'Bananes caramélisées', o: 'Antilles', f: ['Desserts'], n: 'd', a: 10, tt: 10, p: 4,
    m: ['Poêle'],
    i: [['banane', 4], ['beurre', 30], ['sucre', 40], ['cannelle', 1], ['citron-vert', 1]],
    e: [
      ['Coupe les bananes en deux dans la longueur.', 'les moitiés sont entières.'],
      ['Fais-les dorer dans le beurre avec sucre et cannelle.', 'un caramel blond nappe les bananes.', 5],
      ['Arrose d’un filet de citron vert.', 'la sauce brille.'],
    ],
  },
  {
    s: 'salade-fruits', t: 'Salade de fruits tropicaux', o: 'Côte d’Ivoire', f: ['Desserts'], n: 'd', a: 15, tt: 45, p: 6,
    m: ['Saladier'],
    i: [['mangue', 2], ['ananas', 1], ['banane', 2], ['orange', 2], ['citron-vert', 1], ['sucre', 30], ['menthe', 5]],
    e: [
      ['Coupe tous les fruits en dés.', 'les dés font la taille d’une bouchée.'],
      ['Arrose de jus de citron et d’orange, sucre légèrement.', 'les fruits baignent un peu dans le jus.'],
      ['Laisse au frais.', 'la salade est bien froide.', 30],
    ],
  },
  {
    s: 'riz-au-lait', t: 'Riz au lait', o: FR, f: ['Desserts'], n: 'd', a: 10, tt: 50, p: 6,
    m: ['Casserole'], w: 'Riz au lait',
    i: [['riz-arborio', 150], ['lait', 1000], ['sucre', 100], ['vanille', 8], ['?cannelle', 1]],
    e: [
      ['Porte le lait vanillé à frémissement, verse le riz.', 'le lait frémit doucement.'],
      ['Cuis à feu très doux en remuant souvent.', 'le riz est tendre et crémeux.', 40],
      ['Ajoute le sucre hors du feu.', 'il est dissous.'],
    ],
  },
  // Boissons et conservation
  {
    s: 'the-menthe', t: 'Thé à la menthe', o: 'Maroc', f: ['Boissons'], n: 'd', a: 10, tt: 15, p: 4,
    m: ['Théière'], w: 'Thé à la menthe',
    i: [['the', 10], ['menthe', 30], ['sucre', 60]],
    e: [
      ['Rince le thé avec un peu d’eau bouillante, jette cette eau.', 'les feuilles sont humides.'],
      ['Ajoute menthe, sucre et 80 cl d’eau bouillante, laisse infuser.', 'le thé est ambré.', 4],
      ['Sers de haut pour faire mousser.', 'une mousse se forme dans le verre.'],
    ],
  },
  {
    s: 'smoothie-mangue', t: 'Smoothie mangue banane', o: 'Monde', f: ['Boissons'], n: 'd', a: 5, tt: 5, p: 2,
    m: ['Mixeur'], w: 'Smoothie',
    i: [['mangue', 1], ['banane', 1], ['yaourt', 150], ['?miel', 15]],
    e: [['Mixe tous les ingrédients avec quelques glaçons.', 'le smoothie est lisse et épais.']],
  },
  {
    s: 'confiture-mangue', t: 'Confiture de mangue', o: 'Afrique de l’Ouest', f: ['Conservation et fermentation'], n: 'i', a: 20, tt: 60, p: 3, pc: true,
    m: ['Grande casserole', 'Pots stérilisés'], w: 'Confiture',
    i: [['mangue', 4, 'soit 1 kg de chair'], ['sucre', 600], ['citron', 1]],
    e: [
      ['Coupe la chair en dés et mélange avec sucre et jus de citron.', 'le sucre commence à fondre.', 30],
      ['Fais cuire en remuant.', 'une goutte sur une assiette froide se fige.', 25],
      ['Verse bouillante dans des pots stérilisés, ferme et retourne.', 'les pots sont pleins jusqu’en haut.'],
    ],
  },
];
