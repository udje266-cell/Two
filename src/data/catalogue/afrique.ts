import type { RecetteCompacte } from './compact';

export const afrique: RecetteCompacte[] = [
  {
    s: 'ceebu-jen', t: 'Ceebu jën', o: 'Sénégal', f: ['Riz et autres céréales', 'Viandes, poissons et fruits de mer'], n: 'a', a: 60, tt: 120, p: 6,
    m: ['Grande marmite'], al: ['thieboudienne', 'riz au poisson'], w: 'Thiéboudiène',
    i: [['riz-local', 800, 'brisé de préférence'], ['poisson', 1200], ['persil', 30], ['ail', 20], ['piment', 10], ['concentre-tomate', 140], ['oignon', 200], ['carotte', 300], ['chou', 400], ['manioc', 300], ['aubergine', 200], ['huile-vegetale', 150], ['sel', 15]],
    e: [
      ['Mixe persil, ail, piment et sel, farcis les entailles du poisson.', 'chaque entaille est bien remplie.'],
      ['Fais dorer le poisson dans l’huile, puis retire-le.', 'les deux faces sont dorées.', 8],
      ['Dans la même huile, fais revenir oignon et concentré.', 'le concentré a foncé sans brûler.', 10],
      ['Ajoute 2 l d’eau, les légumes et le poisson, cuis à feu moyen.', 'les légumes sont tendres.', 35],
      ['Retire poisson et légumes, verse le riz dans le bouillon, couvre.', 'le riz a absorbé le bouillon et est tendre.', 30],
    ],
  },
  {
    s: 'yassa-poulet', t: 'Poulet yassa', o: 'Sénégal', f: ['Plats au four et mijotés'], n: 'd', a: 30, tt: 150, p: 4,
    m: ['Cocotte'], w: 'Yassa',
    i: [['poulet', 1200], ['oignon', 800], ['citron', 4], ['moutarde', 40], ['ail', 10], ['piment', 10], ['huile-vegetale', 80], ['sel', 10]],
    e: [
      ['Fais mariner le poulet avec oignons émincés, jus de citron, moutarde, ail et sel.', 'tout le poulet est couvert de marinade.', 60],
      ['Fais griller ou dorer le poulet.', 'la peau est dorée.', 15],
      ['Fais fondre les oignons de la marinade dans l’huile.', 'les oignons sont fondants et blonds.', 20],
      ['Ajoute le poulet et le reste de marinade, laisse mijoter.', 'le poulet est tendre.', 30],
    ],
  },
  {
    s: 'mafe-boeuf', t: 'Mafé au bœuf', o: 'Mali, Sénégal', f: ['Plats au four et mijotés'], n: 'd', a: 25, tt: 100, p: 6,
    m: ['Marmite'], w: 'Mafé',
    i: [['boeuf', 800], ['pate-arachide', 250], ['tomate-pelee', 400], ['oignon', 150], ['patate-douce', 400], ['carotte', 200], ['ail', 10], ['huile-vegetale', 30], ['sel', 10]],
    e: [
      ['Fais dorer la viande en cubes dans l’huile.', 'toutes les faces ont pris couleur.', 10],
      ['Ajoute oignon, ail et tomates, puis 1 l d’eau.', 'la sauce frémit.', 20],
      ['Ajoute la pâte d’arachide délayée et les légumes.', 'les légumes sont tendres.', 50],
    ],
  },
  {
    s: 'jollof-rice', t: 'Jollof rice', o: 'Nigeria, Ghana', f: ['Riz et autres céréales'], n: 'd', a: 25, tt: 60, p: 6,
    m: ['Marmite avec couvercle', 'Mixeur'], w: 'Riz jollof',
    i: [['riz-local', 600], ['tomate', 400], ['poivron', 200], ['oignon', 200], ['piment', 10], ['concentre-tomate', 70], ['huile-vegetale', 100], ['thym', 2], ['curry', 4], ['laurier', 1], ['bouillon', 2], ['sel', 8]],
    e: [
      ['Mixe tomates, poivron, la moitié de l’oignon et le piment.', 'la purée est lisse.'],
      ['Fais revenir le reste d’oignon et le concentré dans l’huile.', 'le concentré a foncé.', 5],
      ['Ajoute la purée et les épices, laisse réduire.', 'la sauce a réduit de moitié et l’huile remonte.', 15],
      ['Ajoute le riz lavé et 70 cl d’eau, couvre à feu doux.', 'le riz est tendre et le fond légèrement grillé.', 25],
    ],
  },
  {
    s: 'suya', t: 'Suya', o: 'Nigeria', f: ['Cuisine de rue et repas à emporter', 'Viandes, poissons et fruits de mer'], n: 'd', a: 20, tt: 80, p: 4,
    m: ['Grill', 'Brochettes'], w: 'Suya',
    i: [['boeuf', 600], ['arachide', 80, 'mixées'], ['piment-poudre', 5], ['paprika', 5], ['gingembre-poudre', 3], ['oignon', 100], ['huile-vegetale', 20], ['sel', 5]],
    e: [
      ['Mixe arachides et épices en poudre fine.', 'la poudre ressemble à du sable.'],
      ['Coupe la viande en fines lanières, enrobe d’huile puis de poudre.', 'chaque lanière est couverte.', 45],
      ['Enfile sur les brochettes et grille.', 'les bords sont bien grillés.', 10],
    ],
  },
  {
    s: 'kelewele', t: 'Kelewele', o: 'Ghana', f: ['Tubercules et plantains', 'Cuisine de rue et repas à emporter'], n: 'd', a: 15, tt: 30, p: 2,
    m: ['Poêle profonde'], w: 'Kelewele',
    i: [['banane-plantain', 2], ['gingembre', 15], ['piment-poudre', 2], ['huile-vegetale!', 400], ['sel', 2]],
    e: [
      ['Coupe les bananes en dés.', 'les dés font environ 2 cm.'],
      ['Enrobe-les de gingembre râpé, piment et sel.', 'tous les dés sont épicés.', 10],
      ['Fais frire.', 'les dés sont bien caramélisés.', 4],
    ],
  },
  {
    s: 'ndole', t: 'Ndolé', o: 'Cameroun', f: ['Plats au four et mijotés'], n: 'a', a: 45, tt: 120, p: 6,
    m: ['Marmite', 'Mixeur'], w: 'Ndolé',
    i: [['epinards', 500, 'ou feuilles de ndolé'], ['arachide', 300, 'crues décortiquées'], ['boeuf', 500], ['crevette', 200], ['oignon', 150], ['ail', 10], ['gingembre', 15], ['huile-vegetale', 100], ['sel', 10]],
    e: [
      ['Fais cuire la viande dans de l’eau salée.', 'la viande est tendre.', 40],
      ['Fais bouillir les arachides puis mixe-les en pâte.', 'la pâte est lisse et claire.', 20],
      ['Mélange pâte d’arachide, viande et son bouillon, ajoute les feuilles.', 'les feuilles sont bien enrobées.', 20],
      ['Fais revenir oignon, ail, gingembre et crevettes dans l’huile, verse sur le ndolé.', 'les crevettes sont roses.', 5],
    ],
  },
  {
    s: 'poulet-dg', t: 'Poulet DG', o: 'Cameroun', f: ['Plats au four et mijotés', 'Tubercules et plantains'], n: 'i', a: 40, tt: 70, p: 4,
    m: ['Cocotte', 'Poêle'], w: 'Poulet DG',
    i: [['poulet', 1000], ['banane-plantain', 3], ['carotte', 200], ['haricot-vert', 150], ['poivron', 150], ['tomate', 200], ['oignon', 150], ['ail', 10], ['huile-vegetale!', 400], ['sel', 8]],
    e: [
      ['Fais dorer le poulet dans une cocotte.', 'il est doré partout.', 15],
      ['Ajoute oignon, ail, tomate et légumes coupés, laisse mijoter.', 'les carottes sont tendres.', 25],
      ['Fais frire les plantains en rondelles.', 'ils sont dorés.', 5],
      ['Mélange les plantains au poulet juste avant de servir.', 'les plantains sont enrobés de sauce.'],
    ],
  },
  {
    s: 'moambe', t: 'Poulet à la moambé', o: 'République démocratique du Congo', f: ['Plats au four et mijotés'], n: 'i', a: 25, tt: 80, p: 4,
    m: ['Cocotte'], w: 'Poulet à la moambé',
    i: [['poulet', 1200], ['graine-palme', 400], ['oignon', 150], ['tomate', 200], ['ail', 10], ['piment', 10], ['sel', 8]],
    e: [
      ['Fais revenir le poulet avec oignon et ail.', 'le poulet est doré.', 10],
      ['Ajoute tomate et crème de palme délayée dans 50 cl d’eau.', 'la sauce est homogène.'],
      ['Laisse mijoter à couvert.', 'la sauce est épaisse et l’huile remonte.', 50],
    ],
  },
  {
    s: 'doro-wat', t: 'Doro wat', o: 'Éthiopie', f: ['Plats au four et mijotés'], n: 'i', a: 40, tt: 110, p: 4,
    m: ['Cocotte'], w: 'Doro wat',
    i: [['poulet', 1000], ['oignon', 600], ['beurre', 80], ['ail', 15], ['gingembre', 15], ['paprika', 20], ['piment-poudre', 5], ['oeuf', 4, 'durs'], ['citron', 1], ['sel', 8]],
    e: [
      ['Fais cuire les oignons hachés à sec à feu doux.', 'ils sont très fondus et ont perdu leur eau.', 20],
      ['Ajoute beurre, ail, gingembre et épices.', 'le mélange devient rouge foncé et parfumé.', 10],
      ['Ajoute le poulet citronné et 30 cl d’eau, laisse mijoter.', 'le poulet est tendre et la sauce épaisse.', 45],
      ['Ajoute les œufs durs entaillés.', 'ils sont chauds et colorés par la sauce.', 5],
    ],
  },
  {
    s: 'bobotie', t: 'Bobotie', o: 'Afrique du Sud', f: ['Plats au four et mijotés'], n: 'i', a: 25, tt: 70, p: 6,
    m: ['Plat à four', 'Poêle'], w: 'Bobotie',
    i: [['viande-hachee', 800], ['oignon', 150], ['pain-mie', 60], ['lait', 250], ['oeuf', 2], ['curry', 10], ['raisins-secs', 40], ['laurier', 1], ['sel', 8]],
    e: [
      ['Fais revenir oignon et curry, puis la viande.', 'la viande n’est plus rose.', 10],
      ['Ajoute le pain trempé dans la moitié du lait et les raisins, verse dans le plat.', 'le mélange est bien tassé.'],
      ['Bats œufs et reste de lait, verse dessus et enfourne à 180 °C.', 'le dessus est pris et doré.', 35],
    ],
  },
  {
    s: 'chakalaka', t: 'Chakalaka', o: 'Afrique du Sud', f: ['Accompagnements', 'Légumes et légumineuses'], n: 'd', a: 20, tt: 35, p: 4,
    m: ['Poêle'], w: 'Chakalaka',
    i: [['oignon', 100], ['poivron', 200], ['carotte', 200], ['tomate-pelee', 400], ['haricots-rouges', 250, 'cuits'], ['curry', 6], ['ail', 10], ['huile-vegetale', 30], ['sel', 5]],
    e: [
      ['Fais revenir oignon, ail, poivron et curry.', 'les poivrons ont ramolli.', 8],
      ['Ajoute carottes râpées et tomates.', 'la sauce a épaissi.', 10],
      ['Ajoute les haricots et réchauffe.', 'tout est chaud.', 5],
    ],
  },
  {
    s: 'fonio-legumes', t: 'Fonio aux légumes', o: 'Mali, Guinée, Burkina Faso', f: ['Riz et autres céréales'], n: 'd', a: 20, tt: 30, p: 4,
    m: ['Cuit-vapeur ou casserole'], w: 'Fonio',
    i: [['fonio', 300], ['carotte', 150], ['courgette', 150], ['oignon', 80], ['huile-vegetale', 30], ['?soumbala', 5], ['sel', 5]],
    e: [
      ['Rince le fonio plusieurs fois.', 'l’eau de rinçage est claire.'],
      ['Cuis-le à la vapeur ou avec son volume d’eau.', 'les grains sont gonflés et se détachent.', 8],
      ['Fais sauter les légumes en dés avec oignon et soumbala, mélange au fonio.', 'les légumes sont tendres mais croquants.', 10],
    ],
  },
  {
    s: 'akara', t: 'Akara', o: 'Nigeria, Bénin, Sénégal', f: ['Cuisine de rue et repas à emporter', 'Apéritifs et entrées'], n: 'i', a: 40, tt: 760, p: 25, pc: true,
    m: ['Mixeur', 'Marmite pour friture'], al: ['accra de niébé'], w: 'Akara',
    i: [['niebe', 300], ['oignon', 80], ['piment', 5], ['huile-vegetale!', 600], ['sel', 4]],
    e: [
      ['Fais tremper les haricots une nuit, frotte-les pour enlever la peau.', 'les haricots sont blancs.', 720],
      ['Mixe avec oignon, piment, sel et très peu d’eau, puis fouette.', 'la pâte est légère et aérée.'],
      ['Fais frire des cuillerées.', 'les beignets sont dorés et gonflés.', 5],
    ],
  },
  {
    s: 'romazava', t: 'Romazava', o: 'Madagascar', f: ['Soupes et bouillons'], n: 'd', a: 20, tt: 80, p: 4,
    m: ['Marmite'], w: 'Romazava',
    i: [['boeuf', 600], ['epinards', 400], ['tomate', 200], ['oignon', 100], ['gingembre', 10], ['ail', 10], ['huile-vegetale', 20], ['sel', 8]],
    e: [
      ['Fais revenir la viande avec oignon, ail et gingembre.', 'la viande est dorée.', 10],
      ['Ajoute tomates et 1 l d’eau, laisse mijoter.', 'la viande est tendre.', 50],
      ['Ajoute les feuilles vertes en fin de cuisson.', 'les feuilles ont juste flétri.', 5],
    ],
  },
  {
    s: 'kachumbari', t: 'Kachumbari', o: 'Kenya, Tanzanie', f: ['Apéritifs et entrées', 'Accompagnements'], n: 'd', a: 15, tt: 15, p: 4,
    m: ['Saladier'], w: 'Kachumbari',
    i: [['tomate', 400], ['oignon', 100], ['coriandre', 15], ['piment', 5], ['citron-vert', 1], ['sel', 3]],
    e: [
      ['Coupe tomates et oignon en petits dés.', 'les dés sont réguliers.'],
      ['Ajoute coriandre, piment, jus de citron et sel.', 'tout est bien mélangé.'],
    ],
  },
  {
    s: 'pastels', t: 'Pastels au poisson', o: 'Sénégal', f: ['Cuisine de rue et repas à emporter'], n: 'i', a: 50, tt: 70, p: 20, pc: true,
    m: ['Rouleau', 'Marmite pour friture'], w: 'Pastel (gastronomie)',
    i: [['farine', 400], ['huile-vegetale!', 600], ['thon-boite', 300], ['oignon', 100], ['persil', 15], ['piment', 5], ['sel', 5]],
    e: [
      ['Pétris farine, sel, 4 c. à soupe d’huile et 20 cl d’eau.', 'la pâte est souple et ne colle plus.', 10],
      ['Prépare la farce : poisson émietté, oignon, persil, piment.', 'la farce est bien assaisonnée.'],
      ['Étale finement, découpe des disques, farcis et ferme.', 'les bords sont bien soudés à la fourchette.'],
      ['Fais frire.', 'les pastels sont dorés.', 5],
    ],
  },
];
