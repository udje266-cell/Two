import type { RecetteCompacte } from './compact';

export const maghrebOrient: RecetteCompacte[] = [
  {
    s: 'couscous-legumes', t: 'Couscous aux légumes et à l’agneau', o: 'Algérie, Maroc, Tunisie, Mauritanie', f: ['Riz et autres céréales', 'Plats au four et mijotés'], n: 'i', a: 45, tt: 120, p: 6,
    m: ['Couscoussier'], w: 'Couscous',
    i: [['semoule', 500], ['agneau', 800], ['carotte', 300], ['navet', 200], ['courgette', 300], ['pois-chiches', 250, 'cuits'], ['oignon', 150], ['tomate', 200], ['ras-el-hanout', 6], ['beurre', 40], ['huile-olive', 30], ['sel', 12]],
    e: [
      ['Fais revenir l’agneau et l’oignon dans l’huile avec les épices.', 'la viande est colorée.', 10],
      ['Ajoute tomates, 2 l d’eau, carottes et navets, laisse mijoter.', 'la viande commence à être tendre.', 45],
      ['Arrose la semoule d’eau salée, égraine et cuis à la vapeur au-dessus du bouillon.', 'la vapeur traverse la semoule.', 15],
      ['Ajoute courgettes et pois chiches au bouillon.', 'les courgettes sont tendres.', 15],
      ['Égraine la semoule avec le beurre.', 'les grains sont légers et séparés.'],
    ],
  },
  {
    s: 'tajine-poulet-citron', t: 'Tajine de poulet au citron et aux olives', o: 'Maroc', f: ['Plats au four et mijotés'], n: 'd', a: 25, tt: 80, p: 4,
    m: ['Tajine ou cocotte'], w: 'Tajine',
    i: [['poulet', 1200], ['oignon', 200], ['ail', 10], ['citron', 1, 'confit ou frais'], ['gingembre-poudre', 3], ['curcuma', 3], ['safran', 0.1], ['coriandre', 15], ['huile-olive', 40], ['sel', 8]],
    e: [
      ['Frotte le poulet d’épices, ail et huile.', 'les morceaux sont jaunes et parfumés.'],
      ['Fais fondre l’oignon dans le tajine, pose le poulet.', 'l’oignon est translucide.', 10],
      ['Ajoute 20 cl d’eau, couvre et mijote.', 'le poulet est tendre.', 45],
      ['Ajoute citron et coriandre, laisse réduire.', 'la sauce est onctueuse.', 10],
    ],
  },
  {
    s: 'harira', t: 'Harira', o: 'Maroc', f: ['Soupes et bouillons'], n: 'd', a: 25, tt: 90, p: 6,
    m: ['Marmite'], w: 'Harira',
    i: [['agneau', 300], ['lentilles', 100], ['pois-chiches', 200, 'cuits'], ['tomate', 500], ['oignon', 100], ['celeri', 50], ['coriandre', 20], ['persil', 20], ['farine', 40], ['gingembre-poudre', 3], ['cannelle', 2], ['sel', 10]],
    e: [
      ['Fais revenir viande en petits dés, oignon et céleri.', 'la viande a pris couleur.', 10],
      ['Ajoute tomates mixées, épices, lentilles et 2 l d’eau.', 'la soupe frémit.', 45],
      ['Ajoute pois chiches et herbes.', 'les lentilles sont tendres.', 15],
      ['Délaye la farine dans un peu d’eau, verse en remuant.', 'la soupe est veloutée.', 5],
    ],
  },
  {
    s: 'chorba-frik', t: 'Chorba frik', o: 'Algérie', f: ['Soupes et bouillons'], n: 'd', a: 20, tt: 70, p: 6,
    m: ['Marmite'], w: 'Chorba',
    i: [['agneau', 400], ['semoule', 120, 'blé vert concassé (frik)'], ['tomate', 300], ['concentre-tomate', 30], ['oignon', 100], ['pois-chiches', 150, 'cuits'], ['coriandre', 20], ['menthe', 5], ['paprika', 3], ['cannelle', 1], ['huile-olive', 30], ['sel', 10]],
    e: [
      ['Fais revenir viande, oignon et épices dans l’huile.', 'la viande est colorée.', 10],
      ['Ajoute tomates, concentré et 2 l d’eau.', 'la soupe frémit.', 30],
      ['Ajoute le frik et les pois chiches, cuis en remuant.', 'le frik est tendre.', 25],
      ['Parsème de coriandre et menthe.', 'les herbes viennent d’être ajoutées.'],
    ],
  },
  {
    s: 'chakchouka', t: 'Chakchouka', o: 'Tunisie, Algérie', f: ['Petits-déjeuners et brunchs', 'Légumes et légumineuses'], n: 'd', a: 15, tt: 35, p: 2,
    m: ['Poêle avec couvercle'], al: ['shakshuka'], w: 'Chakchouka',
    i: [['poivron', 300], ['tomate', 400], ['oignon', 100], ['ail', 10], ['oeuf', 4], ['harissa', 10], ['cumin', 2], ['huile-olive', 30], ['sel', 4]],
    e: [
      ['Fais fondre oignon et poivrons dans l’huile.', 'les poivrons sont tendres.', 10],
      ['Ajoute ail, tomates, harissa et cumin, laisse compoter.', 'la sauce est épaisse.', 10],
      ['Creuse des puits et casse-y les œufs, couvre.', 'les blancs sont pris, les jaunes encore coulants.', 6],
    ],
  },
  {
    s: 'brick-oeuf', t: 'Brick à l’œuf', o: 'Tunisie', f: ['Apéritifs et entrées', 'Cuisine de rue et repas à emporter'], n: 'i', a: 15, tt: 15, p: 4, pc: true,
    m: ['Poêle'], w: 'Brick (cuisine)',
    i: [['feuilles-brick', 4], ['oeuf', 4], ['thon-boite', 120], ['persil', 10], ['?harissa', 5], ['huile-vegetale!', 300], ['sel', 2]],
    e: [
      ['Pose un peu de thon et de persil au centre d’une feuille, casse un œuf dessus.', 'le jaune est entier.'],
      ['Plie en triangle et fais glisser dans l’huile chaude.', 'la feuille est dorée des deux côtés.', 2],
    ],
  },
  {
    s: 'lablabi', t: 'Lablabi', o: 'Tunisie', f: ['Soupes et bouillons'], n: 'd', a: 10, tt: 30, p: 4,
    m: ['Casserole'], w: 'Lablabi',
    i: [['pois-chiches', 500, 'cuits'], ['ail', 15], ['cumin', 4], ['harissa', 20], ['pain', 150, 'rassis'], ['huile-olive', 40], ['citron', 1], ['?oeuf', 4], ['sel', 6]],
    e: [
      ['Fais chauffer pois chiches, ail et cumin dans 1,2 l d’eau.', 'le bouillon est parfumé.', 15],
      ['Mets le pain en morceaux au fond des bols.', 'le pain couvre le fond.'],
      ['Verse le bouillon, ajoute harissa, huile, citron et éventuellement un œuf poché.', 'le pain est imbibé.'],
    ],
  },
  {
    s: 'pastilla-poulet', t: 'Pastilla au poulet', o: 'Maroc', f: ['Plats au four et mijotés'], n: 'a', a: 60, tt: 120, p: 6,
    m: ['Moule rond', 'Four'], w: 'Pastilla',
    i: [['poulet', 1000], ['oignon', 400], ['oeuf', 4], ['amande', 150], ['sucre', 40], ['cannelle', 6], ['gingembre-poudre', 3], ['safran', 0.1], ['feuilles-brick', 10], ['beurre', 100], ['persil', 20], ['sel', 8]],
    e: [
      ['Fais mijoter le poulet avec oignons, épices et 30 cl d’eau.', 'la viande se détache.', 45],
      ['Effiloche le poulet, fais réduire la sauce et ajoute les œufs battus.', 'la sauce est crémeuse.', 5],
      ['Monte la pastilla : feuilles beurrées, poulet, amandes sucrées à la cannelle, feuilles.', 'les bords sont repliés.'],
      ['Cuis au four à 180 °C.', 'le dessus est doré et croustillant.', 25],
    ],
  },
  {
    s: 'kefta-tajine', t: 'Tajine de kefta aux œufs', o: 'Maroc', f: ['Plats au four et mijotés'], n: 'd', a: 25, tt: 45, p: 4,
    m: ['Tajine ou sauteuse'], w: 'Kefta',
    i: [['viande-hachee', 600], ['oignon', 100], ['persil', 20], ['cumin', 3], ['paprika', 3], ['tomate', 500], ['ail', 10], ['oeuf', 4], ['huile-olive', 30], ['sel', 8]],
    e: [
      ['Mélange viande, oignon râpé, persil, épices et sel, forme des boulettes.', 'les boulettes ont la taille d’une noix.'],
      ['Fais une sauce avec tomates, ail et huile.', 'la sauce a épaissi.', 10],
      ['Dépose les boulettes et laisse cuire.', 'les boulettes ne sont plus roses à cœur.', 15],
      ['Casse les œufs dessus et couvre.', 'les blancs sont pris.', 5],
    ],
  },
  {
    s: 'mechoui-four', t: 'Épaule d’agneau façon méchoui', o: 'Algérie, Maroc', f: ['Viandes, poissons et fruits de mer'], n: 'i', a: 20, tt: 260, p: 6,
    m: ['Four', 'Plat à rôtir'], w: 'Méchoui',
    i: [['agneau', 2000], ['beurre', 80], ['cumin', 10], ['ail', 20], ['paprika', 5], ['sel', 15]],
    e: [
      ['Masse l’épaule avec beurre, ail, cumin, paprika et sel.', 'toute la surface est couverte.'],
      ['Cuis au four à 160 °C en arrosant régulièrement.', 'la viande se détache à la fourchette.', 240],
    ],
  },
  {
    s: 'houmous', t: 'Houmous', o: 'Levant', f: ['Apéritifs et entrées', 'Sauces et assaisonnements'], n: 'd', a: 10, tt: 10, p: 4,
    m: ['Mixeur'], al: ['hummus'], w: 'Houmous',
    i: [['pois-chiches', 400, 'cuits'], ['sesame', 60, 'en pâte (tahini)'], ['citron', 1], ['ail', 5], ['huile-olive', 30], ['cumin', 1], ['sel', 4]],
    e: [
      ['Mixe tous les ingrédients avec 4 c. à soupe d’eau froide.', 'la purée est lisse et légère.'],
      ['Verse dans un plat, creuse un sillon et arrose d’huile.', 'l’huile brille dans le sillon.'],
    ],
  },
  {
    s: 'falafels', t: 'Falafels', o: 'Égypte, Levant', f: ['Cuisine de rue et repas à emporter', 'Légumes et légumineuses'], n: 'i', a: 30, tt: 750, p: 20, pc: true,
    m: ['Mixeur', 'Marmite pour friture'], w: 'Falafel',
    i: [['pois-chiches', 250, 'secs, trempés 12 h'], ['oignon', 80], ['ail', 10], ['persil', 30], ['coriandre', 30], ['cumin', 4], ['levure-chimique', 3], ['huile-vegetale!', 600], ['sel', 5]],
    e: [
      ['Fais tremper les pois chiches une nuit (ne pas les cuire).', 'ils ont doublé de volume.', 720],
      ['Mixe avec herbes, oignon, ail, épices et sel.', 'le mélange ressemble à une semoule humide qui se tient.'],
      ['Ajoute la levure, forme des boulettes et fais frire.', 'elles sont brun doré.', 4],
    ],
  },
  {
    s: 'taboule', t: 'Taboulé libanais', o: 'Liban', f: ['Apéritifs et entrées'], n: 'd', a: 25, tt: 25, p: 4,
    m: ['Couteau bien aiguisé'], w: 'Taboulé',
    i: [['persil', 150], ['menthe', 20], ['tomate', 300], ['oignon-vert', 40], ['semoule', 40, 'boulgour fin'], ['citron', 2], ['huile-olive', 50], ['sel', 4]],
    e: [
      ['Rince le boulgour et laisse-le gonfler.', 'les grains sont tendres.', 10],
      ['Cisèle finement persil et menthe, coupe les tomates en petits dés.', 'les herbes sont très finement hachées.'],
      ['Mélange tout avec citron, huile et sel.', 'le taboulé est surtout vert.'],
    ],
  },
  {
    s: 'shawarma-poulet', t: 'Shawarma de poulet', o: 'Levant', f: ['Cuisine de rue et repas à emporter'], n: 'd', a: 25, tt: 145, p: 4,
    m: ['Poêle ou four'], w: 'Chawarma',
    i: [['blanc-poulet', 700], ['yaourt', 100], ['ail', 15], ['cumin', 4], ['paprika', 4], ['curcuma', 2], ['citron', 1], ['tortilla', 4], ['laitue', 100], ['tomate', 150], ['sel', 6]],
    e: [
      ['Fais mariner le poulet émincé dans yaourt, ail, épices et citron.', 'tout le poulet est enrobé.', 120],
      ['Saisis-le à feu vif.', 'les bords sont grillés et le cœur n’est plus rose.', 10],
      ['Garnis les galettes de poulet et crudités, roule.', 'le rouleau est bien serré.'],
    ],
  },
  {
    s: 'mujaddara', t: 'Mujaddara', o: 'Liban, Syrie, Palestine', f: ['Riz et autres céréales', 'Légumes et légumineuses'], n: 'd', a: 20, tt: 60, p: 4,
    m: ['Casserole', 'Poêle'], w: 'Mujaddara',
    i: [['lentilles', 250], ['riz-local', 200], ['oignon', 500], ['huile-olive', 80], ['cumin', 4], ['sel', 8]],
    e: [
      ['Fais cuire les lentilles à moitié.', 'elles sont encore fermes.', 15],
      ['Ajoute riz, cumin, sel et eau à hauteur, couvre.', 'riz et lentilles sont tendres.', 20],
      ['Fais frire les oignons émincés dans l’huile.', 'ils sont brun foncé et croustillants.', 20],
    ],
  },
  {
    s: 'koshari', t: 'Koshari', o: 'Égypte', f: ['Riz et autres céréales', 'Cuisine de rue et repas à emporter'], n: 'i', a: 40, tt: 60, p: 6,
    m: ['Plusieurs casseroles'], w: 'Koshari',
    i: [['riz-local', 300], ['lentilles', 200], ['pates', 200], ['pois-chiches', 200, 'cuits'], ['oignon', 400], ['tomate-pelee', 600], ['ail', 15], ['vinaigre', 30], ['cumin', 4], ['huile-vegetale', 100], ['sel', 10]],
    e: [
      ['Cuis séparément lentilles, riz et pâtes.', 'chacun est juste tendre.', 25],
      ['Fais frire les oignons émincés.', 'ils sont croustillants.', 15],
      ['Fais une sauce tomate à l’ail, au cumin et au vinaigre.', 'elle a réduit de moitié.', 15],
      ['Superpose riz, lentilles, pâtes, pois chiches, sauce et oignons.', 'les oignons couronnent l’assiette.'],
    ],
  },
  {
    s: 'kebab-adana', t: 'Brochettes de kefta (adana)', o: 'Turquie', f: ['Viandes, poissons et fruits de mer'], n: 'd', a: 20, tt: 50, p: 4,
    m: ['Grill', 'Brochettes plates'], w: 'Adana kebap',
    i: [['viande-hachee', 600, 'agneau de préférence'], ['oignon', 80], ['piment-poudre', 4], ['paprika', 4], ['persil', 15], ['sel', 6]],
    e: [
      ['Pétris longuement viande, oignon râpé égoutté, épices et sel.', 'la viande devient collante.', 10],
      ['Moule autour des brochettes et laisse raffermir au frais.', 'la viande tient sur la brochette.', 20],
      ['Grille en retournant.', 'l’extérieur est doré et le cœur n’est plus rose.', 10],
    ],
  },
];
