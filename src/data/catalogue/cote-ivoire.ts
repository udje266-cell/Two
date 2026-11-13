import type { RecetteCompacte } from './compact';

const CI = 'Côte d’Ivoire';

export const coteIvoire: RecetteCompacte[] = [
  {
    s: 'riz-gras-au-poulet', t: 'Riz gras au poulet', o: CI, f: ['Riz et autres céréales', 'Plats au four et mijotés'], n: 'd', a: 40, tt: 70, p: 4,
    m: ['Marmite avec couvercle'], al: ['riz au gras'], w: 'Riz gras',
    i: [['riz-local', 500, 'lavé'], ['poulet', 800], ['tomate', 300], ['oignon', 200, 'émincés'], ['concentre-tomate', 70], ['huile-vegetale', 100], ['?piment', 10], ['sel', 8]],
    e: [
      ['Coupe le poulet en morceaux et sale-le.', 'chaque morceau est enrobé de sel.'],
      ['Fais dorer le poulet dans l’huile chaude.', 'les morceaux sont dorés sur toutes les faces.', 8],
      ['Ajoute les oignons et remue à feu moyen.', 'les oignons deviennent translucides : on voit presque à travers, ils ne sont pas encore bruns.', 5],
      ['Ajoute tomates et concentré, laisse réduire.', 'la sauce épaissit et l’huile remonte sur les bords.', 10],
      ['Verse le riz lavé et 1,5 fois son volume d’eau, couvre à feu doux.', 'l’eau a disparu et de petits trous se forment à la surface.', 20],
      ['Laisse reposer, puis égraine à la fourchette.', 'les grains sont tendres et se détachent.', 5],
    ],
  },
  {
    s: 'alloco-oeuf', t: 'Alloco et œuf', o: CI, f: ['Tubercules et plantains', 'Cuisine de rue et repas à emporter'], n: 'd', a: 25, tt: 25, p: 2,
    m: ['Poêle profonde', 'Écumoire'], al: ['aloco', 'banane plantain frite'], w: 'Aloko',
    i: [['banane-plantain', 2], ['?oeuf', 2], ['huile-vegetale!', 500, 'pour la friture'], ['sel', 3], ['?piment', 5]],
    e: [
      ['Épluche les bananes et coupe-les en rondelles épaisses.', 'les rondelles font à peu près l’épaisseur d’un doigt.'],
      ['Fais chauffer l’huile.', 'un morceau de banane plongé dedans fait aussitôt de petites bulles.', 5],
      ['Fais frire les rondelles par petites quantités.', 'elles sont dorées et caramélisées sur les bords.', 4],
      ['Égoutte, sale, puis fais cuire les œufs au plat.', 'le blanc est pris, le jaune encore brillant.', 3],
    ],
  },
  {
    s: 'attieke-poisson-braise', t: 'Attiéké poisson braisé', o: CI, f: ['Tubercules et plantains', 'Viandes, poissons et fruits de mer'], n: 'd', a: 30, tt: 45, p: 4,
    m: ['Grill ou poêle', 'Passoire'], al: ['garba'], w: 'Attiéké',
    i: [['attieke', 800], ['poisson', 1000], ['tomate', 200], ['oignon', 100], ['?piment', 10], ['citron-vert', 2], ['huile-vegetale', 40], ['sel', 8]],
    e: [
      ['Nettoie le poisson et fais 3 entailles de chaque côté.', 'les entailles vont jusqu’à l’arête.'],
      ['Frotte-le de sel, citron et un peu d’huile, puis fais-le griller.', 'la peau est dorée et la chair se détache de l’arête.', 20],
      ['Réchauffe l’attiéké à la vapeur.', 'les grains sont chauds et souples.', 10],
      ['Coupe tomate, oignon et piment en petits dés et assaisonne.', 'tout est coupé en dés réguliers.'],
    ],
  },
  {
    s: 'garba', t: 'Garba', o: CI, f: ['Cuisine de rue et repas à emporter'], n: 'd', a: 25, tt: 30, p: 2,
    m: ['Marmite pour friture'], w: 'Garba (plat)',
    i: [['attieke', 400], ['thon-boite', 300], ['huile-vegetale!', 400, 'pour la friture'], ['oignon', 80], ['tomate', 100], ['piment', 10], ['sel', 4]],
    e: [
      ['Égoutte le poisson et sèche-le.', 'il n’y a plus de liquide.'],
      ['Fais frire le poisson en morceaux.', 'les morceaux sont bien dorés et croustillants.', 6],
      ['Arrose l’attiéké réchauffé d’une cuillère d’huile de friture.', 'chaque grain est brillant.'],
      ['Sers avec oignon, tomate et piment hachés.', 'le piment est réparti selon ton goût.'],
    ],
  },
  {
    s: 'kedjenou-poulet', t: 'Kédjénou de poulet', o: CI, f: ['Plats au four et mijotés'], n: 'd', a: 20, tt: 70, p: 4,
    m: ['Canari ou cocotte à couvercle lourd'], w: 'Kédjénou',
    i: [['poulet', 1200], ['tomate', 300], ['oignon', 150], ['gnangnan', 150], ['gingembre', 15], ['ail', 10], ['piment', 10], ['laurier', 1], ['sel', 10]],
    e: [
      ['Mets tous les ingrédients coupés dans la cocotte, sans eau ni huile.', 'le poulet est bien entouré de légumes.'],
      ['Ferme hermétiquement et cuis à feu doux.', 'de la vapeur se forme sous le couvercle.', 20],
      ['Secoue la cocotte sans l’ouvrir, puis continue la cuisson.', 'le jus des légumes recouvre le fond.', 30],
      ['Vérifie la cuisson du poulet.', 'la chair se détache facilement de l’os.'],
    ],
  },
  {
    s: 'sauce-graine', t: 'Sauce graine', o: CI, f: ['Plats au four et mijotés', 'Sauces et assaisonnements'], n: 'i', a: 30, tt: 90, p: 6,
    m: ['Grande marmite'], al: ['sauce palme', 'sauce de noix de palme'], w: 'Sauce graine',
    i: [['graine-palme', 800], ['boeuf', 600], ['poisson-fume', 200], ['oignon', 150], ['tomate', 200], ['gnangnan', 150], ['piment', 10], ['bouillon', 2], ['sel', 10]],
    e: [
      ['Fais cuire la viande dans 1 l d’eau avec l’oignon et le sel.', 'l’écume est retirée et le bouillon est clair.', 25],
      ['Ajoute la crème de graine délayée dans 1 l d’eau.', 'le mélange est homogène et orangé.'],
      ['Ajoute tomates, aubergines et piment entiers, laisse cuire.', 'les légumes sont tendres sous la fourchette.', 20],
      ['Écrase les légumes dans la sauce, ajoute le poisson fumé et laisse réduire.', 'l’huile rouge remonte en surface.', 30],
    ],
  },
  {
    s: 'sauce-arachide', t: 'Sauce arachide', o: CI, f: ['Plats au four et mijotés', 'Sauces et assaisonnements'], n: 'd', a: 25, tt: 75, p: 6,
    m: ['Marmite'], al: ['mafé'], w: 'Sauce arachide',
    i: [['pate-arachide', 250], ['poulet', 1000], ['tomate', 300], ['concentre-tomate', 70], ['oignon', 150], ['piment', 10], ['bouillon', 2], ['sel', 8]],
    e: [
      ['Fais revenir le poulet avec l’oignon dans un peu d’eau.', 'le poulet a changé de couleur.', 10],
      ['Ajoute tomates mixées et concentré.', 'la sauce est rouge et frémit.', 10],
      ['Délaye la pâte d’arachide dans un bol d’eau chaude, puis verse-la.', 'il ne reste aucun grumeau.'],
      ['Laisse mijoter en remuant de temps en temps.', 'une fine couche d’huile remonte à la surface.', 40],
    ],
  },
  {
    s: 'sauce-gombo', t: 'Sauce gombo', o: CI, f: ['Plats au four et mijotés', 'Sauces et assaisonnements'], n: 'd', a: 25, tt: 60, p: 4,
    m: ['Marmite'], w: 'Gombo',
    i: [['gombo', 400], ['boeuf', 500], ['poisson-fume', 150], ['tomate', 200], ['oignon', 100], ['huile-palme', 40], ['piment', 10], ['bouillon', 1], ['sel', 8]],
    e: [
      ['Fais cuire la viande dans 1 l d’eau salée.', 'la viande est presque tendre.', 25],
      ['Coupe le gombo en fines rondelles.', 'les rondelles font 3 à 4 mm.'],
      ['Ajoute tomate, oignon, piment et poisson fumé.', 'la sauce frémit.', 10],
      ['Ajoute le gombo et l’huile de palme, remue sans arrêt quelques minutes.', 'la sauce devient légèrement filante.', 8],
    ],
  },
  {
    s: 'sauce-claire', t: 'Sauce claire au poisson', o: CI, f: ['Soupes et bouillons'], n: 'd', a: 20, tt: 45, p: 4,
    m: ['Marmite'], al: ['sauce légère'],
    i: [['poisson', 800], ['tomate', 300], ['oignon', 100], ['gnangnan', 100], ['piment', 10], ['bouillon', 1], ['sel', 8]],
    e: [
      ['Fais bouillir tomates, oignon, aubergines et piment dans 1,5 l d’eau.', 'les légumes sont tendres.', 15],
      ['Retire les légumes, écrase-les et remets-les dans le bouillon.', 'la sauce est orangée et fluide.'],
      ['Ajoute le poisson en tranches et laisse frémir doucement.', 'la chair est blanche et opaque.', 12],
    ],
  },
  {
    s: 'sauce-feuilles', t: 'Sauce feuilles de manioc', o: CI, f: ['Plats au four et mijotés'], n: 'i', a: 30, tt: 120, p: 6,
    m: ['Grande marmite'], w: 'Pondu',
    i: [['feuilles-manioc', 600], ['boeuf', 500], ['poisson-fume', 200], ['pate-arachide', 100], ['huile-palme', 80], ['oignon', 150], ['piment', 10], ['sel', 8]],
    e: [
      ['Fais bouillir les feuilles pilées dans 2 l d’eau.', 'elles ont foncé et perdu leur odeur crue.', 45],
      ['Ajoute la viande, l’oignon et le sel.', 'la viande est tendre.', 40],
      ['Ajoute pâte d’arachide délayée, huile de palme et poisson fumé.', 'la sauce est épaisse et brillante.', 30],
    ],
  },
  {
    s: 'foutou-banane', t: 'Foutou banane', o: CI, f: ['Tubercules et plantains', 'Accompagnements'], n: 'i', a: 30, tt: 50, p: 4,
    m: ['Marmite', 'Mortier et pilon ou robot'], w: 'Foutou',
    i: [['plantain-vert', 4], ['manioc', 300], ['sel', 3]],
    e: [
      ['Épluche bananes et manioc, coupe en gros morceaux.', 'les morceaux ont une taille proche.'],
      ['Fais-les cuire à l’eau.', 'la pointe d’un couteau entre sans résistance.', 25],
      ['Pile en ajoutant un peu d’eau de cuisson.', 'la pâte est lisse, élastique et ne colle plus au pilon.'],
      ['Forme des boules avec les mains mouillées.', 'les boules sont lisses.'],
    ],
  },
  {
    s: 'foutou-igname', t: 'Foutou igname', o: CI, f: ['Tubercules et plantains', 'Accompagnements'], n: 'i', a: 25, tt: 50, p: 4,
    m: ['Marmite', 'Mortier et pilon ou robot'], al: ['igname pilée'],
    i: [['igname', 1200], ['sel', 3]],
    e: [
      ['Épluche l’igname et coupe-la en tronçons.', 'les morceaux sont blancs et sans peau.'],
      ['Fais cuire à l’eau salée.', 'la pointe d’un couteau entre sans résistance.', 25],
      ['Pile chaud, petit à petit.', 'la pâte est lisse, sans grumeau et élastique.'],
    ],
  },
  {
    s: 'placali', t: 'Placali', o: CI, f: ['Tubercules et plantains', 'Accompagnements'], n: 'i', a: 20, tt: 25, p: 4,
    m: ['Marmite', 'Spatule en bois'], w: 'Placali',
    i: [['farine-manioc', 600]],
    e: [
      ['Délaye la pâte de manioc dans 1 l d’eau froide.', 'il ne reste aucun grumeau.'],
      ['Cuis à feu moyen en remuant sans arrêt.', 'la pâte devient translucide et élastique.', 15],
      ['Mouille un bol et forme des boules.', 'les boules sont lisses et brillantes.'],
    ],
  },
  {
    s: 'kabato', t: 'Tô de maïs (kabato)', o: CI, f: ['Riz et autres céréales', 'Accompagnements'], n: 'd', a: 20, tt: 25, p: 4,
    m: ['Marmite', 'Spatule en bois'], al: ['tô'], w: 'Tô',
    i: [['farine-mais', 500], ['sel', 3]],
    e: [
      ['Délaye un tiers de la farine dans 1 l d’eau, porte à ébullition.', 'une bouillie épaisse se forme.', 5],
      ['Ajoute le reste de farine petit à petit en écrasant contre la paroi.', 'la pâte est ferme et se détache de la marmite.', 10],
      ['Forme des boules ou des galettes.', 'la surface est lisse.'],
    ],
  },
  {
    s: 'poulet-braise', t: 'Poulet braisé', o: CI, f: ['Viandes, poissons et fruits de mer', 'Cuisine de rue et repas à emporter'], n: 'd', a: 20, tt: 160, p: 4,
    m: ['Grill ou four'], w: 'Poulet braisé',
    i: [['poulet', 1200], ['ail', 15], ['gingembre', 20], ['oignon', 80], ['moutarde', 30], ['piment', 10], ['huile-vegetale', 40], ['citron-vert', 1], ['sel', 10]],
    e: [
      ['Mixe ail, gingembre, oignon, piment, moutarde, huile et sel.', 'la marinade est une pâte homogène.'],
      ['Badigeonne le poulet et laisse mariner au frais.', 'la marinade couvre tous les morceaux.', 120],
      ['Fais griller en retournant souvent.', 'la peau est bien dorée et le jus qui sort est clair, sans rose.', 35],
    ],
  },
  {
    s: 'choukouya', t: 'Choukouya de mouton', o: CI, f: ['Viandes, poissons et fruits de mer', 'Cuisine de rue et repas à emporter'], n: 'd', a: 25, tt: 60, p: 4,
    m: ['Grill', 'Papier aluminium'], al: ['dibi'], w: 'Choukouya',
    i: [['agneau', 1000], ['oignon', 200], ['tomate', 150], ['piment-poudre', 3], ['bouillon', 1], ['moutarde', 20], ['sel', 8]],
    e: [
      ['Coupe la viande en petits morceaux et assaisonne.', 'chaque morceau est enrobé d’épices.'],
      ['Fais griller sur feu vif.', 'les bords sont bien grillés.', 20],
      ['Mélange avec oignons et tomates émincés, enferme en papillote quelques minutes.', 'les oignons ont légèrement fondu.', 10],
    ],
  },
  {
    s: 'claclo', t: 'Claclo', o: CI, f: ['Cuisine de rue et repas à emporter', 'Biscuits et petites douceurs'], n: 'd', a: 20, tt: 25, p: 4,
    m: ['Marmite pour friture'], al: ['beignets de banane'], w: 'Claclo',
    i: [['banane-plantain', 3, 'très mûres'], ['farine', 80], ['oignon', 30], ['?piment', 3], ['huile-vegetale!', 500, 'pour la friture'], ['sel', 2]],
    e: [
      ['Écrase les bananes très mûres en purée.', 'il reste quelques petits morceaux.'],
      ['Ajoute farine, oignon haché, piment et sel.', 'la pâte tient sur une cuillère.'],
      ['Fais frire des petites cuillerées.', 'les beignets sont bien bruns.', 5],
    ],
  },
  {
    s: 'gbofloto', t: 'Gbofloto', o: CI, f: ['Biscuits et petites douceurs', 'Cuisine de rue et repas à emporter'], n: 'd', a: 25, tt: 115, p: 30, pc: true,
    m: ['Saladier', 'Marmite pour friture'], al: ['beignets', 'puff-puff'], w: 'Puff-puff',
    i: [['farine', 500], ['sucre', 100], ['levure-boulangere', 8], ['huile-vegetale!', 800, 'pour la friture'], ['sel', 3]],
    e: [
      ['Mélange farine, sucre, sel et levure avec 40 cl d’eau tiède.', 'la pâte est collante et lisse.'],
      ['Laisse lever au chaud, couvert.', 'la pâte a doublé de volume et fait des bulles.', 90],
      ['Forme des boules avec la main et fais frire.', 'les beignets sont dorés et se retournent seuls.', 5],
    ],
  },
  {
    s: 'degue', t: 'Dêguê', o: CI, f: ['Desserts'], n: 'd', a: 15, tt: 15, p: 4,
    m: ['Saladier'], w: 'Dégué',
    i: [['mil', 200, 'précuit'], ['yaourt', 500], ['lait-concentre', 100], ['?vanille', 8]],
    e: [
      ['Réhydrate le mil précuit avec un peu d’eau tiède.', 'les grains ont gonflé.', 10],
      ['Mélange yaourt et lait concentré.', 'le mélange est lisse.'],
      ['Ajoute le mil et sers bien frais.', 'les grains sont bien répartis.'],
    ],
  },
  {
    s: 'jus-gingembre', t: 'Jus de gingembre (gnamankoudji)', o: CI, f: ['Boissons'], n: 'd', a: 15, tt: 75, p: 6,
    m: ['Mixeur', 'Passoire fine'], al: ['gnamankoudji'],
    i: [['gingembre', 250], ['citron-vert', 2], ['sucre', 200], ['?ananas', 1]],
    e: [
      ['Épluche et mixe le gingembre avec 1 l d’eau.', 'il n’y a plus de gros morceaux.'],
      ['Filtre en pressant bien.', 'le jus est trouble mais sans fibres.'],
      ['Ajoute 50 cl d’eau, sucre et jus de citron, mets au frais.', 'le sucre est dissous.', 60],
    ],
  },
  {
    s: 'bissap', t: 'Jus de bissap', o: 'Afrique de l’Ouest', f: ['Boissons'], n: 'd', a: 10, tt: 70, p: 6,
    m: ['Casserole', 'Passoire'], al: ['jus d’hibiscus', 'karkadé'], w: 'Bissap',
    i: [['bissap', 80], ['sucre', 200], ['?menthe', 10], ['?vanille', 8]],
    e: [
      ['Rince les fleurs puis fais-les bouillir dans 1,5 l d’eau.', 'l’eau est rouge foncé.', 10],
      ['Ajoute menthe et laisse infuser hors du feu.', 'l’infusion a refroidi.', 30],
      ['Filtre, sucre et mets au frais.', 'le sucre est dissous.', 30],
    ],
  },
  {
    s: 'abolo', t: 'Abolo', o: 'Côte d’Ivoire, Togo, Bénin', f: ['Boulangerie', 'Accompagnements'], n: 'i', a: 20, tt: 160, p: 12, pc: true,
    m: ['Cuit-vapeur', 'Moules individuels'], w: 'Abolo',
    i: [['farine-mais', 300, 'fine'], ['farine', 100], ['sucre', 40], ['levure-boulangere', 6], ['sel', 3]],
    e: [
      ['Mélange les farines avec 50 cl d’eau tiède, sucre, sel et levure.', 'la pâte est épaisse et lisse.'],
      ['Laisse fermenter couvert.', 'la pâte est bombée et pleine de bulles.', 120],
      ['Remplis les moules et cuis à la vapeur.', 'une lame plantée ressort sèche.', 25],
    ],
  },
  {
    s: 'poisson-frit-attieke', t: 'Poisson frit sauce tomate', o: CI, f: ['Viandes, poissons et fruits de mer'], n: 'd', a: 25, tt: 35, p: 4,
    m: ['Poêle profonde'],
    i: [['poisson', 1000], ['farine', 50], ['huile-vegetale!', 500], ['tomate', 300], ['oignon', 100], ['piment', 10], ['sel', 8]],
    e: [
      ['Sale le poisson et roule-le dans la farine.', 'une fine couche de farine couvre le poisson.'],
      ['Fais frire des deux côtés.', 'la peau est dorée et croustillante.', 10],
      ['Fais une sauce avec tomate, oignon et piment revenus dans 2 c. à soupe d’huile.', 'la sauce a réduit de moitié.', 10],
    ],
  },
  {
    s: 'riz-sauce-aubergine', t: 'Sauce aubergine', o: CI, f: ['Plats au four et mijotés'], n: 'd', a: 20, tt: 60, p: 4,
    m: ['Marmite'],
    i: [['gnangnan', 400], ['aubergine', 200], ['boeuf', 400], ['tomate', 200], ['oignon', 100], ['huile-palme', 40], ['piment', 10], ['sel', 8]],
    e: [
      ['Fais cuire la viande dans 1 l d’eau salée avec l’oignon.', 'l’écume est retirée.', 20],
      ['Ajoute aubergines et tomates entières.', 'les aubergines sont fondantes.', 20],
      ['Écrase les légumes et ajoute l’huile de palme, laisse réduire.', 'la sauce nappe la cuillère.', 15],
    ],
  },
];
