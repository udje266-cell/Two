-- Fichier généré par scripts/exporter-catalogue.ts : ne pas modifier à la main.
-- Catalogue de départ : recettes au statut « a_tester », à valider avant publication.
begin;

insert into public.ingredients (id, nom, alias, unite, rayon, allergenes) values
  ('oignon', 'Oignons', array[]::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('tomate', 'Tomates fraîches', array[]::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('ail', 'Ail', array[]::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('gingembre', 'Gingembre frais', array[]::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('piment', 'Piment frais', array[]::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('gombo', 'Gombo', array[]::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('aubergine', 'Aubergine', array[]::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('gnangnan', 'Aubergine africaine (gnangnan)', array['gnangnan', 'aubergine amère']::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('poivron', 'Poivron', array[]::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('carotte', 'Carottes', array[]::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('chou', 'Chou', array[]::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('pomme-de-terre', 'Pommes de terre', array[]::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('patate-douce', 'Patate douce', array[]::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('igname', 'Igname', array[]::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('manioc', 'Manioc frais', array['cassave']::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('banane-plantain', 'Banane plantain mûre', array['plantain', 'aloco']::text[], 'piece', 'Légumes et herbes', array[]::text[]),
  ('plantain-vert', 'Banane plantain verte', array[]::text[], 'piece', 'Légumes et herbes', array[]::text[]),
  ('taro', 'Taro', array[]::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('courgette', 'Courgette', array[]::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('haricot-vert', 'Haricots verts', array[]::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('epinards', 'Épinards ou feuilles vertes', array[]::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('feuilles-manioc', 'Feuilles de manioc pilées', array['pondu', 'saka-saka']::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('persil', 'Persil', array[]::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('coriandre', 'Coriandre fraîche', array[]::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('menthe', 'Menthe fraîche', array[]::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('basilic', 'Basilic frais', array[]::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('concombre', 'Concombre', array[]::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('laitue', 'Laitue', array[]::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('oignon-vert', 'Oignon vert', array['cive']::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('celeri', 'Céleri', array[]::text[], 'g', 'Légumes et herbes', array['céleri']::text[]),
  ('poireau', 'Poireau', array[]::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('champignon', 'Champignons', array[]::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('mais-epi', 'Épi de maïs', array[]::text[], 'piece', 'Légumes et herbes', array[]::text[]),
  ('chou-fleur', 'Chou-fleur', array[]::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('navet', 'Navet', array[]::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('petits-pois', 'Petits pois', array[]::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('citronnelle', 'Citronnelle', array[]::text[], 'g', 'Légumes et herbes', array[]::text[]),
  ('citron', 'Citron jaune', array[]::text[], 'piece', 'Fruits', array[]::text[]),
  ('citron-vert', 'Citron vert', array[]::text[], 'piece', 'Fruits', array[]::text[]),
  ('avocat', 'Avocat', array[]::text[], 'piece', 'Fruits', array[]::text[]),
  ('mangue', 'Mangue', array[]::text[], 'piece', 'Fruits', array[]::text[]),
  ('ananas', 'Ananas', array[]::text[], 'piece', 'Fruits', array[]::text[]),
  ('banane', 'Banane douce', array[]::text[], 'piece', 'Fruits', array[]::text[]),
  ('pomme', 'Pomme', array[]::text[], 'piece', 'Fruits', array[]::text[]),
  ('fraise', 'Fraises', array[]::text[], 'g', 'Fruits', array[]::text[]),
  ('noix-coco', 'Noix de coco', array[]::text[], 'piece', 'Fruits', array[]::text[]),
  ('orange', 'Orange', array[]::text[], 'piece', 'Fruits', array[]::text[]),
  ('dattes', 'Dattes', array[]::text[], 'g', 'Fruits', array[]::text[]),
  ('raisins-secs', 'Raisins secs', array[]::text[], 'g', 'Fruits', array[]::text[]),
  ('fruits-rouges', 'Fruits rouges', array[]::text[], 'g', 'Fruits', array[]::text[]),
  ('poulet', 'Poulet en morceaux', array[]::text[], 'g', 'Viandes et poissons', array[]::text[]),
  ('blanc-poulet', 'Blanc de poulet', array[]::text[], 'g', 'Viandes et poissons', array[]::text[]),
  ('boeuf', 'Bœuf', array[]::text[], 'g', 'Viandes et poissons', array[]::text[]),
  ('agneau', 'Agneau', array['mouton']::text[], 'g', 'Viandes et poissons', array[]::text[]),
  ('porc', 'Porc', array[]::text[], 'g', 'Viandes et poissons', array[]::text[]),
  ('viande-hachee', 'Viande hachée', array[]::text[], 'g', 'Viandes et poissons', array[]::text[]),
  ('poisson', 'Poisson entier', array[]::text[], 'g', 'Viandes et poissons', array['poisson']::text[]),
  ('filet-poisson', 'Filet de poisson blanc', array[]::text[], 'g', 'Viandes et poissons', array['poisson']::text[]),
  ('poisson-fume', 'Poisson fumé', array[]::text[], 'g', 'Viandes et poissons', array['poisson']::text[]),
  ('saumon', 'Saumon', array[]::text[], 'g', 'Viandes et poissons', array['poisson']::text[]),
  ('crevette', 'Crevettes', array[]::text[], 'g', 'Viandes et poissons', array['crustacés']::text[]),
  ('thon-boite', 'Thon en boîte', array[]::text[], 'g', 'Viandes et poissons', array['poisson']::text[]),
  ('lardons', 'Lardons', array[]::text[], 'g', 'Viandes et poissons', array[]::text[]),
  ('jambon', 'Jambon', array[]::text[], 'g', 'Viandes et poissons', array[]::text[]),
  ('merguez', 'Merguez', array[]::text[], 'g', 'Viandes et poissons', array[]::text[]),
  ('oeuf', 'Œuf', array[]::text[], 'piece', 'Frais', array['œufs']::text[]),
  ('lait', 'Lait', array[]::text[], 'ml', 'Frais', array['lait']::text[]),
  ('beurre', 'Beurre', array[]::text[], 'g', 'Frais', array['lait']::text[]),
  ('creme', 'Crème fraîche', array[]::text[], 'ml', 'Frais', array['lait']::text[]),
  ('fromage', 'Fromage râpé', array[]::text[], 'g', 'Frais', array['lait']::text[]),
  ('yaourt', 'Yaourt nature', array[]::text[], 'g', 'Frais', array['lait']::text[]),
  ('mozzarella', 'Mozzarella', array[]::text[], 'g', 'Frais', array['lait']::text[]),
  ('parmesan', 'Parmesan', array[]::text[], 'g', 'Frais', array['lait']::text[]),
  ('feta', 'Feta', array[]::text[], 'g', 'Frais', array['lait']::text[]),
  ('lait-coco', 'Lait de coco', array[]::text[], 'ml', 'Frais', array[]::text[]),
  ('lait-concentre', 'Lait concentré sucré', array[]::text[], 'g', 'Frais', array['lait']::text[]),
  ('tofu', 'Tofu', array[]::text[], 'g', 'Frais', array['soja']::text[]),
  ('riz-local', 'Riz local blanchi', array['riz']::text[], 'g', 'Céréales et épicerie', array[]::text[]),
  ('riz-arborio', 'Riz rond (arborio)', array[]::text[], 'g', 'Céréales et épicerie', array[]::text[]),
  ('attieke', 'Attiéké', array['attieke', 'semoule de manioc']::text[], 'g', 'Céréales et épicerie', array[]::text[]),
  ('farine', 'Farine de blé', array[]::text[], 'g', 'Céréales et épicerie', array['gluten']::text[]),
  ('farine-mais', 'Farine de maïs', array[]::text[], 'g', 'Céréales et épicerie', array[]::text[]),
  ('farine-manioc', 'Farine ou pâte de manioc fermentée', array['placali']::text[], 'g', 'Céréales et épicerie', array[]::text[]),
  ('semoule', 'Semoule de blé (couscous)', array[]::text[], 'g', 'Céréales et épicerie', array['gluten']::text[]),
  ('pates', 'Pâtes sèches', array[]::text[], 'g', 'Céréales et épicerie', array['gluten']::text[]),
  ('nouilles-riz', 'Nouilles de riz', array[]::text[], 'g', 'Céréales et épicerie', array[]::text[]),
  ('nouilles-ble', 'Nouilles de blé', array[]::text[], 'g', 'Céréales et épicerie', array['gluten']::text[]),
  ('lentilles', 'Lentilles', array[]::text[], 'g', 'Céréales et épicerie', array[]::text[]),
  ('pois-chiches', 'Pois chiches', array[]::text[], 'g', 'Céréales et épicerie', array[]::text[]),
  ('haricots-rouges', 'Haricots rouges', array[]::text[], 'g', 'Céréales et épicerie', array[]::text[]),
  ('niebe', 'Haricots niébé', array['haricot cornille']::text[], 'g', 'Céréales et épicerie', array[]::text[]),
  ('pate-arachide', 'Pâte d’arachide', array['beurre de cacahuète']::text[], 'g', 'Céréales et épicerie', array['arachides']::text[]),
  ('arachide', 'Arachides grillées', array['cacahuètes']::text[], 'g', 'Céréales et épicerie', array['arachides']::text[]),
  ('graine-palme', 'Crème de noix de palme', array['sauce graine', 'jus de graine']::text[], 'g', 'Céréales et épicerie', array[]::text[]),
  ('huile-vegetale', 'Huile végétale', array['huile']::text[], 'ml', 'Céréales et épicerie', array[]::text[]),
  ('huile-olive', 'Huile d’olive', array[]::text[], 'ml', 'Céréales et épicerie', array[]::text[]),
  ('huile-palme', 'Huile de palme rouge', array[]::text[], 'ml', 'Céréales et épicerie', array[]::text[]),
  ('sucre', 'Sucre', array[]::text[], 'g', 'Céréales et épicerie', array[]::text[]),
  ('levure-boulangere', 'Levure de boulanger', array[]::text[], 'g', 'Céréales et épicerie', array[]::text[]),
  ('levure-chimique', 'Levure chimique', array[]::text[], 'g', 'Céréales et épicerie', array[]::text[]),
  ('chocolat', 'Chocolat noir', array[]::text[], 'g', 'Céréales et épicerie', array['lait', 'soja']::text[]),
  ('cacao', 'Cacao en poudre', array[]::text[], 'g', 'Céréales et épicerie', array[]::text[]),
  ('mil', 'Mil', array[]::text[], 'g', 'Céréales et épicerie', array[]::text[]),
  ('fonio', 'Fonio', array[]::text[], 'g', 'Céréales et épicerie', array[]::text[]),
  ('chapelure', 'Chapelure', array[]::text[], 'g', 'Céréales et épicerie', array['gluten']::text[]),
  ('tortilla', 'Galette de blé (tortilla)', array[]::text[], 'piece', 'Céréales et épicerie', array['gluten']::text[]),
  ('pain', 'Pain', array[]::text[], 'g', 'Céréales et épicerie', array['gluten']::text[]),
  ('amande', 'Amandes en poudre', array[]::text[], 'g', 'Céréales et épicerie', array['fruits à coque']::text[]),
  ('miel', 'Miel', array[]::text[], 'g', 'Céréales et épicerie', array[]::text[]),
  ('vanille', 'Sucre vanillé', array[]::text[], 'g', 'Céréales et épicerie', array[]::text[]),
  ('pate-feuilletee', 'Pâte feuilletée', array[]::text[], 'g', 'Céréales et épicerie', array['gluten', 'lait']::text[]),
  ('sauce-soja', 'Sauce soja', array[]::text[], 'ml', 'Céréales et épicerie', array['soja', 'gluten']::text[]),
  ('vinaigre', 'Vinaigre', array[]::text[], 'ml', 'Céréales et épicerie', array[]::text[]),
  ('moutarde', 'Moutarde', array[]::text[], 'g', 'Céréales et épicerie', array['moutarde']::text[]),
  ('concentre-tomate', 'Concentré de tomate', array[]::text[], 'g', 'Céréales et épicerie', array[]::text[]),
  ('tomate-pelee', 'Tomates pelées en boîte', array[]::text[], 'g', 'Céréales et épicerie', array[]::text[]),
  ('bouillon', 'Cube de bouillon', array[]::text[], 'piece', 'Céréales et épicerie', array[]::text[]),
  ('sesame', 'Graines de sésame', array[]::text[], 'g', 'Céréales et épicerie', array['sésame']::text[]),
  ('pistache', 'Pistaches', array[]::text[], 'g', 'Céréales et épicerie', array['fruits à coque']::text[]),
  ('maizena', 'Fécule de maïs', array[]::text[], 'g', 'Céréales et épicerie', array[]::text[]),
  ('fleur-oranger', 'Eau de fleur d’oranger', array[]::text[], 'ml', 'Céréales et épicerie', array[]::text[]),
  ('feuilles-brick', 'Feuilles de brick', array[]::text[], 'piece', 'Céréales et épicerie', array['gluten']::text[]),
  ('bissap', 'Fleurs d’hibiscus séchées (bissap)', array['oseille de Guinée', 'karkadé']::text[], 'g', 'Céréales et épicerie', array[]::text[]),
  ('the', 'Thé vert', array[]::text[], 'g', 'Céréales et épicerie', array[]::text[]),
  ('nuoc-mam', 'Sauce de poisson', array[]::text[], 'ml', 'Céréales et épicerie', array['poisson']::text[]),
  ('pate-curry', 'Pâte de curry', array[]::text[], 'g', 'Céréales et épicerie', array[]::text[]),
  ('pain-mie', 'Pain de mie', array[]::text[], 'g', 'Céréales et épicerie', array['gluten', 'lait']::text[]),
  ('sel', 'Sel', array[]::text[], 'g', 'Épices et condiments', array[]::text[]),
  ('poivre', 'Poivre', array[]::text[], 'g', 'Épices et condiments', array[]::text[]),
  ('cumin', 'Cumin', array[]::text[], 'g', 'Épices et condiments', array[]::text[]),
  ('curcuma', 'Curcuma', array[]::text[], 'g', 'Épices et condiments', array[]::text[]),
  ('paprika', 'Paprika', array[]::text[], 'g', 'Épices et condiments', array[]::text[]),
  ('cannelle', 'Cannelle', array[]::text[], 'g', 'Épices et condiments', array[]::text[]),
  ('ras-el-hanout', 'Ras el-hanout', array[]::text[], 'g', 'Épices et condiments', array[]::text[]),
  ('harissa', 'Harissa', array[]::text[], 'g', 'Épices et condiments', array[]::text[]),
  ('curry', 'Curry en poudre', array[]::text[], 'g', 'Épices et condiments', array[]::text[]),
  ('garam-masala', 'Garam masala', array[]::text[], 'g', 'Épices et condiments', array[]::text[]),
  ('clou-girofle', 'Clous de girofle', array[]::text[], 'g', 'Épices et condiments', array[]::text[]),
  ('laurier', 'Laurier', array[]::text[], 'g', 'Épices et condiments', array[]::text[]),
  ('thym', 'Thym', array[]::text[], 'g', 'Épices et condiments', array[]::text[]),
  ('origan', 'Origan', array[]::text[], 'g', 'Épices et condiments', array[]::text[]),
  ('soumbala', 'Soumbala', array['néré', 'netetou']::text[], 'g', 'Épices et condiments', array[]::text[]),
  ('muscade', 'Noix de muscade', array[]::text[], 'g', 'Épices et condiments', array[]::text[]),
  ('safran', 'Safran', array[]::text[], 'g', 'Épices et condiments', array[]::text[]),
  ('gingembre-poudre', 'Gingembre en poudre', array[]::text[], 'g', 'Épices et condiments', array[]::text[]),
  ('piment-poudre', 'Piment en poudre', array[]::text[], 'g', 'Épices et condiments', array[]::text[])
on conflict (id) do nothing;

insert into public.lieux (id, type, nom) values
  ('cote-d-ivoire', 'tradition', 'Côte d’Ivoire'),
  ('afrique-de-l-ouest', 'tradition', 'Afrique de l’Ouest'),
  ('cote-d-ivoire-togo-benin', 'tradition', 'Côte d’Ivoire, Togo, Bénin'),
  ('senegal', 'tradition', 'Sénégal'),
  ('mali-senegal', 'tradition', 'Mali, Sénégal'),
  ('nigeria-ghana', 'tradition', 'Nigeria, Ghana'),
  ('nigeria', 'tradition', 'Nigeria'),
  ('ghana', 'tradition', 'Ghana'),
  ('cameroun', 'tradition', 'Cameroun'),
  ('republique-democratique-du-congo', 'tradition', 'République démocratique du Congo'),
  ('ethiopie', 'tradition', 'Éthiopie'),
  ('afrique-du-sud', 'tradition', 'Afrique du Sud'),
  ('mali-guinee-burkina-faso', 'tradition', 'Mali, Guinée, Burkina Faso'),
  ('nigeria-benin-senegal', 'tradition', 'Nigeria, Bénin, Sénégal'),
  ('madagascar', 'tradition', 'Madagascar'),
  ('kenya-tanzanie', 'tradition', 'Kenya, Tanzanie'),
  ('algerie-maroc-tunisie-mauritanie', 'tradition', 'Algérie, Maroc, Tunisie, Mauritanie'),
  ('maroc', 'tradition', 'Maroc'),
  ('algerie', 'tradition', 'Algérie'),
  ('tunisie-algerie', 'tradition', 'Tunisie, Algérie'),
  ('tunisie', 'tradition', 'Tunisie'),
  ('algerie-maroc', 'tradition', 'Algérie, Maroc'),
  ('levant', 'tradition', 'Levant'),
  ('egypte-levant', 'tradition', 'Égypte, Levant'),
  ('liban', 'tradition', 'Liban'),
  ('liban-syrie-palestine', 'tradition', 'Liban, Syrie, Palestine'),
  ('egypte', 'tradition', 'Égypte'),
  ('turquie', 'tradition', 'Turquie'),
  ('france', 'tradition', 'France'),
  ('france-bretagne', 'tradition', 'France (Bretagne)'),
  ('france-lorraine', 'tradition', 'France (Lorraine)'),
  ('france-provence', 'tradition', 'France (Provence)'),
  ('france-bourgogne', 'tradition', 'France (Bourgogne)'),
  ('france-dauphine', 'tradition', 'France (Dauphiné)'),
  ('france-nice', 'tradition', 'France (Nice)'),
  ('italie', 'tradition', 'Italie'),
  ('italie-naples', 'tradition', 'Italie (Naples)'),
  ('espagne', 'tradition', 'Espagne'),
  ('grece', 'tradition', 'Grèce'),
  ('royaume-uni', 'tradition', 'Royaume-Uni'),
  ('pologne', 'tradition', 'Pologne'),
  ('chine', 'tradition', 'Chine'),
  ('inde', 'tradition', 'Inde'),
  ('inde-pakistan', 'tradition', 'Inde, Pakistan'),
  ('thailande', 'tradition', 'Thaïlande'),
  ('viet-nam', 'tradition', 'Viêt Nam'),
  ('japon', 'tradition', 'Japon'),
  ('coree-du-sud', 'tradition', 'Corée du Sud'),
  ('mexique', 'tradition', 'Mexique'),
  ('etats-unis-texas', 'tradition', 'États-Unis (Texas)'),
  ('etats-unis', 'tradition', 'États-Unis'),
  ('bresil', 'tradition', 'Brésil'),
  ('perou', 'tradition', 'Pérou'),
  ('antilles-guadeloupe-martinique', 'tradition', 'Antilles (Guadeloupe, Martinique)'),
  ('antilles', 'tradition', 'Antilles'),
  ('levant-grece', 'tradition', 'Levant, Grèce'),
  ('maroc-algerie', 'tradition', 'Maroc, Algérie'),
  ('france-limousin', 'tradition', 'France (Limousin)'),
  ('turquie-grece-levant', 'tradition', 'Turquie, Grèce, Levant'),
  ('afrique-de-l-ouest-antilles', 'tradition', 'Afrique de l’Ouest, Antilles'),
  ('monde', 'tradition', 'Monde')
on conflict (id) do nothing;

-- Riz gras au poulet
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('riz-gras-au-poulet', 'Riz gras au poulet', array['riz au gras']::text[], array['Riz et autres céréales', 'Plats au four et mijotés']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 40, 70, array['Marmite avec couvercle']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Riz_gras']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'cote-d-ivoire' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('riz-local', 1, 500::numeric, 'proportionnel', true, 'lavé'::text),
    ('poulet', 2, 800::numeric, 'proportionnel', true, null::text),
    ('tomate', 3, 300::numeric, 'proportionnel', true, null::text),
    ('oignon', 4, 200::numeric, 'proportionnel', true, 'émincés'::text),
    ('concentre-tomate', 5, 70::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 6, 100::numeric, 'proportionnel', true, null::text),
    ('piment', 7, 10::numeric, 'proportionnel', false, null::text),
    ('sel', 8, 8::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Coupe le poulet en morceaux et sale-le.', null::text, 'chaque morceau est enrobé de sel.', null::int),
  (2, 'Fais dorer le poulet dans l’huile chaude.', null::text, 'les morceaux sont dorés sur toutes les faces.', 480::int),
  (3, 'Ajoute les oignons et remue à feu moyen.', null::text, 'les oignons deviennent translucides : on voit presque à travers, ils ne sont pas encore bruns.', 300::int),
  (4, 'Ajoute tomates et concentré, laisse réduire.', null::text, 'la sauce épaissit et l’huile remonte sur les bords.', 600::int),
  (5, 'Verse le riz lavé et 1,5 fois son volume d’eau, couvre à feu doux.', null::text, 'l’eau a disparu et de petits trous se forment à la surface.', 1200::int),
  (6, 'Laisse reposer, puis égraine à la fourchette.', null::text, 'les grains sont tendres et se détachent.', 300::int)
) as x(ordre, action, dose, repere, minuteur);

-- Alloco et œuf
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('alloco-oeuf', 'Alloco et œuf', array['aloco', 'banane plantain frite']::text[], array['Tubercules et plantains', 'Cuisine de rue et repas à emporter']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 25, 25, array['Poêle profonde', 'Écumoire']::text[],
    2, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Aloko']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'cote-d-ivoire' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('banane-plantain', 1, 2::numeric, 'proportionnel', true, null::text),
    ('oeuf', 2, 2::numeric, 'proportionnel', false, null::text),
    ('huile-vegetale', 3, 500::numeric, 'fixe', true, 'pour la friture'::text),
    ('sel', 4, 3::numeric, 'proportionnel', true, null::text),
    ('piment', 5, 5::numeric, 'proportionnel', false, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Épluche les bananes et coupe-les en rondelles épaisses.', null::text, 'les rondelles font à peu près l’épaisseur d’un doigt.', null::int),
  (2, 'Fais chauffer l’huile.', null::text, 'un morceau de banane plongé dedans fait aussitôt de petites bulles.', 300::int),
  (3, 'Fais frire les rondelles par petites quantités.', null::text, 'elles sont dorées et caramélisées sur les bords.', 240::int),
  (4, 'Égoutte, sale, puis fais cuire les œufs au plat.', null::text, 'le blanc est pris, le jaune encore brillant.', 180::int)
) as x(ordre, action, dose, repere, minuteur);

-- Attiéké poisson braisé
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('attieke-poisson-braise', 'Attiéké poisson braisé', array['garba']::text[], array['Tubercules et plantains', 'Viandes, poissons et fruits de mer']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 30, 45, array['Grill ou poêle', 'Passoire']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Atti%C3%A9k%C3%A9']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'cote-d-ivoire' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('attieke', 1, 800::numeric, 'proportionnel', true, null::text),
    ('poisson', 2, 1000::numeric, 'proportionnel', true, null::text),
    ('tomate', 3, 200::numeric, 'proportionnel', true, null::text),
    ('oignon', 4, 100::numeric, 'proportionnel', true, null::text),
    ('piment', 5, 10::numeric, 'proportionnel', false, null::text),
    ('citron-vert', 6, 2::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 7, 40::numeric, 'proportionnel', true, null::text),
    ('sel', 8, 8::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Nettoie le poisson et fais 3 entailles de chaque côté.', null::text, 'les entailles vont jusqu’à l’arête.', null::int),
  (2, 'Frotte-le de sel, citron et un peu d’huile, puis fais-le griller.', null::text, 'la peau est dorée et la chair se détache de l’arête.', 1200::int),
  (3, 'Réchauffe l’attiéké à la vapeur.', null::text, 'les grains sont chauds et souples.', 600::int),
  (4, 'Coupe tomate, oignon et piment en petits dés et assaisonne.', null::text, 'tout est coupé en dés réguliers.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Garba
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('garba', 'Garba', array[]::text[], array['Cuisine de rue et repas à emporter']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 25, 30, array['Marmite pour friture']::text[],
    2, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Garba_(plat)']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'cote-d-ivoire' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('attieke', 1, 400::numeric, 'proportionnel', true, null::text),
    ('thon-boite', 2, 300::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 3, 400::numeric, 'fixe', true, 'pour la friture'::text),
    ('oignon', 4, 80::numeric, 'proportionnel', true, null::text),
    ('tomate', 5, 100::numeric, 'proportionnel', true, null::text),
    ('piment', 6, 10::numeric, 'proportionnel', true, null::text),
    ('sel', 7, 4::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Égoutte le poisson et sèche-le.', null::text, 'il n’y a plus de liquide.', null::int),
  (2, 'Fais frire le poisson en morceaux.', null::text, 'les morceaux sont bien dorés et croustillants.', 360::int),
  (3, 'Arrose l’attiéké réchauffé d’une cuillère d’huile de friture.', null::text, 'chaque grain est brillant.', null::int),
  (4, 'Sers avec oignon, tomate et piment hachés.', null::text, 'le piment est réparti selon ton goût.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Kédjénou de poulet
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('kedjenou-poulet', 'Kédjénou de poulet', array[]::text[], array['Plats au four et mijotés']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 20, 70, array['Canari ou cocotte à couvercle lourd']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/K%C3%A9dj%C3%A9nou']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'cote-d-ivoire' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('poulet', 1, 1200::numeric, 'proportionnel', true, null::text),
    ('tomate', 2, 300::numeric, 'proportionnel', true, null::text),
    ('oignon', 3, 150::numeric, 'proportionnel', true, null::text),
    ('gnangnan', 4, 150::numeric, 'proportionnel', true, null::text),
    ('gingembre', 5, 15::numeric, 'proportionnel', true, null::text),
    ('ail', 6, 10::numeric, 'proportionnel', true, null::text),
    ('piment', 7, 10::numeric, 'proportionnel', true, null::text),
    ('laurier', 8, 1::numeric, 'proportionnel', true, null::text),
    ('sel', 9, 10::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Mets tous les ingrédients coupés dans la cocotte, sans eau ni huile.', null::text, 'le poulet est bien entouré de légumes.', null::int),
  (2, 'Ferme hermétiquement et cuis à feu doux.', null::text, 'de la vapeur se forme sous le couvercle.', 1200::int),
  (3, 'Secoue la cocotte sans l’ouvrir, puis continue la cuisson.', null::text, 'le jus des légumes recouvre le fond.', 1800::int),
  (4, 'Vérifie la cuisson du poulet.', null::text, 'la chair se détache facilement de l’os.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Sauce graine
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('sauce-graine', 'Sauce graine', array['sauce palme', 'sauce de noix de palme']::text[], array['Plats au four et mijotés', 'Sauces et assaisonnements']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 30, 90, array['Grande marmite']::text[],
    6, 'personnes', 1, 12, array['https://fr.wikipedia.org/wiki/Sauce_graine']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'cote-d-ivoire' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('graine-palme', 1, 800::numeric, 'proportionnel', true, null::text),
    ('boeuf', 2, 600::numeric, 'proportionnel', true, null::text),
    ('poisson-fume', 3, 200::numeric, 'proportionnel', true, null::text),
    ('oignon', 4, 150::numeric, 'proportionnel', true, null::text),
    ('tomate', 5, 200::numeric, 'proportionnel', true, null::text),
    ('gnangnan', 6, 150::numeric, 'proportionnel', true, null::text),
    ('piment', 7, 10::numeric, 'proportionnel', true, null::text),
    ('bouillon', 8, 2::numeric, 'proportionnel', true, null::text),
    ('sel', 9, 10::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais cuire la viande dans 1 l d’eau avec l’oignon et le sel.', null::text, 'l’écume est retirée et le bouillon est clair.', 1500::int),
  (2, 'Ajoute la crème de graine délayée dans 1 l d’eau.', null::text, 'le mélange est homogène et orangé.', null::int),
  (3, 'Ajoute tomates, aubergines et piment entiers, laisse cuire.', null::text, 'les légumes sont tendres sous la fourchette.', 1200::int),
  (4, 'Écrase les légumes dans la sauce, ajoute le poisson fumé et laisse réduire.', null::text, 'l’huile rouge remonte en surface.', 1800::int)
) as x(ordre, action, dose, repere, minuteur);

-- Sauce arachide
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('sauce-arachide', 'Sauce arachide', array['mafé']::text[], array['Plats au four et mijotés', 'Sauces et assaisonnements']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 25, 75, array['Marmite']::text[],
    6, 'personnes', 1, 12, array['https://fr.wikipedia.org/wiki/Sauce_arachide']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'cote-d-ivoire' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('pate-arachide', 1, 250::numeric, 'proportionnel', true, null::text),
    ('poulet', 2, 1000::numeric, 'proportionnel', true, null::text),
    ('tomate', 3, 300::numeric, 'proportionnel', true, null::text),
    ('concentre-tomate', 4, 70::numeric, 'proportionnel', true, null::text),
    ('oignon', 5, 150::numeric, 'proportionnel', true, null::text),
    ('piment', 6, 10::numeric, 'proportionnel', true, null::text),
    ('bouillon', 7, 2::numeric, 'proportionnel', true, null::text),
    ('sel', 8, 8::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais revenir le poulet avec l’oignon dans un peu d’eau.', null::text, 'le poulet a changé de couleur.', 600::int),
  (2, 'Ajoute tomates mixées et concentré.', null::text, 'la sauce est rouge et frémit.', 600::int),
  (3, 'Délaye la pâte d’arachide dans un bol d’eau chaude, puis verse-la.', null::text, 'il ne reste aucun grumeau.', null::int),
  (4, 'Laisse mijoter en remuant de temps en temps.', null::text, 'une fine couche d’huile remonte à la surface.', 2400::int)
) as x(ordre, action, dose, repere, minuteur);

-- Sauce gombo
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('sauce-gombo', 'Sauce gombo', array[]::text[], array['Plats au four et mijotés', 'Sauces et assaisonnements']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 25, 60, array['Marmite']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Gombo']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'cote-d-ivoire' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('gombo', 1, 400::numeric, 'proportionnel', true, null::text),
    ('boeuf', 2, 500::numeric, 'proportionnel', true, null::text),
    ('poisson-fume', 3, 150::numeric, 'proportionnel', true, null::text),
    ('tomate', 4, 200::numeric, 'proportionnel', true, null::text),
    ('oignon', 5, 100::numeric, 'proportionnel', true, null::text),
    ('huile-palme', 6, 40::numeric, 'proportionnel', true, null::text),
    ('piment', 7, 10::numeric, 'proportionnel', true, null::text),
    ('bouillon', 8, 1::numeric, 'proportionnel', true, null::text),
    ('sel', 9, 8::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais cuire la viande dans 1 l d’eau salée.', null::text, 'la viande est presque tendre.', 1500::int),
  (2, 'Coupe le gombo en fines rondelles.', null::text, 'les rondelles font 3 à 4 mm.', null::int),
  (3, 'Ajoute tomate, oignon, piment et poisson fumé.', null::text, 'la sauce frémit.', 600::int),
  (4, 'Ajoute le gombo et l’huile de palme, remue sans arrêt quelques minutes.', null::text, 'la sauce devient légèrement filante.', 480::int)
) as x(ordre, action, dose, repere, minuteur);

-- Sauce claire au poisson
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('sauce-claire', 'Sauce claire au poisson', array['sauce légère']::text[], array['Soupes et bouillons']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 20, 45, array['Marmite']::text[],
    4, 'personnes', 1, 8, array[]::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'cote-d-ivoire' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('poisson', 1, 800::numeric, 'proportionnel', true, null::text),
    ('tomate', 2, 300::numeric, 'proportionnel', true, null::text),
    ('oignon', 3, 100::numeric, 'proportionnel', true, null::text),
    ('gnangnan', 4, 100::numeric, 'proportionnel', true, null::text),
    ('piment', 5, 10::numeric, 'proportionnel', true, null::text),
    ('bouillon', 6, 1::numeric, 'proportionnel', true, null::text),
    ('sel', 7, 8::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais bouillir tomates, oignon, aubergines et piment dans 1,5 l d’eau.', null::text, 'les légumes sont tendres.', 900::int),
  (2, 'Retire les légumes, écrase-les et remets-les dans le bouillon.', null::text, 'la sauce est orangée et fluide.', null::int),
  (3, 'Ajoute le poisson en tranches et laisse frémir doucement.', null::text, 'la chair est blanche et opaque.', 720::int)
) as x(ordre, action, dose, repere, minuteur);

-- Sauce feuilles de manioc
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('sauce-feuilles', 'Sauce feuilles de manioc', array[]::text[], array['Plats au four et mijotés']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 30, 120, array['Grande marmite']::text[],
    6, 'personnes', 1, 12, array['https://fr.wikipedia.org/wiki/Pondu']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'cote-d-ivoire' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('feuilles-manioc', 1, 600::numeric, 'proportionnel', true, null::text),
    ('boeuf', 2, 500::numeric, 'proportionnel', true, null::text),
    ('poisson-fume', 3, 200::numeric, 'proportionnel', true, null::text),
    ('pate-arachide', 4, 100::numeric, 'proportionnel', true, null::text),
    ('huile-palme', 5, 80::numeric, 'proportionnel', true, null::text),
    ('oignon', 6, 150::numeric, 'proportionnel', true, null::text),
    ('piment', 7, 10::numeric, 'proportionnel', true, null::text),
    ('sel', 8, 8::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais bouillir les feuilles pilées dans 2 l d’eau.', null::text, 'elles ont foncé et perdu leur odeur crue.', 2700::int),
  (2, 'Ajoute la viande, l’oignon et le sel.', null::text, 'la viande est tendre.', 2400::int),
  (3, 'Ajoute pâte d’arachide délayée, huile de palme et poisson fumé.', null::text, 'la sauce est épaisse et brillante.', 1800::int)
) as x(ordre, action, dose, repere, minuteur);

-- Foutou banane
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('foutou-banane', 'Foutou banane', array[]::text[], array['Tubercules et plantains', 'Accompagnements']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 30, 50, array['Marmite', 'Mortier et pilon ou robot']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Foutou']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'cote-d-ivoire' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('plantain-vert', 1, 4::numeric, 'proportionnel', true, null::text),
    ('manioc', 2, 300::numeric, 'proportionnel', true, null::text),
    ('sel', 3, 3::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Épluche bananes et manioc, coupe en gros morceaux.', null::text, 'les morceaux ont une taille proche.', null::int),
  (2, 'Fais-les cuire à l’eau.', null::text, 'la pointe d’un couteau entre sans résistance.', 1500::int),
  (3, 'Pile en ajoutant un peu d’eau de cuisson.', null::text, 'la pâte est lisse, élastique et ne colle plus au pilon.', null::int),
  (4, 'Forme des boules avec les mains mouillées.', null::text, 'les boules sont lisses.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Foutou igname
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('foutou-igname', 'Foutou igname', array['igname pilée']::text[], array['Tubercules et plantains', 'Accompagnements']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 25, 50, array['Marmite', 'Mortier et pilon ou robot']::text[],
    4, 'personnes', 1, 8, array[]::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'cote-d-ivoire' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('igname', 1, 1200::numeric, 'proportionnel', true, null::text),
    ('sel', 2, 3::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Épluche l’igname et coupe-la en tronçons.', null::text, 'les morceaux sont blancs et sans peau.', null::int),
  (2, 'Fais cuire à l’eau salée.', null::text, 'la pointe d’un couteau entre sans résistance.', 1500::int),
  (3, 'Pile chaud, petit à petit.', null::text, 'la pâte est lisse, sans grumeau et élastique.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Placali
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('placali', 'Placali', array[]::text[], array['Tubercules et plantains', 'Accompagnements']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 20, 25, array['Marmite', 'Spatule en bois']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Placali']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'cote-d-ivoire' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('farine-manioc', 1, 600::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Délaye la pâte de manioc dans 1 l d’eau froide.', null::text, 'il ne reste aucun grumeau.', null::int),
  (2, 'Cuis à feu moyen en remuant sans arrêt.', null::text, 'la pâte devient translucide et élastique.', 900::int),
  (3, 'Mouille un bol et forme des boules.', null::text, 'les boules sont lisses et brillantes.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Tô de maïs (kabato)
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('kabato', 'Tô de maïs (kabato)', array['tô']::text[], array['Riz et autres céréales', 'Accompagnements']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 20, 25, array['Marmite', 'Spatule en bois']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/T%C3%B4']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'cote-d-ivoire' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('farine-mais', 1, 500::numeric, 'proportionnel', true, null::text),
    ('sel', 2, 3::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Délaye un tiers de la farine dans 1 l d’eau, porte à ébullition.', null::text, 'une bouillie épaisse se forme.', 300::int),
  (2, 'Ajoute le reste de farine petit à petit en écrasant contre la paroi.', null::text, 'la pâte est ferme et se détache de la marmite.', 600::int),
  (3, 'Forme des boules ou des galettes.', null::text, 'la surface est lisse.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Poulet braisé
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('poulet-braise', 'Poulet braisé', array[]::text[], array['Viandes, poissons et fruits de mer', 'Cuisine de rue et repas à emporter']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 20, 160, array['Grill ou four']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Poulet_brais%C3%A9']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'cote-d-ivoire' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('poulet', 1, 1200::numeric, 'proportionnel', true, null::text),
    ('ail', 2, 15::numeric, 'proportionnel', true, null::text),
    ('gingembre', 3, 20::numeric, 'proportionnel', true, null::text),
    ('oignon', 4, 80::numeric, 'proportionnel', true, null::text),
    ('moutarde', 5, 30::numeric, 'proportionnel', true, null::text),
    ('piment', 6, 10::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 7, 40::numeric, 'proportionnel', true, null::text),
    ('citron-vert', 8, 1::numeric, 'proportionnel', true, null::text),
    ('sel', 9, 10::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Mixe ail, gingembre, oignon, piment, moutarde, huile et sel.', null::text, 'la marinade est une pâte homogène.', null::int),
  (2, 'Badigeonne le poulet et laisse mariner au frais.', null::text, 'la marinade couvre tous les morceaux.', 7200::int),
  (3, 'Fais griller en retournant souvent.', null::text, 'la peau est bien dorée et le jus qui sort est clair, sans rose.', 2100::int)
) as x(ordre, action, dose, repere, minuteur);

-- Choukouya de mouton
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('choukouya', 'Choukouya de mouton', array['dibi']::text[], array['Viandes, poissons et fruits de mer', 'Cuisine de rue et repas à emporter']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 25, 60, array['Grill', 'Papier aluminium']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Choukouya']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'cote-d-ivoire' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('agneau', 1, 1000::numeric, 'proportionnel', true, null::text),
    ('oignon', 2, 200::numeric, 'proportionnel', true, null::text),
    ('tomate', 3, 150::numeric, 'proportionnel', true, null::text),
    ('piment-poudre', 4, 3::numeric, 'proportionnel', true, null::text),
    ('bouillon', 5, 1::numeric, 'proportionnel', true, null::text),
    ('moutarde', 6, 20::numeric, 'proportionnel', true, null::text),
    ('sel', 7, 8::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Coupe la viande en petits morceaux et assaisonne.', null::text, 'chaque morceau est enrobé d’épices.', null::int),
  (2, 'Fais griller sur feu vif.', null::text, 'les bords sont bien grillés.', 1200::int),
  (3, 'Mélange avec oignons et tomates émincés, enferme en papillote quelques minutes.', null::text, 'les oignons ont légèrement fondu.', 600::int)
) as x(ordre, action, dose, repere, minuteur);

-- Claclo
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('claclo', 'Claclo', array['beignets de banane']::text[], array['Cuisine de rue et repas à emporter', 'Biscuits et petites douceurs']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 20, 25, array['Marmite pour friture']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Claclo']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'cote-d-ivoire' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('banane-plantain', 1, 3::numeric, 'proportionnel', true, 'très mûres'::text),
    ('farine', 2, 80::numeric, 'proportionnel', true, null::text),
    ('oignon', 3, 30::numeric, 'proportionnel', true, null::text),
    ('piment', 4, 3::numeric, 'proportionnel', false, null::text),
    ('huile-vegetale', 5, 500::numeric, 'fixe', true, 'pour la friture'::text),
    ('sel', 6, 2::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Écrase les bananes très mûres en purée.', null::text, 'il reste quelques petits morceaux.', null::int),
  (2, 'Ajoute farine, oignon haché, piment et sel.', null::text, 'la pâte tient sur une cuillère.', null::int),
  (3, 'Fais frire des petites cuillerées.', null::text, 'les beignets sont bien bruns.', 300::int)
) as x(ordre, action, dose, repere, minuteur);

-- Gbofloto
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('gbofloto', 'Gbofloto', array['beignets', 'puff-puff']::text[], array['Biscuits et petites douceurs', 'Cuisine de rue et repas à emporter']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 25, 115, array['Saladier', 'Marmite pour friture']::text[],
    30, 'pieces', 15, 60, array['https://fr.wikipedia.org/wiki/Puff-puff']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'cote-d-ivoire' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('farine', 1, 500::numeric, 'proportionnel', true, null::text),
    ('sucre', 2, 100::numeric, 'proportionnel', true, null::text),
    ('levure-boulangere', 3, 8::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 4, 800::numeric, 'fixe', true, 'pour la friture'::text),
    ('sel', 5, 3::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Mélange farine, sucre, sel et levure avec 40 cl d’eau tiède.', null::text, 'la pâte est collante et lisse.', null::int),
  (2, 'Laisse lever au chaud, couvert.', null::text, 'la pâte a doublé de volume et fait des bulles.', 5400::int),
  (3, 'Forme des boules avec la main et fais frire.', null::text, 'les beignets sont dorés et se retournent seuls.', 300::int)
) as x(ordre, action, dose, repere, minuteur);

-- Dêguê
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('degue', 'Dêguê', array[]::text[], array['Desserts']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 15, 15, array['Saladier']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/D%C3%A9gu%C3%A9']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'cote-d-ivoire' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('mil', 1, 200::numeric, 'proportionnel', true, 'précuit'::text),
    ('yaourt', 2, 500::numeric, 'proportionnel', true, null::text),
    ('lait-concentre', 3, 100::numeric, 'proportionnel', true, null::text),
    ('vanille', 4, 8::numeric, 'proportionnel', false, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Réhydrate le mil précuit avec un peu d’eau tiède.', null::text, 'les grains ont gonflé.', 600::int),
  (2, 'Mélange yaourt et lait concentré.', null::text, 'le mélange est lisse.', null::int),
  (3, 'Ajoute le mil et sers bien frais.', null::text, 'les grains sont bien répartis.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Jus de gingembre (gnamankoudji)
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('jus-gingembre', 'Jus de gingembre (gnamankoudji)', array['gnamankoudji']::text[], array['Boissons']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 15, 75, array['Mixeur', 'Passoire fine']::text[],
    6, 'personnes', 1, 12, array[]::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'cote-d-ivoire' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('gingembre', 1, 250::numeric, 'proportionnel', true, null::text),
    ('citron-vert', 2, 2::numeric, 'proportionnel', true, null::text),
    ('sucre', 3, 200::numeric, 'proportionnel', true, null::text),
    ('ananas', 4, 1::numeric, 'proportionnel', false, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Épluche et mixe le gingembre avec 1 l d’eau.', null::text, 'il n’y a plus de gros morceaux.', null::int),
  (2, 'Filtre en pressant bien.', null::text, 'le jus est trouble mais sans fibres.', null::int),
  (3, 'Ajoute 50 cl d’eau, sucre et jus de citron, mets au frais.', null::text, 'le sucre est dissous.', 3600::int)
) as x(ordre, action, dose, repere, minuteur);

-- Jus de bissap
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('bissap', 'Jus de bissap', array['jus d’hibiscus', 'karkadé']::text[], array['Boissons']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 10, 70, array['Casserole', 'Passoire']::text[],
    6, 'personnes', 1, 12, array['https://fr.wikipedia.org/wiki/Bissap']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'afrique-de-l-ouest' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('bissap', 1, 80::numeric, 'proportionnel', true, null::text),
    ('sucre', 2, 200::numeric, 'proportionnel', true, null::text),
    ('menthe', 3, 10::numeric, 'proportionnel', false, null::text),
    ('vanille', 4, 8::numeric, 'proportionnel', false, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Rince les fleurs puis fais-les bouillir dans 1,5 l d’eau.', null::text, 'l’eau est rouge foncé.', 600::int),
  (2, 'Ajoute menthe et laisse infuser hors du feu.', null::text, 'l’infusion a refroidi.', 1800::int),
  (3, 'Filtre, sucre et mets au frais.', null::text, 'le sucre est dissous.', 1800::int)
) as x(ordre, action, dose, repere, minuteur);

-- Abolo
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('abolo', 'Abolo', array[]::text[], array['Boulangerie', 'Accompagnements']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 20, 160, array['Cuit-vapeur', 'Moules individuels']::text[],
    12, 'pieces', 6, 24, array['https://fr.wikipedia.org/wiki/Abolo']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'cote-d-ivoire-togo-benin' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('farine-mais', 1, 300::numeric, 'proportionnel', true, 'fine'::text),
    ('farine', 2, 100::numeric, 'proportionnel', true, null::text),
    ('sucre', 3, 40::numeric, 'proportionnel', true, null::text),
    ('levure-boulangere', 4, 6::numeric, 'proportionnel', true, null::text),
    ('sel', 5, 3::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Mélange les farines avec 50 cl d’eau tiède, sucre, sel et levure.', null::text, 'la pâte est épaisse et lisse.', null::int),
  (2, 'Laisse fermenter couvert.', null::text, 'la pâte est bombée et pleine de bulles.', 7200::int),
  (3, 'Remplis les moules et cuis à la vapeur.', null::text, 'une lame plantée ressort sèche.', 1500::int)
) as x(ordre, action, dose, repere, minuteur);

-- Poisson frit sauce tomate
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('poisson-frit-attieke', 'Poisson frit sauce tomate', array[]::text[], array['Viandes, poissons et fruits de mer']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 25, 35, array['Poêle profonde']::text[],
    4, 'personnes', 1, 8, array[]::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'cote-d-ivoire' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('poisson', 1, 1000::numeric, 'proportionnel', true, null::text),
    ('farine', 2, 50::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 3, 500::numeric, 'fixe', true, null::text),
    ('tomate', 4, 300::numeric, 'proportionnel', true, null::text),
    ('oignon', 5, 100::numeric, 'proportionnel', true, null::text),
    ('piment', 6, 10::numeric, 'proportionnel', true, null::text),
    ('sel', 7, 8::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Sale le poisson et roule-le dans la farine.', null::text, 'une fine couche de farine couvre le poisson.', null::int),
  (2, 'Fais frire des deux côtés.', null::text, 'la peau est dorée et croustillante.', 600::int),
  (3, 'Fais une sauce avec tomate, oignon et piment revenus dans 2 c. à soupe d’huile.', null::text, 'la sauce a réduit de moitié.', 600::int)
) as x(ordre, action, dose, repere, minuteur);

-- Sauce aubergine
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('riz-sauce-aubergine', 'Sauce aubergine', array[]::text[], array['Plats au four et mijotés']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 20, 60, array['Marmite']::text[],
    4, 'personnes', 1, 8, array[]::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'cote-d-ivoire' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('gnangnan', 1, 400::numeric, 'proportionnel', true, null::text),
    ('aubergine', 2, 200::numeric, 'proportionnel', true, null::text),
    ('boeuf', 3, 400::numeric, 'proportionnel', true, null::text),
    ('tomate', 4, 200::numeric, 'proportionnel', true, null::text),
    ('oignon', 5, 100::numeric, 'proportionnel', true, null::text),
    ('huile-palme', 6, 40::numeric, 'proportionnel', true, null::text),
    ('piment', 7, 10::numeric, 'proportionnel', true, null::text),
    ('sel', 8, 8::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais cuire la viande dans 1 l d’eau salée avec l’oignon.', null::text, 'l’écume est retirée.', 1200::int),
  (2, 'Ajoute aubergines et tomates entières.', null::text, 'les aubergines sont fondantes.', 1200::int),
  (3, 'Écrase les légumes et ajoute l’huile de palme, laisse réduire.', null::text, 'la sauce nappe la cuillère.', 900::int)
) as x(ordre, action, dose, repere, minuteur);

-- Ceebu jën
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('ceebu-jen', 'Ceebu jën', array['thieboudienne', 'riz au poisson']::text[], array['Riz et autres céréales', 'Viandes, poissons et fruits de mer']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'avance', 60, 120, array['Grande marmite']::text[],
    6, 'personnes', 1, 12, array['https://fr.wikipedia.org/wiki/Thi%C3%A9boudi%C3%A8ne']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'senegal' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('riz-local', 1, 800::numeric, 'proportionnel', true, 'brisé de préférence'::text),
    ('poisson', 2, 1200::numeric, 'proportionnel', true, null::text),
    ('persil', 3, 30::numeric, 'proportionnel', true, null::text),
    ('ail', 4, 20::numeric, 'proportionnel', true, null::text),
    ('piment', 5, 10::numeric, 'proportionnel', true, null::text),
    ('concentre-tomate', 6, 140::numeric, 'proportionnel', true, null::text),
    ('oignon', 7, 200::numeric, 'proportionnel', true, null::text),
    ('carotte', 8, 300::numeric, 'proportionnel', true, null::text),
    ('chou', 9, 400::numeric, 'proportionnel', true, null::text),
    ('manioc', 10, 300::numeric, 'proportionnel', true, null::text),
    ('aubergine', 11, 200::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 12, 150::numeric, 'proportionnel', true, null::text),
    ('sel', 13, 15::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Mixe persil, ail, piment et sel, farcis les entailles du poisson.', null::text, 'chaque entaille est bien remplie.', null::int),
  (2, 'Fais dorer le poisson dans l’huile, puis retire-le.', null::text, 'les deux faces sont dorées.', 480::int),
  (3, 'Dans la même huile, fais revenir oignon et concentré.', null::text, 'le concentré a foncé sans brûler.', 600::int),
  (4, 'Ajoute 2 l d’eau, les légumes et le poisson, cuis à feu moyen.', null::text, 'les légumes sont tendres.', 2100::int),
  (5, 'Retire poisson et légumes, verse le riz dans le bouillon, couvre.', null::text, 'le riz a absorbé le bouillon et est tendre.', 1800::int)
) as x(ordre, action, dose, repere, minuteur);

-- Poulet yassa
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('yassa-poulet', 'Poulet yassa', array[]::text[], array['Plats au four et mijotés']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 30, 150, array['Cocotte']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Yassa']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'senegal' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('poulet', 1, 1200::numeric, 'proportionnel', true, null::text),
    ('oignon', 2, 800::numeric, 'proportionnel', true, null::text),
    ('citron', 3, 4::numeric, 'proportionnel', true, null::text),
    ('moutarde', 4, 40::numeric, 'proportionnel', true, null::text),
    ('ail', 5, 10::numeric, 'proportionnel', true, null::text),
    ('piment', 6, 10::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 7, 80::numeric, 'proportionnel', true, null::text),
    ('sel', 8, 10::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais mariner le poulet avec oignons émincés, jus de citron, moutarde, ail et sel.', null::text, 'tout le poulet est couvert de marinade.', 3600::int),
  (2, 'Fais griller ou dorer le poulet.', null::text, 'la peau est dorée.', 900::int),
  (3, 'Fais fondre les oignons de la marinade dans l’huile.', null::text, 'les oignons sont fondants et blonds.', 1200::int),
  (4, 'Ajoute le poulet et le reste de marinade, laisse mijoter.', null::text, 'le poulet est tendre.', 1800::int)
) as x(ordre, action, dose, repere, minuteur);

-- Mafé au bœuf
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('mafe-boeuf', 'Mafé au bœuf', array[]::text[], array['Plats au four et mijotés']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 25, 100, array['Marmite']::text[],
    6, 'personnes', 1, 12, array['https://fr.wikipedia.org/wiki/Maf%C3%A9']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'mali-senegal' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('boeuf', 1, 800::numeric, 'proportionnel', true, null::text),
    ('pate-arachide', 2, 250::numeric, 'proportionnel', true, null::text),
    ('tomate-pelee', 3, 400::numeric, 'proportionnel', true, null::text),
    ('oignon', 4, 150::numeric, 'proportionnel', true, null::text),
    ('patate-douce', 5, 400::numeric, 'proportionnel', true, null::text),
    ('carotte', 6, 200::numeric, 'proportionnel', true, null::text),
    ('ail', 7, 10::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 8, 30::numeric, 'proportionnel', true, null::text),
    ('sel', 9, 10::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais dorer la viande en cubes dans l’huile.', null::text, 'toutes les faces ont pris couleur.', 600::int),
  (2, 'Ajoute oignon, ail et tomates, puis 1 l d’eau.', null::text, 'la sauce frémit.', 1200::int),
  (3, 'Ajoute la pâte d’arachide délayée et les légumes.', null::text, 'les légumes sont tendres.', 3000::int)
) as x(ordre, action, dose, repere, minuteur);

-- Jollof rice
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('jollof-rice', 'Jollof rice', array[]::text[], array['Riz et autres céréales']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 25, 60, array['Marmite avec couvercle', 'Mixeur']::text[],
    6, 'personnes', 1, 12, array['https://fr.wikipedia.org/wiki/Riz_jollof']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'nigeria-ghana' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('riz-local', 1, 600::numeric, 'proportionnel', true, null::text),
    ('tomate', 2, 400::numeric, 'proportionnel', true, null::text),
    ('poivron', 3, 200::numeric, 'proportionnel', true, null::text),
    ('oignon', 4, 200::numeric, 'proportionnel', true, null::text),
    ('piment', 5, 10::numeric, 'proportionnel', true, null::text),
    ('concentre-tomate', 6, 70::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 7, 100::numeric, 'proportionnel', true, null::text),
    ('thym', 8, 2::numeric, 'proportionnel', true, null::text),
    ('curry', 9, 4::numeric, 'proportionnel', true, null::text),
    ('laurier', 10, 1::numeric, 'proportionnel', true, null::text),
    ('bouillon', 11, 2::numeric, 'proportionnel', true, null::text),
    ('sel', 12, 8::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Mixe tomates, poivron, la moitié de l’oignon et le piment.', null::text, 'la purée est lisse.', null::int),
  (2, 'Fais revenir le reste d’oignon et le concentré dans l’huile.', null::text, 'le concentré a foncé.', 300::int),
  (3, 'Ajoute la purée et les épices, laisse réduire.', null::text, 'la sauce a réduit de moitié et l’huile remonte.', 900::int),
  (4, 'Ajoute le riz lavé et 70 cl d’eau, couvre à feu doux.', null::text, 'le riz est tendre et le fond légèrement grillé.', 1500::int)
) as x(ordre, action, dose, repere, minuteur);

-- Suya
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('suya', 'Suya', array[]::text[], array['Cuisine de rue et repas à emporter', 'Viandes, poissons et fruits de mer']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 20, 80, array['Grill', 'Brochettes']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Suya']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'nigeria' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('boeuf', 1, 600::numeric, 'proportionnel', true, null::text),
    ('arachide', 2, 80::numeric, 'proportionnel', true, 'mixées'::text),
    ('piment-poudre', 3, 5::numeric, 'proportionnel', true, null::text),
    ('paprika', 4, 5::numeric, 'proportionnel', true, null::text),
    ('gingembre-poudre', 5, 3::numeric, 'proportionnel', true, null::text),
    ('oignon', 6, 100::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 7, 20::numeric, 'proportionnel', true, null::text),
    ('sel', 8, 5::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Mixe arachides et épices en poudre fine.', null::text, 'la poudre ressemble à du sable.', null::int),
  (2, 'Coupe la viande en fines lanières, enrobe d’huile puis de poudre.', null::text, 'chaque lanière est couverte.', 2700::int),
  (3, 'Enfile sur les brochettes et grille.', null::text, 'les bords sont bien grillés.', 600::int)
) as x(ordre, action, dose, repere, minuteur);

-- Kelewele
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('kelewele', 'Kelewele', array[]::text[], array['Tubercules et plantains', 'Cuisine de rue et repas à emporter']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 15, 30, array['Poêle profonde']::text[],
    2, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Kelewele']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'ghana' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('banane-plantain', 1, 2::numeric, 'proportionnel', true, null::text),
    ('gingembre', 2, 15::numeric, 'proportionnel', true, null::text),
    ('piment-poudre', 3, 2::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 4, 400::numeric, 'fixe', true, null::text),
    ('sel', 5, 2::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Coupe les bananes en dés.', null::text, 'les dés font environ 2 cm.', null::int),
  (2, 'Enrobe-les de gingembre râpé, piment et sel.', null::text, 'tous les dés sont épicés.', 600::int),
  (3, 'Fais frire.', null::text, 'les dés sont bien caramélisés.', 240::int)
) as x(ordre, action, dose, repere, minuteur);

-- Ndolé
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('ndole', 'Ndolé', array[]::text[], array['Plats au four et mijotés']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'avance', 45, 120, array['Marmite', 'Mixeur']::text[],
    6, 'personnes', 1, 12, array['https://fr.wikipedia.org/wiki/Ndol%C3%A9']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'cameroun' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('epinards', 1, 500::numeric, 'proportionnel', true, 'ou feuilles de ndolé'::text),
    ('arachide', 2, 300::numeric, 'proportionnel', true, 'crues décortiquées'::text),
    ('boeuf', 3, 500::numeric, 'proportionnel', true, null::text),
    ('crevette', 4, 200::numeric, 'proportionnel', true, null::text),
    ('oignon', 5, 150::numeric, 'proportionnel', true, null::text),
    ('ail', 6, 10::numeric, 'proportionnel', true, null::text),
    ('gingembre', 7, 15::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 8, 100::numeric, 'proportionnel', true, null::text),
    ('sel', 9, 10::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais cuire la viande dans de l’eau salée.', null::text, 'la viande est tendre.', 2400::int),
  (2, 'Fais bouillir les arachides puis mixe-les en pâte.', null::text, 'la pâte est lisse et claire.', 1200::int),
  (3, 'Mélange pâte d’arachide, viande et son bouillon, ajoute les feuilles.', null::text, 'les feuilles sont bien enrobées.', 1200::int),
  (4, 'Fais revenir oignon, ail, gingembre et crevettes dans l’huile, verse sur le ndolé.', null::text, 'les crevettes sont roses.', 300::int)
) as x(ordre, action, dose, repere, minuteur);

-- Poulet DG
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('poulet-dg', 'Poulet DG', array[]::text[], array['Plats au four et mijotés', 'Tubercules et plantains']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 40, 70, array['Cocotte', 'Poêle']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Poulet_DG']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'cameroun' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('poulet', 1, 1000::numeric, 'proportionnel', true, null::text),
    ('banane-plantain', 2, 3::numeric, 'proportionnel', true, null::text),
    ('carotte', 3, 200::numeric, 'proportionnel', true, null::text),
    ('haricot-vert', 4, 150::numeric, 'proportionnel', true, null::text),
    ('poivron', 5, 150::numeric, 'proportionnel', true, null::text),
    ('tomate', 6, 200::numeric, 'proportionnel', true, null::text),
    ('oignon', 7, 150::numeric, 'proportionnel', true, null::text),
    ('ail', 8, 10::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 9, 400::numeric, 'fixe', true, null::text),
    ('sel', 10, 8::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais dorer le poulet dans une cocotte.', null::text, 'il est doré partout.', 900::int),
  (2, 'Ajoute oignon, ail, tomate et légumes coupés, laisse mijoter.', null::text, 'les carottes sont tendres.', 1500::int),
  (3, 'Fais frire les plantains en rondelles.', null::text, 'ils sont dorés.', 300::int),
  (4, 'Mélange les plantains au poulet juste avant de servir.', null::text, 'les plantains sont enrobés de sauce.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Poulet à la moambé
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('moambe', 'Poulet à la moambé', array[]::text[], array['Plats au four et mijotés']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 25, 80, array['Cocotte']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Poulet_%C3%A0_la_moamb%C3%A9']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'republique-democratique-du-congo' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('poulet', 1, 1200::numeric, 'proportionnel', true, null::text),
    ('graine-palme', 2, 400::numeric, 'proportionnel', true, null::text),
    ('oignon', 3, 150::numeric, 'proportionnel', true, null::text),
    ('tomate', 4, 200::numeric, 'proportionnel', true, null::text),
    ('ail', 5, 10::numeric, 'proportionnel', true, null::text),
    ('piment', 6, 10::numeric, 'proportionnel', true, null::text),
    ('sel', 7, 8::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais revenir le poulet avec oignon et ail.', null::text, 'le poulet est doré.', 600::int),
  (2, 'Ajoute tomate et crème de palme délayée dans 50 cl d’eau.', null::text, 'la sauce est homogène.', null::int),
  (3, 'Laisse mijoter à couvert.', null::text, 'la sauce est épaisse et l’huile remonte.', 3000::int)
) as x(ordre, action, dose, repere, minuteur);

-- Doro wat
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('doro-wat', 'Doro wat', array[]::text[], array['Plats au four et mijotés']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 40, 110, array['Cocotte']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Doro_wat']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'ethiopie' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('poulet', 1, 1000::numeric, 'proportionnel', true, null::text),
    ('oignon', 2, 600::numeric, 'proportionnel', true, null::text),
    ('beurre', 3, 80::numeric, 'proportionnel', true, null::text),
    ('ail', 4, 15::numeric, 'proportionnel', true, null::text),
    ('gingembre', 5, 15::numeric, 'proportionnel', true, null::text),
    ('paprika', 6, 20::numeric, 'proportionnel', true, null::text),
    ('piment-poudre', 7, 5::numeric, 'proportionnel', true, null::text),
    ('oeuf', 8, 4::numeric, 'proportionnel', true, 'durs'::text),
    ('citron', 9, 1::numeric, 'proportionnel', true, null::text),
    ('sel', 10, 8::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais cuire les oignons hachés à sec à feu doux.', null::text, 'ils sont très fondus et ont perdu leur eau.', 1200::int),
  (2, 'Ajoute beurre, ail, gingembre et épices.', null::text, 'le mélange devient rouge foncé et parfumé.', 600::int),
  (3, 'Ajoute le poulet citronné et 30 cl d’eau, laisse mijoter.', null::text, 'le poulet est tendre et la sauce épaisse.', 2700::int),
  (4, 'Ajoute les œufs durs entaillés.', null::text, 'ils sont chauds et colorés par la sauce.', 300::int)
) as x(ordre, action, dose, repere, minuteur);

-- Bobotie
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('bobotie', 'Bobotie', array[]::text[], array['Plats au four et mijotés']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 25, 70, array['Plat à four', 'Poêle']::text[],
    6, 'personnes', 1, 12, array['https://fr.wikipedia.org/wiki/Bobotie']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'afrique-du-sud' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('viande-hachee', 1, 800::numeric, 'proportionnel', true, null::text),
    ('oignon', 2, 150::numeric, 'proportionnel', true, null::text),
    ('pain-mie', 3, 60::numeric, 'proportionnel', true, null::text),
    ('lait', 4, 250::numeric, 'proportionnel', true, null::text),
    ('oeuf', 5, 2::numeric, 'proportionnel', true, null::text),
    ('curry', 6, 10::numeric, 'proportionnel', true, null::text),
    ('raisins-secs', 7, 40::numeric, 'proportionnel', true, null::text),
    ('laurier', 8, 1::numeric, 'proportionnel', true, null::text),
    ('sel', 9, 8::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais revenir oignon et curry, puis la viande.', null::text, 'la viande n’est plus rose.', 600::int),
  (2, 'Ajoute le pain trempé dans la moitié du lait et les raisins, verse dans le plat.', null::text, 'le mélange est bien tassé.', null::int),
  (3, 'Bats œufs et reste de lait, verse dessus et enfourne à 180 °C.', null::text, 'le dessus est pris et doré.', 2100::int)
) as x(ordre, action, dose, repere, minuteur);

-- Chakalaka
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('chakalaka', 'Chakalaka', array[]::text[], array['Accompagnements', 'Légumes et légumineuses']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 20, 35, array['Poêle']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Chakalaka']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'afrique-du-sud' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('oignon', 1, 100::numeric, 'proportionnel', true, null::text),
    ('poivron', 2, 200::numeric, 'proportionnel', true, null::text),
    ('carotte', 3, 200::numeric, 'proportionnel', true, null::text),
    ('tomate-pelee', 4, 400::numeric, 'proportionnel', true, null::text),
    ('haricots-rouges', 5, 250::numeric, 'proportionnel', true, 'cuits'::text),
    ('curry', 6, 6::numeric, 'proportionnel', true, null::text),
    ('ail', 7, 10::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 8, 30::numeric, 'proportionnel', true, null::text),
    ('sel', 9, 5::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais revenir oignon, ail, poivron et curry.', null::text, 'les poivrons ont ramolli.', 480::int),
  (2, 'Ajoute carottes râpées et tomates.', null::text, 'la sauce a épaissi.', 600::int),
  (3, 'Ajoute les haricots et réchauffe.', null::text, 'tout est chaud.', 300::int)
) as x(ordre, action, dose, repere, minuteur);

-- Fonio aux légumes
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('fonio-legumes', 'Fonio aux légumes', array[]::text[], array['Riz et autres céréales']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 20, 30, array['Cuit-vapeur ou casserole']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Fonio']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'mali-guinee-burkina-faso' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('fonio', 1, 300::numeric, 'proportionnel', true, null::text),
    ('carotte', 2, 150::numeric, 'proportionnel', true, null::text),
    ('courgette', 3, 150::numeric, 'proportionnel', true, null::text),
    ('oignon', 4, 80::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 5, 30::numeric, 'proportionnel', true, null::text),
    ('soumbala', 6, 5::numeric, 'proportionnel', false, null::text),
    ('sel', 7, 5::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Rince le fonio plusieurs fois.', null::text, 'l’eau de rinçage est claire.', null::int),
  (2, 'Cuis-le à la vapeur ou avec son volume d’eau.', null::text, 'les grains sont gonflés et se détachent.', 480::int),
  (3, 'Fais sauter les légumes en dés avec oignon et soumbala, mélange au fonio.', null::text, 'les légumes sont tendres mais croquants.', 600::int)
) as x(ordre, action, dose, repere, minuteur);

-- Akara
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('akara', 'Akara', array['accra de niébé']::text[], array['Cuisine de rue et repas à emporter', 'Apéritifs et entrées']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 40, 760, array['Mixeur', 'Marmite pour friture']::text[],
    25, 'pieces', 13, 50, array['https://fr.wikipedia.org/wiki/Akara']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'nigeria-benin-senegal' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('niebe', 1, 300::numeric, 'proportionnel', true, null::text),
    ('oignon', 2, 80::numeric, 'proportionnel', true, null::text),
    ('piment', 3, 5::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 4, 600::numeric, 'fixe', true, null::text),
    ('sel', 5, 4::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais tremper les haricots une nuit, frotte-les pour enlever la peau.', null::text, 'les haricots sont blancs.', 43200::int),
  (2, 'Mixe avec oignon, piment, sel et très peu d’eau, puis fouette.', null::text, 'la pâte est légère et aérée.', null::int),
  (3, 'Fais frire des cuillerées.', null::text, 'les beignets sont dorés et gonflés.', 300::int)
) as x(ordre, action, dose, repere, minuteur);

-- Romazava
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('romazava', 'Romazava', array[]::text[], array['Soupes et bouillons']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 20, 80, array['Marmite']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Romazava']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'madagascar' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('boeuf', 1, 600::numeric, 'proportionnel', true, null::text),
    ('epinards', 2, 400::numeric, 'proportionnel', true, null::text),
    ('tomate', 3, 200::numeric, 'proportionnel', true, null::text),
    ('oignon', 4, 100::numeric, 'proportionnel', true, null::text),
    ('gingembre', 5, 10::numeric, 'proportionnel', true, null::text),
    ('ail', 6, 10::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 7, 20::numeric, 'proportionnel', true, null::text),
    ('sel', 8, 8::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais revenir la viande avec oignon, ail et gingembre.', null::text, 'la viande est dorée.', 600::int),
  (2, 'Ajoute tomates et 1 l d’eau, laisse mijoter.', null::text, 'la viande est tendre.', 3000::int),
  (3, 'Ajoute les feuilles vertes en fin de cuisson.', null::text, 'les feuilles ont juste flétri.', 300::int)
) as x(ordre, action, dose, repere, minuteur);

-- Kachumbari
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('kachumbari', 'Kachumbari', array[]::text[], array['Apéritifs et entrées', 'Accompagnements']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 15, 15, array['Saladier']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Kachumbari']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'kenya-tanzanie' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('tomate', 1, 400::numeric, 'proportionnel', true, null::text),
    ('oignon', 2, 100::numeric, 'proportionnel', true, null::text),
    ('coriandre', 3, 15::numeric, 'proportionnel', true, null::text),
    ('piment', 4, 5::numeric, 'proportionnel', true, null::text),
    ('citron-vert', 5, 1::numeric, 'proportionnel', true, null::text),
    ('sel', 6, 3::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Coupe tomates et oignon en petits dés.', null::text, 'les dés sont réguliers.', null::int),
  (2, 'Ajoute coriandre, piment, jus de citron et sel.', null::text, 'tout est bien mélangé.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Pastels au poisson
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('pastels', 'Pastels au poisson', array[]::text[], array['Cuisine de rue et repas à emporter']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 50, 70, array['Rouleau', 'Marmite pour friture']::text[],
    20, 'pieces', 10, 40, array['https://fr.wikipedia.org/wiki/Pastel_(gastronomie)']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'senegal' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('farine', 1, 400::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 2, 600::numeric, 'fixe', true, null::text),
    ('thon-boite', 3, 300::numeric, 'proportionnel', true, null::text),
    ('oignon', 4, 100::numeric, 'proportionnel', true, null::text),
    ('persil', 5, 15::numeric, 'proportionnel', true, null::text),
    ('piment', 6, 5::numeric, 'proportionnel', true, null::text),
    ('sel', 7, 5::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Pétris farine, sel, 4 c. à soupe d’huile et 20 cl d’eau.', null::text, 'la pâte est souple et ne colle plus.', 600::int),
  (2, 'Prépare la farce : poisson émietté, oignon, persil, piment.', null::text, 'la farce est bien assaisonnée.', null::int),
  (3, 'Étale finement, découpe des disques, farcis et ferme.', null::text, 'les bords sont bien soudés à la fourchette.', null::int),
  (4, 'Fais frire.', null::text, 'les pastels sont dorés.', 300::int)
) as x(ordre, action, dose, repere, minuteur);

-- Couscous aux légumes et à l’agneau
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('couscous-legumes', 'Couscous aux légumes et à l’agneau', array[]::text[], array['Riz et autres céréales', 'Plats au four et mijotés']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 45, 120, array['Couscoussier']::text[],
    6, 'personnes', 1, 12, array['https://fr.wikipedia.org/wiki/Couscous']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'algerie-maroc-tunisie-mauritanie' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('semoule', 1, 500::numeric, 'proportionnel', true, null::text),
    ('agneau', 2, 800::numeric, 'proportionnel', true, null::text),
    ('carotte', 3, 300::numeric, 'proportionnel', true, null::text),
    ('navet', 4, 200::numeric, 'proportionnel', true, null::text),
    ('courgette', 5, 300::numeric, 'proportionnel', true, null::text),
    ('pois-chiches', 6, 250::numeric, 'proportionnel', true, 'cuits'::text),
    ('oignon', 7, 150::numeric, 'proportionnel', true, null::text),
    ('tomate', 8, 200::numeric, 'proportionnel', true, null::text),
    ('ras-el-hanout', 9, 6::numeric, 'proportionnel', true, null::text),
    ('beurre', 10, 40::numeric, 'proportionnel', true, null::text),
    ('huile-olive', 11, 30::numeric, 'proportionnel', true, null::text),
    ('sel', 12, 12::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais revenir l’agneau et l’oignon dans l’huile avec les épices.', null::text, 'la viande est colorée.', 600::int),
  (2, 'Ajoute tomates, 2 l d’eau, carottes et navets, laisse mijoter.', null::text, 'la viande commence à être tendre.', 2700::int),
  (3, 'Arrose la semoule d’eau salée, égraine et cuis à la vapeur au-dessus du bouillon.', null::text, 'la vapeur traverse la semoule.', 900::int),
  (4, 'Ajoute courgettes et pois chiches au bouillon.', null::text, 'les courgettes sont tendres.', 900::int),
  (5, 'Égraine la semoule avec le beurre.', null::text, 'les grains sont légers et séparés.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Tajine de poulet au citron et aux olives
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('tajine-poulet-citron', 'Tajine de poulet au citron et aux olives', array[]::text[], array['Plats au four et mijotés']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 25, 80, array['Tajine ou cocotte']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Tajine']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'maroc' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('poulet', 1, 1200::numeric, 'proportionnel', true, null::text),
    ('oignon', 2, 200::numeric, 'proportionnel', true, null::text),
    ('ail', 3, 10::numeric, 'proportionnel', true, null::text),
    ('citron', 4, 1::numeric, 'proportionnel', true, 'confit ou frais'::text),
    ('gingembre-poudre', 5, 3::numeric, 'proportionnel', true, null::text),
    ('curcuma', 6, 3::numeric, 'proportionnel', true, null::text),
    ('safran', 7, 0.1::numeric, 'proportionnel', true, null::text),
    ('coriandre', 8, 15::numeric, 'proportionnel', true, null::text),
    ('huile-olive', 9, 40::numeric, 'proportionnel', true, null::text),
    ('sel', 10, 8::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Frotte le poulet d’épices, ail et huile.', null::text, 'les morceaux sont jaunes et parfumés.', null::int),
  (2, 'Fais fondre l’oignon dans le tajine, pose le poulet.', null::text, 'l’oignon est translucide.', 600::int),
  (3, 'Ajoute 20 cl d’eau, couvre et mijote.', null::text, 'le poulet est tendre.', 2700::int),
  (4, 'Ajoute citron et coriandre, laisse réduire.', null::text, 'la sauce est onctueuse.', 600::int)
) as x(ordre, action, dose, repere, minuteur);

-- Harira
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('harira', 'Harira', array[]::text[], array['Soupes et bouillons']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 25, 90, array['Marmite']::text[],
    6, 'personnes', 1, 12, array['https://fr.wikipedia.org/wiki/Harira']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'maroc' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('agneau', 1, 300::numeric, 'proportionnel', true, null::text),
    ('lentilles', 2, 100::numeric, 'proportionnel', true, null::text),
    ('pois-chiches', 3, 200::numeric, 'proportionnel', true, 'cuits'::text),
    ('tomate', 4, 500::numeric, 'proportionnel', true, null::text),
    ('oignon', 5, 100::numeric, 'proportionnel', true, null::text),
    ('celeri', 6, 50::numeric, 'proportionnel', true, null::text),
    ('coriandre', 7, 20::numeric, 'proportionnel', true, null::text),
    ('persil', 8, 20::numeric, 'proportionnel', true, null::text),
    ('farine', 9, 40::numeric, 'proportionnel', true, null::text),
    ('gingembre-poudre', 10, 3::numeric, 'proportionnel', true, null::text),
    ('cannelle', 11, 2::numeric, 'proportionnel', true, null::text),
    ('sel', 12, 10::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais revenir viande en petits dés, oignon et céleri.', null::text, 'la viande a pris couleur.', 600::int),
  (2, 'Ajoute tomates mixées, épices, lentilles et 2 l d’eau.', null::text, 'la soupe frémit.', 2700::int),
  (3, 'Ajoute pois chiches et herbes.', null::text, 'les lentilles sont tendres.', 900::int),
  (4, 'Délaye la farine dans un peu d’eau, verse en remuant.', null::text, 'la soupe est veloutée.', 300::int)
) as x(ordre, action, dose, repere, minuteur);

-- Chorba frik
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('chorba-frik', 'Chorba frik', array[]::text[], array['Soupes et bouillons']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 20, 70, array['Marmite']::text[],
    6, 'personnes', 1, 12, array['https://fr.wikipedia.org/wiki/Chorba']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'algerie' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('agneau', 1, 400::numeric, 'proportionnel', true, null::text),
    ('semoule', 2, 120::numeric, 'proportionnel', true, 'blé vert concassé (frik)'::text),
    ('tomate', 3, 300::numeric, 'proportionnel', true, null::text),
    ('concentre-tomate', 4, 30::numeric, 'proportionnel', true, null::text),
    ('oignon', 5, 100::numeric, 'proportionnel', true, null::text),
    ('pois-chiches', 6, 150::numeric, 'proportionnel', true, 'cuits'::text),
    ('coriandre', 7, 20::numeric, 'proportionnel', true, null::text),
    ('menthe', 8, 5::numeric, 'proportionnel', true, null::text),
    ('paprika', 9, 3::numeric, 'proportionnel', true, null::text),
    ('cannelle', 10, 1::numeric, 'proportionnel', true, null::text),
    ('huile-olive', 11, 30::numeric, 'proportionnel', true, null::text),
    ('sel', 12, 10::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais revenir viande, oignon et épices dans l’huile.', null::text, 'la viande est colorée.', 600::int),
  (2, 'Ajoute tomates, concentré et 2 l d’eau.', null::text, 'la soupe frémit.', 1800::int),
  (3, 'Ajoute le frik et les pois chiches, cuis en remuant.', null::text, 'le frik est tendre.', 1500::int),
  (4, 'Parsème de coriandre et menthe.', null::text, 'les herbes viennent d’être ajoutées.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Chakchouka
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('chakchouka', 'Chakchouka', array['shakshuka']::text[], array['Petits-déjeuners et brunchs', 'Légumes et légumineuses']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 15, 35, array['Poêle avec couvercle']::text[],
    2, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Chakchouka']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'tunisie-algerie' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('poivron', 1, 300::numeric, 'proportionnel', true, null::text),
    ('tomate', 2, 400::numeric, 'proportionnel', true, null::text),
    ('oignon', 3, 100::numeric, 'proportionnel', true, null::text),
    ('ail', 4, 10::numeric, 'proportionnel', true, null::text),
    ('oeuf', 5, 4::numeric, 'proportionnel', true, null::text),
    ('harissa', 6, 10::numeric, 'proportionnel', true, null::text),
    ('cumin', 7, 2::numeric, 'proportionnel', true, null::text),
    ('huile-olive', 8, 30::numeric, 'proportionnel', true, null::text),
    ('sel', 9, 4::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais fondre oignon et poivrons dans l’huile.', null::text, 'les poivrons sont tendres.', 600::int),
  (2, 'Ajoute ail, tomates, harissa et cumin, laisse compoter.', null::text, 'la sauce est épaisse.', 600::int),
  (3, 'Creuse des puits et casse-y les œufs, couvre.', null::text, 'les blancs sont pris, les jaunes encore coulants.', 360::int)
) as x(ordre, action, dose, repere, minuteur);

-- Brick à l’œuf
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('brick-oeuf', 'Brick à l’œuf', array[]::text[], array['Apéritifs et entrées', 'Cuisine de rue et repas à emporter']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 15, 15, array['Poêle']::text[],
    4, 'pieces', 2, 8, array['https://fr.wikipedia.org/wiki/Brick_(cuisine)']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'tunisie' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('feuilles-brick', 1, 4::numeric, 'proportionnel', true, null::text),
    ('oeuf', 2, 4::numeric, 'proportionnel', true, null::text),
    ('thon-boite', 3, 120::numeric, 'proportionnel', true, null::text),
    ('persil', 4, 10::numeric, 'proportionnel', true, null::text),
    ('harissa', 5, 5::numeric, 'proportionnel', false, null::text),
    ('huile-vegetale', 6, 300::numeric, 'fixe', true, null::text),
    ('sel', 7, 2::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Pose un peu de thon et de persil au centre d’une feuille, casse un œuf dessus.', null::text, 'le jaune est entier.', null::int),
  (2, 'Plie en triangle et fais glisser dans l’huile chaude.', null::text, 'la feuille est dorée des deux côtés.', 120::int)
) as x(ordre, action, dose, repere, minuteur);

-- Lablabi
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('lablabi', 'Lablabi', array[]::text[], array['Soupes et bouillons']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 10, 30, array['Casserole']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Lablabi']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'tunisie' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('pois-chiches', 1, 500::numeric, 'proportionnel', true, 'cuits'::text),
    ('ail', 2, 15::numeric, 'proportionnel', true, null::text),
    ('cumin', 3, 4::numeric, 'proportionnel', true, null::text),
    ('harissa', 4, 20::numeric, 'proportionnel', true, null::text),
    ('pain', 5, 150::numeric, 'proportionnel', true, 'rassis'::text),
    ('huile-olive', 6, 40::numeric, 'proportionnel', true, null::text),
    ('citron', 7, 1::numeric, 'proportionnel', true, null::text),
    ('oeuf', 8, 4::numeric, 'proportionnel', false, null::text),
    ('sel', 9, 6::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais chauffer pois chiches, ail et cumin dans 1,2 l d’eau.', null::text, 'le bouillon est parfumé.', 900::int),
  (2, 'Mets le pain en morceaux au fond des bols.', null::text, 'le pain couvre le fond.', null::int),
  (3, 'Verse le bouillon, ajoute harissa, huile, citron et éventuellement un œuf poché.', null::text, 'le pain est imbibé.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Pastilla au poulet
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('pastilla-poulet', 'Pastilla au poulet', array[]::text[], array['Plats au four et mijotés']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'avance', 60, 120, array['Moule rond', 'Four']::text[],
    6, 'personnes', 1, 12, array['https://fr.wikipedia.org/wiki/Pastilla']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'maroc' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('poulet', 1, 1000::numeric, 'proportionnel', true, null::text),
    ('oignon', 2, 400::numeric, 'proportionnel', true, null::text),
    ('oeuf', 3, 4::numeric, 'proportionnel', true, null::text),
    ('amande', 4, 150::numeric, 'proportionnel', true, null::text),
    ('sucre', 5, 40::numeric, 'proportionnel', true, null::text),
    ('cannelle', 6, 6::numeric, 'proportionnel', true, null::text),
    ('gingembre-poudre', 7, 3::numeric, 'proportionnel', true, null::text),
    ('safran', 8, 0.1::numeric, 'proportionnel', true, null::text),
    ('feuilles-brick', 9, 10::numeric, 'proportionnel', true, null::text),
    ('beurre', 10, 100::numeric, 'proportionnel', true, null::text),
    ('persil', 11, 20::numeric, 'proportionnel', true, null::text),
    ('sel', 12, 8::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais mijoter le poulet avec oignons, épices et 30 cl d’eau.', null::text, 'la viande se détache.', 2700::int),
  (2, 'Effiloche le poulet, fais réduire la sauce et ajoute les œufs battus.', null::text, 'la sauce est crémeuse.', 300::int),
  (3, 'Monte la pastilla : feuilles beurrées, poulet, amandes sucrées à la cannelle, feuilles.', null::text, 'les bords sont repliés.', null::int),
  (4, 'Cuis au four à 180 °C.', null::text, 'le dessus est doré et croustillant.', 1500::int)
) as x(ordre, action, dose, repere, minuteur);

-- Tajine de kefta aux œufs
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('kefta-tajine', 'Tajine de kefta aux œufs', array[]::text[], array['Plats au four et mijotés']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 25, 45, array['Tajine ou sauteuse']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Kefta']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'maroc' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('viande-hachee', 1, 600::numeric, 'proportionnel', true, null::text),
    ('oignon', 2, 100::numeric, 'proportionnel', true, null::text),
    ('persil', 3, 20::numeric, 'proportionnel', true, null::text),
    ('cumin', 4, 3::numeric, 'proportionnel', true, null::text),
    ('paprika', 5, 3::numeric, 'proportionnel', true, null::text),
    ('tomate', 6, 500::numeric, 'proportionnel', true, null::text),
    ('ail', 7, 10::numeric, 'proportionnel', true, null::text),
    ('oeuf', 8, 4::numeric, 'proportionnel', true, null::text),
    ('huile-olive', 9, 30::numeric, 'proportionnel', true, null::text),
    ('sel', 10, 8::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Mélange viande, oignon râpé, persil, épices et sel, forme des boulettes.', null::text, 'les boulettes ont la taille d’une noix.', null::int),
  (2, 'Fais une sauce avec tomates, ail et huile.', null::text, 'la sauce a épaissi.', 600::int),
  (3, 'Dépose les boulettes et laisse cuire.', null::text, 'les boulettes ne sont plus roses à cœur.', 900::int),
  (4, 'Casse les œufs dessus et couvre.', null::text, 'les blancs sont pris.', 300::int)
) as x(ordre, action, dose, repere, minuteur);

-- Épaule d’agneau façon méchoui
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('mechoui-four', 'Épaule d’agneau façon méchoui', array[]::text[], array['Viandes, poissons et fruits de mer']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 20, 260, array['Four', 'Plat à rôtir']::text[],
    6, 'personnes', 1, 12, array['https://fr.wikipedia.org/wiki/M%C3%A9choui']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'algerie-maroc' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('agneau', 1, 2000::numeric, 'proportionnel', true, null::text),
    ('beurre', 2, 80::numeric, 'proportionnel', true, null::text),
    ('cumin', 3, 10::numeric, 'proportionnel', true, null::text),
    ('ail', 4, 20::numeric, 'proportionnel', true, null::text),
    ('paprika', 5, 5::numeric, 'proportionnel', true, null::text),
    ('sel', 6, 15::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Masse l’épaule avec beurre, ail, cumin, paprika et sel.', null::text, 'toute la surface est couverte.', null::int),
  (2, 'Cuis au four à 160 °C en arrosant régulièrement.', null::text, 'la viande se détache à la fourchette.', 14400::int)
) as x(ordre, action, dose, repere, minuteur);

-- Houmous
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('houmous', 'Houmous', array['hummus']::text[], array['Apéritifs et entrées', 'Sauces et assaisonnements']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 10, 10, array['Mixeur']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Houmous']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'levant' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('pois-chiches', 1, 400::numeric, 'proportionnel', true, 'cuits'::text),
    ('sesame', 2, 60::numeric, 'proportionnel', true, 'en pâte (tahini)'::text),
    ('citron', 3, 1::numeric, 'proportionnel', true, null::text),
    ('ail', 4, 5::numeric, 'proportionnel', true, null::text),
    ('huile-olive', 5, 30::numeric, 'proportionnel', true, null::text),
    ('cumin', 6, 1::numeric, 'proportionnel', true, null::text),
    ('sel', 7, 4::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Mixe tous les ingrédients avec 4 c. à soupe d’eau froide.', null::text, 'la purée est lisse et légère.', null::int),
  (2, 'Verse dans un plat, creuse un sillon et arrose d’huile.', null::text, 'l’huile brille dans le sillon.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Falafels
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('falafels', 'Falafels', array[]::text[], array['Cuisine de rue et repas à emporter', 'Légumes et légumineuses']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 30, 750, array['Mixeur', 'Marmite pour friture']::text[],
    20, 'pieces', 10, 40, array['https://fr.wikipedia.org/wiki/Falafel']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'egypte-levant' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('pois-chiches', 1, 250::numeric, 'proportionnel', true, 'secs, trempés 12 h'::text),
    ('oignon', 2, 80::numeric, 'proportionnel', true, null::text),
    ('ail', 3, 10::numeric, 'proportionnel', true, null::text),
    ('persil', 4, 30::numeric, 'proportionnel', true, null::text),
    ('coriandre', 5, 30::numeric, 'proportionnel', true, null::text),
    ('cumin', 6, 4::numeric, 'proportionnel', true, null::text),
    ('levure-chimique', 7, 3::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 8, 600::numeric, 'fixe', true, null::text),
    ('sel', 9, 5::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais tremper les pois chiches une nuit (ne pas les cuire).', null::text, 'ils ont doublé de volume.', 43200::int),
  (2, 'Mixe avec herbes, oignon, ail, épices et sel.', null::text, 'le mélange ressemble à une semoule humide qui se tient.', null::int),
  (3, 'Ajoute la levure, forme des boulettes et fais frire.', null::text, 'elles sont brun doré.', 240::int)
) as x(ordre, action, dose, repere, minuteur);

-- Taboulé libanais
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('taboule', 'Taboulé libanais', array[]::text[], array['Apéritifs et entrées']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 25, 25, array['Couteau bien aiguisé']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Taboul%C3%A9']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'liban' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('persil', 1, 150::numeric, 'proportionnel', true, null::text),
    ('menthe', 2, 20::numeric, 'proportionnel', true, null::text),
    ('tomate', 3, 300::numeric, 'proportionnel', true, null::text),
    ('oignon-vert', 4, 40::numeric, 'proportionnel', true, null::text),
    ('semoule', 5, 40::numeric, 'proportionnel', true, 'boulgour fin'::text),
    ('citron', 6, 2::numeric, 'proportionnel', true, null::text),
    ('huile-olive', 7, 50::numeric, 'proportionnel', true, null::text),
    ('sel', 8, 4::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Rince le boulgour et laisse-le gonfler.', null::text, 'les grains sont tendres.', 600::int),
  (2, 'Cisèle finement persil et menthe, coupe les tomates en petits dés.', null::text, 'les herbes sont très finement hachées.', null::int),
  (3, 'Mélange tout avec citron, huile et sel.', null::text, 'le taboulé est surtout vert.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Shawarma de poulet
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('shawarma-poulet', 'Shawarma de poulet', array[]::text[], array['Cuisine de rue et repas à emporter']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 25, 145, array['Poêle ou four']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Chawarma']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'levant' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('blanc-poulet', 1, 700::numeric, 'proportionnel', true, null::text),
    ('yaourt', 2, 100::numeric, 'proportionnel', true, null::text),
    ('ail', 3, 15::numeric, 'proportionnel', true, null::text),
    ('cumin', 4, 4::numeric, 'proportionnel', true, null::text),
    ('paprika', 5, 4::numeric, 'proportionnel', true, null::text),
    ('curcuma', 6, 2::numeric, 'proportionnel', true, null::text),
    ('citron', 7, 1::numeric, 'proportionnel', true, null::text),
    ('tortilla', 8, 4::numeric, 'proportionnel', true, null::text),
    ('laitue', 9, 100::numeric, 'proportionnel', true, null::text),
    ('tomate', 10, 150::numeric, 'proportionnel', true, null::text),
    ('sel', 11, 6::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais mariner le poulet émincé dans yaourt, ail, épices et citron.', null::text, 'tout le poulet est enrobé.', 7200::int),
  (2, 'Saisis-le à feu vif.', null::text, 'les bords sont grillés et le cœur n’est plus rose.', 600::int),
  (3, 'Garnis les galettes de poulet et crudités, roule.', null::text, 'le rouleau est bien serré.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Mujaddara
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('mujaddara', 'Mujaddara', array[]::text[], array['Riz et autres céréales', 'Légumes et légumineuses']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 20, 60, array['Casserole', 'Poêle']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Mujaddara']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'liban-syrie-palestine' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('lentilles', 1, 250::numeric, 'proportionnel', true, null::text),
    ('riz-local', 2, 200::numeric, 'proportionnel', true, null::text),
    ('oignon', 3, 500::numeric, 'proportionnel', true, null::text),
    ('huile-olive', 4, 80::numeric, 'proportionnel', true, null::text),
    ('cumin', 5, 4::numeric, 'proportionnel', true, null::text),
    ('sel', 6, 8::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais cuire les lentilles à moitié.', null::text, 'elles sont encore fermes.', 900::int),
  (2, 'Ajoute riz, cumin, sel et eau à hauteur, couvre.', null::text, 'riz et lentilles sont tendres.', 1200::int),
  (3, 'Fais frire les oignons émincés dans l’huile.', null::text, 'ils sont brun foncé et croustillants.', 1200::int)
) as x(ordre, action, dose, repere, minuteur);

-- Koshari
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('koshari', 'Koshari', array[]::text[], array['Riz et autres céréales', 'Cuisine de rue et repas à emporter']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 40, 60, array['Plusieurs casseroles']::text[],
    6, 'personnes', 1, 12, array['https://fr.wikipedia.org/wiki/Koshari']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'egypte' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('riz-local', 1, 300::numeric, 'proportionnel', true, null::text),
    ('lentilles', 2, 200::numeric, 'proportionnel', true, null::text),
    ('pates', 3, 200::numeric, 'proportionnel', true, null::text),
    ('pois-chiches', 4, 200::numeric, 'proportionnel', true, 'cuits'::text),
    ('oignon', 5, 400::numeric, 'proportionnel', true, null::text),
    ('tomate-pelee', 6, 600::numeric, 'proportionnel', true, null::text),
    ('ail', 7, 15::numeric, 'proportionnel', true, null::text),
    ('vinaigre', 8, 30::numeric, 'proportionnel', true, null::text),
    ('cumin', 9, 4::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 10, 100::numeric, 'proportionnel', true, null::text),
    ('sel', 11, 10::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Cuis séparément lentilles, riz et pâtes.', null::text, 'chacun est juste tendre.', 1500::int),
  (2, 'Fais frire les oignons émincés.', null::text, 'ils sont croustillants.', 900::int),
  (3, 'Fais une sauce tomate à l’ail, au cumin et au vinaigre.', null::text, 'elle a réduit de moitié.', 900::int),
  (4, 'Superpose riz, lentilles, pâtes, pois chiches, sauce et oignons.', null::text, 'les oignons couronnent l’assiette.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Brochettes de kefta (adana)
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('kebab-adana', 'Brochettes de kefta (adana)', array[]::text[], array['Viandes, poissons et fruits de mer']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 20, 50, array['Grill', 'Brochettes plates']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Adana_kebap']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'turquie' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('viande-hachee', 1, 600::numeric, 'proportionnel', true, 'agneau de préférence'::text),
    ('oignon', 2, 80::numeric, 'proportionnel', true, null::text),
    ('piment-poudre', 3, 4::numeric, 'proportionnel', true, null::text),
    ('paprika', 4, 4::numeric, 'proportionnel', true, null::text),
    ('persil', 5, 15::numeric, 'proportionnel', true, null::text),
    ('sel', 6, 6::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Pétris longuement viande, oignon râpé égoutté, épices et sel.', null::text, 'la viande devient collante.', 600::int),
  (2, 'Moule autour des brochettes et laisse raffermir au frais.', null::text, 'la viande tient sur la brochette.', 1200::int),
  (3, 'Grille en retournant.', null::text, 'l’extérieur est doré et le cœur n’est plus rose.', 600::int)
) as x(ordre, action, dose, repere, minuteur);

-- Omelette baveuse
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('omelette', 'Omelette baveuse', array[]::text[], array['Petits-déjeuners et brunchs']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 10, 10, array['Poêle antiadhésive']::text[],
    1, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Omelette']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'france' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('oeuf', 1, 3::numeric, 'proportionnel', true, null::text),
    ('beurre', 2, 10::numeric, 'proportionnel', true, null::text),
    ('fromage', 3, 20::numeric, 'proportionnel', false, null::text),
    ('sel', 4, 1::numeric, 'proportionnel', true, null::text),
    ('poivre', 5, 0.5::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Bats les œufs avec sel et poivre.', null::text, 'blancs et jaunes sont bien mélangés.', null::int),
  (2, 'Fais fondre le beurre à feu moyen, verse les œufs et ramène les bords vers le centre.', null::text, 'le dessous est pris, le dessus encore crémeux.', 120::int),
  (3, 'Plie en deux et fais glisser dans l’assiette.', null::text, 'l’omelette est dorée sans être brune.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Crêpes
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('crepes', 'Crêpes', array[]::text[], array['Petits-déjeuners et brunchs', 'Desserts']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 30, 90, array['Poêle à crêpes', 'Fouet']::text[],
    15, 'pieces', 8, 30, array['https://fr.wikipedia.org/wiki/Cr%C3%AApe']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'france-bretagne' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('farine', 1, 250::numeric, 'proportionnel', true, null::text),
    ('oeuf', 2, 4::numeric, 'proportionnel', true, null::text),
    ('lait', 3, 500::numeric, 'proportionnel', true, null::text),
    ('sucre', 4, 30::numeric, 'proportionnel', true, null::text),
    ('beurre', 5, 50::numeric, 'proportionnel', true, 'fondu'::text),
    ('sel', 6, 2::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Mélange farine, sucre, sel puis les œufs.', null::text, 'la pâte est épaisse et lisse.', null::int),
  (2, 'Ajoute le lait petit à petit, puis le beurre fondu.', null::text, 'la pâte est fluide, sans grumeaux.', null::int),
  (3, 'Laisse reposer.', null::text, 'la mousse a disparu.', 3600::int),
  (4, 'Verse une petite louche dans la poêle chaude, retourne.', null::text, 'les bords se décollent et dorent.', 60::int)
) as x(ordre, action, dose, repere, minuteur);

-- Quiche lorraine
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('quiche-lorraine', 'Quiche lorraine', array[]::text[], array['Plats au four et mijotés']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 20, 60, array['Moule à tarte', 'Four']::text[],
    6, 'personnes', 1, 12, array['https://fr.wikipedia.org/wiki/Quiche_lorraine']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'france-lorraine' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('pate-feuilletee', 1, 230::numeric, 'fixe', true, 'ou brisée'::text),
    ('lardons', 2, 200::numeric, 'proportionnel', true, null::text),
    ('oeuf', 3, 3::numeric, 'proportionnel', true, null::text),
    ('creme', 4, 200::numeric, 'proportionnel', true, null::text),
    ('lait', 5, 200::numeric, 'proportionnel', true, null::text),
    ('muscade', 6, 0.5::numeric, 'proportionnel', true, null::text),
    ('sel', 7, 2::numeric, 'proportionnel', true, null::text),
    ('poivre', 8, 1::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fonce le moule avec la pâte et pique le fond.', null::text, 'la pâte couvre bien les bords.', null::int),
  (2, 'Fais dorer les lardons à la poêle.', null::text, 'ils ont rendu leur graisse.', 300::int),
  (3, 'Bats œufs, crème, lait, muscade, sel et poivre.', null::text, 'le mélange est homogène.', null::int),
  (4, 'Répartis les lardons, verse l’appareil et cuis à 180 °C.', null::text, 'le centre est pris et doré.', 2100::int)
) as x(ordre, action, dose, repere, minuteur);

-- Ratatouille
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('ratatouille', 'Ratatouille', array[]::text[], array['Légumes et légumineuses', 'Accompagnements']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 30, 90, array['Cocotte']::text[],
    6, 'personnes', 1, 12, array['https://fr.wikipedia.org/wiki/Ratatouille']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'france-provence' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('aubergine', 1, 400::numeric, 'proportionnel', true, null::text),
    ('courgette', 2, 400::numeric, 'proportionnel', true, null::text),
    ('poivron', 3, 300::numeric, 'proportionnel', true, null::text),
    ('tomate', 4, 600::numeric, 'proportionnel', true, null::text),
    ('oignon', 5, 200::numeric, 'proportionnel', true, null::text),
    ('ail', 6, 15::numeric, 'proportionnel', true, null::text),
    ('thym', 7, 2::numeric, 'proportionnel', true, null::text),
    ('huile-olive', 8, 80::numeric, 'proportionnel', true, null::text),
    ('sel', 9, 8::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Coupe tous les légumes en dés.', null::text, 'les dés font environ 2 cm.', null::int),
  (2, 'Fais revenir séparément aubergines, courgettes puis poivrons dans l’huile.', null::text, 'chaque légume est légèrement doré.', 1200::int),
  (3, 'Réunis tout avec oignon, ail, tomates et thym, mijote à couvert.', null::text, 'les légumes sont fondants mais gardent leur forme.', 2700::int)
) as x(ordre, action, dose, repere, minuteur);

-- Bœuf bourguignon
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('boeuf-bourguignon', 'Bœuf bourguignon', array[]::text[], array['Plats au four et mijotés']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 40, 210, array['Cocotte en fonte']::text[],
    6, 'personnes', 1, 12, array['https://fr.wikipedia.org/wiki/B%C5%93uf_bourguignon']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'france-bourgogne' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('boeuf', 1, 1200::numeric, 'proportionnel', true, 'à braiser'::text),
    ('lardons', 2, 150::numeric, 'proportionnel', true, null::text),
    ('carotte', 3, 300::numeric, 'proportionnel', true, null::text),
    ('oignon', 4, 200::numeric, 'proportionnel', true, null::text),
    ('champignon', 5, 250::numeric, 'proportionnel', true, null::text),
    ('ail', 6, 10::numeric, 'proportionnel', true, null::text),
    ('farine', 7, 30::numeric, 'proportionnel', true, null::text),
    ('bouillon', 8, 1::numeric, 'proportionnel', true, null::text),
    ('concentre-tomate', 9, 30::numeric, 'proportionnel', true, null::text),
    ('thym', 10, 2::numeric, 'proportionnel', true, null::text),
    ('laurier', 11, 1::numeric, 'proportionnel', true, null::text),
    ('beurre', 12, 30::numeric, 'proportionnel', true, null::text),
    ('sel', 13, 10::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais dorer la viande en plusieurs fois dans le beurre.', null::text, 'chaque morceau a une croûte brune.', 900::int),
  (2, 'Fais revenir lardons, oignons, carottes, puis saupoudre de farine.', null::text, 'la farine a légèrement roussi.', 300::int),
  (3, 'Remets la viande, couvre de bouillon (ou vin rouge, facultatif), ajoute concentré et herbes.', null::text, 'la viande est juste couverte.', null::int),
  (4, 'Mijote à couvert à feu très doux, ajoute les champignons à la fin.', null::text, 'la viande se coupe à la cuillère.', 10800::int)
) as x(ordre, action, dose, repere, minuteur);

-- Poulet rôti et pommes de terre
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('poulet-roti', 'Poulet rôti et pommes de terre', array[]::text[], array['Viandes, poissons et fruits de mer']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 15, 90, array['Four', 'Plat à rôtir']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Poulet_r%C3%B4ti']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'france' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('poulet', 1, 1500::numeric, 'proportionnel', true, 'entier'::text),
    ('pomme-de-terre', 2, 800::numeric, 'proportionnel', true, null::text),
    ('beurre', 3, 40::numeric, 'proportionnel', true, null::text),
    ('ail', 4, 15::numeric, 'proportionnel', true, null::text),
    ('thym', 5, 2::numeric, 'proportionnel', true, null::text),
    ('sel', 6, 10::numeric, 'proportionnel', true, null::text),
    ('poivre', 7, 1::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Frotte le poulet de beurre, sel et poivre, entoure-le de pommes de terre en morceaux et d’ail.', null::text, 'le poulet est bien enduit.', null::int),
  (2, 'Rôtis à 200 °C en arrosant toutes les 20 minutes.', null::text, 'le jus qui sort de la cuisse est clair, sans rose.', 4500::int)
) as x(ordre, action, dose, repere, minuteur);

-- Gratin dauphinois
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('gratin-dauphinois', 'Gratin dauphinois', array[]::text[], array['Accompagnements', 'Plats au four et mijotés']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 20, 90, array['Plat à gratin', 'Four']::text[],
    6, 'personnes', 1, 12, array['https://fr.wikipedia.org/wiki/Gratin_dauphinois']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'france-dauphine' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('pomme-de-terre', 1, 1200::numeric, 'proportionnel', true, null::text),
    ('lait', 2, 500::numeric, 'proportionnel', true, null::text),
    ('creme', 3, 250::numeric, 'proportionnel', true, null::text),
    ('ail', 4, 5::numeric, 'proportionnel', true, null::text),
    ('muscade', 5, 0.5::numeric, 'proportionnel', true, null::text),
    ('beurre', 6, 15::numeric, 'proportionnel', true, null::text),
    ('sel', 7, 8::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Coupe les pommes de terre en fines rondelles, sans les rincer.', null::text, 'les tranches font 3 mm.', null::int),
  (2, 'Fais frémir avec lait, ail, muscade et sel en remuant.', null::text, 'le lait a épaissi.', 600::int),
  (3, 'Verse dans le plat beurré, ajoute la crème et enfourne à 160 °C.', null::text, 'le dessus est doré et un couteau entre sans résistance.', 3600::int)
) as x(ordre, action, dose, repere, minuteur);

-- Soupe à l’oignon
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('soupe-oignon', 'Soupe à l’oignon', array[]::text[], array['Soupes et bouillons']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 20, 70, array['Cocotte', 'Bols allant au four']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Soupe_%C3%A0_l%E2%80%99oignon']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'france' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('oignon', 1, 800::numeric, 'proportionnel', true, null::text),
    ('beurre', 2, 50::numeric, 'proportionnel', true, null::text),
    ('farine', 3, 20::numeric, 'proportionnel', true, null::text),
    ('bouillon', 4, 2::numeric, 'proportionnel', true, null::text),
    ('pain', 5, 150::numeric, 'proportionnel', true, null::text),
    ('fromage', 6, 120::numeric, 'proportionnel', true, null::text),
    ('sel', 7, 5::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais fondre les oignons émincés dans le beurre à feu doux.', null::text, 'ils sont bruns et caramélisés.', 2100::int),
  (2, 'Saupoudre de farine, ajoute 1,2 l de bouillon.', null::text, 'la soupe frémit.', 1200::int),
  (3, 'Verse en bols, couvre de pain et de fromage, gratine.', null::text, 'le fromage fait des bulles dorées.', 300::int)
) as x(ordre, action, dose, repere, minuteur);

-- Croque-monsieur
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('croque-monsieur', 'Croque-monsieur', array[]::text[], array['Cuisine de rue et repas à emporter']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 10, 20, array['Four ou poêle']::text[],
    2, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Croque-monsieur']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'france' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('pain-mie', 1, 160::numeric, 'proportionnel', true, null::text),
    ('jambon', 2, 80::numeric, 'proportionnel', true, null::text),
    ('fromage', 3, 80::numeric, 'proportionnel', true, null::text),
    ('beurre', 4, 20::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Beurre le pain, garnis de jambon et de fromage, referme.', null::text, 'le fromage ne dépasse pas trop.', null::int),
  (2, 'Couvre d’un peu de fromage et cuis au four à 200 °C.', null::text, 'le dessus est doré et le fromage a fondu.', 600::int)
) as x(ordre, action, dose, repere, minuteur);

-- Salade niçoise
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('salade-nicoise', 'Salade niçoise', array[]::text[], array['Apéritifs et entrées']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 20, 30, array['Saladier']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Salade_ni%C3%A7oise']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'france-nice' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('tomate', 1, 400::numeric, 'proportionnel', true, null::text),
    ('oeuf', 2, 4::numeric, 'proportionnel', true, null::text),
    ('thon-boite', 3, 200::numeric, 'proportionnel', true, null::text),
    ('laitue', 4, 150::numeric, 'proportionnel', true, null::text),
    ('poivron', 5, 100::numeric, 'proportionnel', true, null::text),
    ('oignon-vert', 6, 30::numeric, 'proportionnel', true, null::text),
    ('huile-olive', 7, 50::numeric, 'proportionnel', true, null::text),
    ('vinaigre', 8, 15::numeric, 'proportionnel', true, null::text),
    ('sel', 9, 3::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais cuire les œufs.', null::text, 'le jaune est juste pris.', 540::int),
  (2, 'Coupe tomates et poivron, effeuille la salade.', null::text, 'les légumes sont en morceaux d’une bouchée.', null::int),
  (3, 'Dispose tout avec le thon et les œufs en quartiers, assaisonne.', null::text, 'chaque ingrédient est visible.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Spaghetti à la sauce bolognaise
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('spaghetti-bolognaise', 'Spaghetti à la sauce bolognaise', array[]::text[], array['Pâtes et nouilles']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 20, 80, array['Grande casserole', 'Sauteuse']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Sauce_bolognaise']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'italie' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('pates', 1, 400::numeric, 'proportionnel', true, 'spaghetti'::text),
    ('viande-hachee', 2, 400::numeric, 'proportionnel', true, null::text),
    ('oignon', 3, 100::numeric, 'proportionnel', true, null::text),
    ('carotte', 4, 100::numeric, 'proportionnel', true, null::text),
    ('celeri', 5, 50::numeric, 'proportionnel', true, null::text),
    ('tomate-pelee', 6, 800::numeric, 'proportionnel', true, null::text),
    ('huile-olive', 7, 30::numeric, 'proportionnel', true, null::text),
    ('parmesan', 8, 40::numeric, 'proportionnel', false, null::text),
    ('sel', 9, 10::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais revenir oignon, carotte et céleri hachés finement.', null::text, 'ils sont tendres.', 480::int),
  (2, 'Ajoute la viande et fais-la dorer.', null::text, 'elle n’est plus rose.', 480::int),
  (3, 'Ajoute les tomates et mijote à couvert.', null::text, 'la sauce est épaisse.', 2700::int),
  (4, 'Cuis les pâtes dans beaucoup d’eau salée.', null::text, 'elles sont tendres mais encore un peu fermes (al dente).', 600::int)
) as x(ordre, action, dose, repere, minuteur);

-- Pizza margherita
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('pizza-margherita', 'Pizza margherita', array[]::text[], array['Cuisine de rue et repas à emporter', 'Boulangerie']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 30, 150, array['Four très chaud', 'Plaque']::text[],
    2, 'pieces', 1, 4, array['https://fr.wikipedia.org/wiki/Pizza_Margherita']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'italie-naples' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('farine', 1, 400::numeric, 'proportionnel', true, null::text),
    ('levure-boulangere', 2, 5::numeric, 'proportionnel', true, null::text),
    ('sel', 3, 8::numeric, 'proportionnel', true, null::text),
    ('huile-olive', 4, 20::numeric, 'proportionnel', true, null::text),
    ('tomate-pelee', 5, 250::numeric, 'proportionnel', true, null::text),
    ('mozzarella', 6, 250::numeric, 'proportionnel', true, null::text),
    ('basilic', 7, 5::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Pétris farine, levure, sel et 25 cl d’eau tiède.', null::text, 'la pâte est lisse et élastique.', 600::int),
  (2, 'Laisse lever couvert.', null::text, 'la pâte a doublé de volume.', 5400::int),
  (3, 'Étale, garnis de tomate écrasée salée et de mozzarella.', null::text, 'le bord est laissé libre.', null::int),
  (4, 'Cuis au four à la température maximale.', null::text, 'les bords sont gonflés et tachetés de brun.', 600::int)
) as x(ordre, action, dose, repere, minuteur);

-- Risotto aux champignons
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('risotto-champignons', 'Risotto aux champignons', array[]::text[], array['Riz et autres céréales']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 35, 35, array['Sauteuse', 'Louche']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Risotto']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'italie' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('riz-arborio', 1, 320::numeric, 'proportionnel', true, null::text),
    ('champignon', 2, 300::numeric, 'proportionnel', true, null::text),
    ('oignon', 3, 80::numeric, 'proportionnel', true, null::text),
    ('bouillon', 4, 2::numeric, 'proportionnel', true, null::text),
    ('beurre', 5, 40::numeric, 'proportionnel', true, null::text),
    ('parmesan', 6, 60::numeric, 'proportionnel', true, null::text),
    ('huile-olive', 7, 20::numeric, 'proportionnel', true, null::text),
    ('sel', 8, 4::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais revenir l’oignon puis le riz dans l’huile.', null::text, 'les grains deviennent nacrés.', 180::int),
  (2, 'Ajoute le bouillon chaud louche par louche en remuant.', null::text, 'le riz est crémeux et tendre avec un petit cœur ferme.', 1080::int),
  (3, 'Ajoute champignons sautés, beurre et parmesan hors du feu.', null::text, 'le risotto ondule quand on secoue la casserole.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Lasagnes
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('lasagnes', 'Lasagnes', array[]::text[], array['Pâtes et nouilles', 'Plats au four et mijotés']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 40, 120, array['Plat à four']::text[],
    6, 'personnes', 1, 12, array['https://fr.wikipedia.org/wiki/Lasagne']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'italie' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('pates', 1, 300::numeric, 'proportionnel', true, 'plaques de lasagnes'::text),
    ('viande-hachee', 2, 500::numeric, 'proportionnel', true, null::text),
    ('tomate-pelee', 3, 800::numeric, 'proportionnel', true, null::text),
    ('oignon', 4, 100::numeric, 'proportionnel', true, null::text),
    ('beurre', 5, 50::numeric, 'proportionnel', true, null::text),
    ('farine', 6, 50::numeric, 'proportionnel', true, null::text),
    ('lait', 7, 600::numeric, 'proportionnel', true, null::text),
    ('fromage', 8, 150::numeric, 'proportionnel', true, null::text),
    ('muscade', 9, 0.5::numeric, 'proportionnel', true, null::text),
    ('sel', 10, 10::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Prépare une sauce viande-tomate.', null::text, 'elle a réduit et épaissi.', 1800::int),
  (2, 'Fais une béchamel : beurre, farine puis lait en fouettant.', null::text, 'elle nappe la cuillère.', 600::int),
  (3, 'Alterne plaques, sauce viande, béchamel ; finis par béchamel et fromage.', null::text, 'il y a au moins 3 couches.', null::int),
  (4, 'Cuis à 180 °C.', null::text, 'le dessus est doré et ça bouillonne sur les bords.', 2400::int)
) as x(ordre, action, dose, repere, minuteur);

-- Paella aux fruits de mer et poulet
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('paella', 'Paella aux fruits de mer et poulet', array[]::text[], array['Riz et autres céréales']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 30, 60, array['Grande poêle large']::text[],
    6, 'personnes', 1, 12, array['https://fr.wikipedia.org/wiki/Paella']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'espagne' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('riz-arborio', 1, 450::numeric, 'proportionnel', true, 'riz rond'::text),
    ('poulet', 2, 600::numeric, 'proportionnel', true, null::text),
    ('crevette', 3, 300::numeric, 'proportionnel', true, null::text),
    ('poivron', 4, 150::numeric, 'proportionnel', true, null::text),
    ('petits-pois', 5, 150::numeric, 'proportionnel', true, null::text),
    ('tomate', 6, 200::numeric, 'proportionnel', true, null::text),
    ('ail', 7, 10::numeric, 'proportionnel', true, null::text),
    ('safran', 8, 0.2::numeric, 'proportionnel', true, null::text),
    ('paprika', 9, 4::numeric, 'proportionnel', true, null::text),
    ('bouillon', 10, 2::numeric, 'proportionnel', true, null::text),
    ('huile-olive', 11, 60::numeric, 'proportionnel', true, null::text),
    ('citron', 12, 1::numeric, 'proportionnel', true, null::text),
    ('sel', 13, 8::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais dorer le poulet dans l’huile, ajoute poivron, ail et tomate râpée.', null::text, 'la tomate a réduit.', 900::int),
  (2, 'Ajoute riz, paprika, safran puis 1,3 l de bouillon chaud.', null::text, 'le riz est réparti en couche fine.', null::int),
  (3, 'Cuis sans remuer, ajoute crevettes et petits pois à mi-cuisson.', null::text, 'le riz a absorbé le liquide et accroche légèrement au fond.', 1200::int),
  (4, 'Couvre d’un torchon et laisse reposer.', null::text, 'le riz est tendre.', 300::int)
) as x(ordre, action, dose, repere, minuteur);

-- Tortilla de patatas
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('tortilla-espagnole', 'Tortilla de patatas', array[]::text[], array['Petits-déjeuners et brunchs', 'Apéritifs et entrées']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 30, 40, array['Poêle', 'Assiette plate']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Tortilla_de_patatas']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'espagne' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('pomme-de-terre', 1, 600::numeric, 'proportionnel', true, null::text),
    ('oignon', 2, 150::numeric, 'proportionnel', true, null::text),
    ('oeuf', 3, 6::numeric, 'proportionnel', true, null::text),
    ('huile-olive', 4, 200::numeric, 'proportionnel', true, null::text),
    ('sel', 5, 6::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais confire pommes de terre en fines tranches et oignon dans l’huile à feu doux.', null::text, 'ils sont tendres sans être dorés.', 1200::int),
  (2, 'Égoutte et mélange aux œufs battus salés.', null::text, 'tout est enrobé d’œuf.', null::int),
  (3, 'Cuis dans la poêle, retourne avec une assiette, puis termine.', null::text, 'les deux faces sont dorées, le cœur juste pris.', 480::int)
) as x(ordre, action, dose, repere, minuteur);

-- Moussaka
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('moussaka', 'Moussaka', array[]::text[], array['Plats au four et mijotés']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 50, 120, array['Plat à four']::text[],
    6, 'personnes', 1, 12, array['https://fr.wikipedia.org/wiki/Moussaka']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'grece' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('aubergine', 1, 1000::numeric, 'proportionnel', true, null::text),
    ('viande-hachee', 2, 500::numeric, 'proportionnel', true, null::text),
    ('oignon', 3, 150::numeric, 'proportionnel', true, null::text),
    ('tomate-pelee', 4, 400::numeric, 'proportionnel', true, null::text),
    ('cannelle', 5, 2::numeric, 'proportionnel', true, null::text),
    ('beurre', 6, 50::numeric, 'proportionnel', true, null::text),
    ('farine', 7, 50::numeric, 'proportionnel', true, null::text),
    ('lait', 8, 500::numeric, 'proportionnel', true, null::text),
    ('oeuf', 9, 1::numeric, 'proportionnel', true, null::text),
    ('fromage', 10, 60::numeric, 'proportionnel', true, null::text),
    ('huile-olive', 11, 60::numeric, 'proportionnel', true, null::text),
    ('sel', 12, 10::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Coupe les aubergines en tranches, badigeonne d’huile et fais-les rôtir.', null::text, 'elles sont tendres et dorées.', 1500::int),
  (2, 'Fais une sauce viande, oignon, tomate et cannelle.', null::text, 'elle a épaissi.', 1200::int),
  (3, 'Fais une béchamel et ajoute l’œuf hors du feu.', null::text, 'elle est lisse.', 600::int),
  (4, 'Alterne aubergines et viande, couvre de béchamel et fromage, cuis à 180 °C.', null::text, 'le dessus est doré.', 2700::int)
) as x(ordre, action, dose, repere, minuteur);

-- Salade grecque
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('salade-grecque', 'Salade grecque', array[]::text[], array['Apéritifs et entrées']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 15, 15, array['Saladier']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Salade_grecque']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'grece' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('tomate', 1, 400::numeric, 'proportionnel', true, null::text),
    ('concombre', 2, 300::numeric, 'proportionnel', true, null::text),
    ('poivron', 3, 100::numeric, 'proportionnel', true, null::text),
    ('oignon', 4, 50::numeric, 'proportionnel', true, null::text),
    ('feta', 5, 200::numeric, 'proportionnel', true, null::text),
    ('origan', 6, 1::numeric, 'proportionnel', true, null::text),
    ('huile-olive', 7, 50::numeric, 'proportionnel', true, null::text),
    ('sel', 8, 3::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Coupe tomates, concombre et poivron en gros morceaux, l’oignon en fines lamelles.', null::text, 'les morceaux sont d’une bouchée.', null::int),
  (2, 'Pose la feta en bloc, parsème d’origan et arrose d’huile.', null::text, 'la feta est entière sur le dessus.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Poisson pané et frites
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('fish-and-chips', 'Poisson pané et frites', array[]::text[], array['Cuisine de rue et repas à emporter']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 35, 45, array['Marmite pour friture', 'Thermomètre conseillé']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Fish_and_chips']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'royaume-uni' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('filet-poisson', 1, 600::numeric, 'proportionnel', true, null::text),
    ('farine', 2, 200::numeric, 'proportionnel', true, null::text),
    ('levure-chimique', 3, 5::numeric, 'proportionnel', true, null::text),
    ('pomme-de-terre', 4, 1000::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 5, 1500::numeric, 'fixe', true, null::text),
    ('citron', 6, 1::numeric, 'proportionnel', true, null::text),
    ('sel', 7, 8::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Coupe les pommes de terre en bâtonnets et fais-les frire une première fois à feu moyen.', null::text, 'elles sont tendres mais pâles.', 360::int),
  (2, 'Mélange farine, levure, sel et 25 cl d’eau très froide.', null::text, 'la pâte est fluide comme une crème épaisse.', null::int),
  (3, 'Trempe le poisson dans la pâte et fais-le frire.', null::text, 'la pâte est dorée et gonflée.', 360::int),
  (4, 'Refais frire les frites à feu vif.', null::text, 'elles sont croustillantes et dorées.', 180::int)
) as x(ordre, action, dose, repere, minuteur);

-- Pierogi pomme de terre et fromage
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('pierogi', 'Pierogi pomme de terre et fromage', array[]::text[], array['Pâtes et nouilles']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'avance', 60, 80, array['Rouleau', 'Emporte-pièce']::text[],
    30, 'pieces', 15, 60, array['https://fr.wikipedia.org/wiki/Pierogi']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'pologne' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('farine', 1, 400::numeric, 'proportionnel', true, null::text),
    ('oeuf', 2, 1::numeric, 'proportionnel', true, null::text),
    ('pomme-de-terre', 3, 500::numeric, 'proportionnel', true, null::text),
    ('fromage', 4, 200::numeric, 'proportionnel', true, null::text),
    ('oignon', 5, 150::numeric, 'proportionnel', true, null::text),
    ('beurre', 6, 50::numeric, 'proportionnel', true, null::text),
    ('sel', 7, 8::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Pétris farine, œuf, sel et 20 cl d’eau tiède.', null::text, 'la pâte est souple.', 600::int),
  (2, 'Écrase les pommes de terre cuites avec le fromage et l’oignon fondu.', null::text, 'la farce est lisse.', null::int),
  (3, 'Étale, découpe des disques, farcis et ferme en demi-lune.', null::text, 'les bords sont bien pincés.', null::int),
  (4, 'Fais pocher dans l’eau salée.', null::text, 'ils remontent à la surface depuis 2 minutes.', 240::int)
) as x(ordre, action, dose, repere, minuteur);

-- Riz sauté cantonais
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('riz-cantonais', 'Riz sauté cantonais', array[]::text[], array['Riz et autres céréales']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 15, 20, array['Wok ou grande poêle']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Riz_cantonais']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'chine' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('riz-local', 1, 600::numeric, 'proportionnel', true, 'cuit la veille'::text),
    ('oeuf', 2, 3::numeric, 'proportionnel', true, null::text),
    ('jambon', 3, 120::numeric, 'proportionnel', true, null::text),
    ('petits-pois', 4, 120::numeric, 'proportionnel', true, null::text),
    ('oignon-vert', 5, 30::numeric, 'proportionnel', true, null::text),
    ('sauce-soja', 6, 30::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 7, 40::numeric, 'proportionnel', true, null::text),
    ('sel', 8, 3::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Brouille les œufs dans un peu d’huile et réserve.', null::text, 'ils sont juste pris.', 60::int),
  (2, 'Fais sauter le riz froid à feu vif.', null::text, 'les grains sont séparés et chauds.', 240::int),
  (3, 'Ajoute jambon, petits pois, œufs, soja et cive.', null::text, 'tout est chaud et bien mélangé.', 180::int)
) as x(ordre, action, dose, repere, minuteur);

-- Curry de poulet au lait de coco
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('poulet-curry-coco', 'Curry de poulet au lait de coco', array[]::text[], array['Plats au four et mijotés']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 20, 50, array['Sauteuse']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Curry']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'inde' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('blanc-poulet', 1, 700::numeric, 'proportionnel', true, null::text),
    ('lait-coco', 2, 400::numeric, 'proportionnel', true, null::text),
    ('oignon', 3, 150::numeric, 'proportionnel', true, null::text),
    ('ail', 4, 10::numeric, 'proportionnel', true, null::text),
    ('gingembre', 5, 15::numeric, 'proportionnel', true, null::text),
    ('tomate', 6, 200::numeric, 'proportionnel', true, null::text),
    ('garam-masala', 7, 8::numeric, 'proportionnel', true, null::text),
    ('curcuma', 8, 3::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 9, 30::numeric, 'proportionnel', true, null::text),
    ('coriandre', 10, 10::numeric, 'proportionnel', true, null::text),
    ('sel', 11, 6::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais fondre oignon, ail et gingembre.', null::text, 'l’oignon est doré.', 480::int),
  (2, 'Ajoute épices et tomates.', null::text, 'l’huile se sépare de la sauce.', 300::int),
  (3, 'Ajoute le poulet en morceaux et le lait de coco, mijote.', null::text, 'le poulet est cuit et la sauce nappe.', 1200::int)
) as x(ordre, action, dose, repere, minuteur);

-- Dal de lentilles corail
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('dal', 'Dal de lentilles corail', array[]::text[], array['Légumes et légumineuses', 'Soupes et bouillons']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 15, 40, array['Casserole']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Dal_(plat)']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'inde' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('lentilles', 1, 250::numeric, 'proportionnel', true, 'corail'::text),
    ('oignon', 2, 100::numeric, 'proportionnel', true, null::text),
    ('ail', 3, 10::numeric, 'proportionnel', true, null::text),
    ('gingembre', 4, 10::numeric, 'proportionnel', true, null::text),
    ('tomate', 5, 200::numeric, 'proportionnel', true, null::text),
    ('curcuma', 6, 3::numeric, 'proportionnel', true, null::text),
    ('cumin', 7, 3::numeric, 'proportionnel', true, null::text),
    ('lait-coco', 8, 200::numeric, 'proportionnel', false, null::text),
    ('huile-vegetale', 9, 30::numeric, 'proportionnel', true, null::text),
    ('sel', 10, 6::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Cuis les lentilles rincées avec le curcuma dans 80 cl d’eau.', null::text, 'elles se défont.', 1200::int),
  (2, 'Fais revenir cumin, oignon, ail, gingembre et tomate dans l’huile.', null::text, 'les tomates sont fondues.', 480::int),
  (3, 'Verse sur les lentilles, ajoute le lait de coco et sale.', null::text, 'le dal est onctueux.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Biryani de poulet
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('biryani-poulet', 'Biryani de poulet', array[]::text[], array['Riz et autres céréales']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'avance', 50, 150, array['Cocotte à couvercle lourd']::text[],
    6, 'personnes', 1, 12, array['https://fr.wikipedia.org/wiki/Biryani']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'inde-pakistan' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('riz-local', 1, 500::numeric, 'proportionnel', true, 'basmati'::text),
    ('poulet', 2, 1000::numeric, 'proportionnel', true, null::text),
    ('yaourt', 3, 200::numeric, 'proportionnel', true, null::text),
    ('oignon', 4, 400::numeric, 'proportionnel', true, null::text),
    ('ail', 5, 15::numeric, 'proportionnel', true, null::text),
    ('gingembre', 6, 15::numeric, 'proportionnel', true, null::text),
    ('garam-masala', 7, 10::numeric, 'proportionnel', true, null::text),
    ('curcuma', 8, 3::numeric, 'proportionnel', true, null::text),
    ('safran', 9, 0.1::numeric, 'proportionnel', true, null::text),
    ('menthe', 10, 10::numeric, 'proportionnel', true, null::text),
    ('coriandre', 11, 10::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 12, 100::numeric, 'proportionnel', true, null::text),
    ('sel', 13, 12::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais mariner le poulet dans yaourt, ail, gingembre et épices.', null::text, 'il est bien enrobé.', 3600::int),
  (2, 'Fais frire les oignons émincés.', null::text, 'ils sont bruns et croustillants.', 900::int),
  (3, 'Précuis le riz à l’eau salée.', null::text, 'il est cuit aux deux tiers.', 360::int),
  (4, 'Alterne poulet, oignons, herbes et riz, arrose de safran infusé, couvre hermétiquement.', null::text, 'le couvercle ferme bien.', null::int),
  (5, 'Cuis à feu très doux.', null::text, 'le riz est tendre et le poulet cuit.', 2400::int)
) as x(ordre, action, dose, repere, minuteur);

-- Pad thaï
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('pad-thai', 'Pad thaï', array[]::text[], array['Pâtes et nouilles']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 25, 50, array['Wok']::text[],
    2, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Pad_tha%C3%AF']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'thailande' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('nouilles-riz', 1, 200::numeric, 'proportionnel', true, null::text),
    ('crevette', 2, 200::numeric, 'proportionnel', true, null::text),
    ('oeuf', 3, 2::numeric, 'proportionnel', true, null::text),
    ('tofu', 4, 100::numeric, 'proportionnel', true, null::text),
    ('arachide', 5, 40::numeric, 'proportionnel', true, null::text),
    ('nuoc-mam', 6, 30::numeric, 'proportionnel', true, null::text),
    ('sucre', 7, 20::numeric, 'proportionnel', true, null::text),
    ('citron-vert', 8, 1::numeric, 'proportionnel', true, null::text),
    ('oignon-vert', 9, 20::numeric, 'proportionnel', true, null::text),
    ('ail', 10, 5::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 11, 30::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais tremper les nouilles dans l’eau tiède.', null::text, 'elles sont souples mais fermes.', 1500::int),
  (2, 'Saisis ail, tofu et crevettes au wok.', null::text, 'les crevettes sont roses.', 180::int),
  (3, 'Pousse sur le côté, brouille les œufs.', null::text, 'ils sont juste pris.', 60::int),
  (4, 'Ajoute nouilles, sauce de poisson, sucre, citron ; sers avec cacahuètes et cive.', null::text, 'les nouilles sont enrobées et brillantes.', 180::int)
) as x(ordre, action, dose, repere, minuteur);

-- Rouleaux de printemps
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('nems', 'Rouleaux de printemps', array['gỏi cuốn']::text[], array['Apéritifs et entrées']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 35, 35, array['Bol d’eau tiède']::text[],
    12, 'pieces', 6, 24, array['https://fr.wikipedia.org/wiki/Rouleau_de_printemps']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'viet-nam' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('crevette', 1, 250::numeric, 'proportionnel', true, 'cuites'::text),
    ('nouilles-riz', 2, 100::numeric, 'proportionnel', true, null::text),
    ('laitue', 3, 100::numeric, 'proportionnel', true, null::text),
    ('menthe', 4, 15::numeric, 'proportionnel', true, null::text),
    ('coriandre', 5, 15::numeric, 'proportionnel', true, null::text),
    ('carotte', 6, 100::numeric, 'proportionnel', true, null::text),
    ('tortilla', 7, 12::numeric, 'proportionnel', true, 'galettes de riz'::text),
    ('nuoc-mam', 8, 30::numeric, 'proportionnel', true, null::text),
    ('citron-vert', 9, 1::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Cuis les vermicelles et égoutte-les.', null::text, 'ils sont tendres.', 240::int),
  (2, 'Trempe une galette quelques secondes dans l’eau tiède.', null::text, 'elle est souple sans se déchirer.', null::int),
  (3, 'Garnis de salade, herbes, carotte, vermicelles et crevettes, roule serré.', null::text, 'le rouleau est bien fermé.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Phở au bœuf
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('pho', 'Phở au bœuf', array[]::text[], array['Soupes et bouillons', 'Pâtes et nouilles']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'avance', 40, 210, array['Grande marmite']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Ph%E1%BB%9F']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'viet-nam' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('boeuf', 1, 800::numeric, 'proportionnel', true, 'os et jarret'::text),
    ('nouilles-riz', 2, 300::numeric, 'proportionnel', true, null::text),
    ('oignon', 3, 200::numeric, 'proportionnel', true, null::text),
    ('gingembre', 4, 40::numeric, 'proportionnel', true, null::text),
    ('cannelle', 5, 3::numeric, 'proportionnel', true, null::text),
    ('clou-girofle', 6, 1::numeric, 'proportionnel', true, null::text),
    ('nuoc-mam', 7, 40::numeric, 'proportionnel', true, null::text),
    ('coriandre', 8, 15::numeric, 'proportionnel', true, null::text),
    ('basilic', 9, 10::numeric, 'proportionnel', true, null::text),
    ('citron-vert', 10, 2::numeric, 'proportionnel', true, null::text),
    ('sel', 11, 8::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais griller oignon et gingembre à sec.', null::text, 'ils sont noircis par endroits.', 480::int),
  (2, 'Fais mijoter la viande avec oignon, gingembre et épices dans 3 l d’eau, écume.', null::text, 'le bouillon est clair et parfumé.', 10800::int),
  (3, 'Assaisonne avec la sauce de poisson, verse sur les nouilles et la viande tranchée.', null::text, 'la viande est couverte de bouillon.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Ramen au poulet
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('ramen', 'Ramen au poulet', array[]::text[], array['Soupes et bouillons', 'Pâtes et nouilles']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 30, 120, array['Marmite']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Ramen']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'japon' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('poulet', 1, 1000::numeric, 'proportionnel', true, 'carcasse et ailes'::text),
    ('nouilles-ble', 2, 400::numeric, 'proportionnel', true, null::text),
    ('oeuf', 3, 4::numeric, 'proportionnel', true, null::text),
    ('sauce-soja', 4, 60::numeric, 'proportionnel', true, null::text),
    ('gingembre', 5, 20::numeric, 'proportionnel', true, null::text),
    ('ail', 6, 15::numeric, 'proportionnel', true, null::text),
    ('oignon-vert', 7, 30::numeric, 'proportionnel', true, null::text),
    ('champignon', 8, 100::numeric, 'proportionnel', true, null::text),
    ('sel', 9, 5::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais mijoter le poulet avec gingembre et ail dans 2,5 l d’eau.', null::text, 'le bouillon est doré.', 5400::int),
  (2, 'Cuis les œufs, refroidis-les.', null::text, 'le jaune est encore mou.', 420::int),
  (3, 'Assaisonne le bouillon de soja, cuis les nouilles à part.', null::text, 'les nouilles sont souples.', 240::int),
  (4, 'Dresse nouilles, bouillon, poulet effiloché, œuf, champignons et cive.', null::text, 'le bol est bien garni.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Poulet teriyaki
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('teriyaki-poulet', 'Poulet teriyaki', array[]::text[], array['Viandes, poissons et fruits de mer']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 20, 25, array['Poêle']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Teriyaki']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'japon' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('blanc-poulet', 1, 600::numeric, 'proportionnel', true, null::text),
    ('sauce-soja', 2, 60::numeric, 'proportionnel', true, null::text),
    ('miel', 3, 40::numeric, 'proportionnel', true, null::text),
    ('gingembre', 4, 10::numeric, 'proportionnel', true, null::text),
    ('ail', 5, 5::numeric, 'proportionnel', true, null::text),
    ('sesame', 6, 10::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 7, 15::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais dorer le poulet en morceaux.', null::text, 'il est doré et cuit à cœur.', 480::int),
  (2, 'Ajoute soja, miel, gingembre et ail, laisse réduire.', null::text, 'la sauce est sirupeuse et brillante.', 240::int),
  (3, 'Parsème de sésame.', null::text, 'chaque morceau est laqué.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Bibimbap
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('bibimbap', 'Bibimbap', array[]::text[], array['Riz et autres céréales']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 40, 50, array['Poêle', 'Bols']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Bibimbap']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'coree-du-sud' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('riz-local', 1, 400::numeric, 'proportionnel', true, null::text),
    ('boeuf', 2, 300::numeric, 'proportionnel', true, null::text),
    ('epinards', 3, 200::numeric, 'proportionnel', true, null::text),
    ('carotte', 4, 150::numeric, 'proportionnel', true, null::text),
    ('champignon', 5, 150::numeric, 'proportionnel', true, null::text),
    ('oeuf', 6, 4::numeric, 'proportionnel', true, null::text),
    ('sauce-soja', 7, 40::numeric, 'proportionnel', true, null::text),
    ('sesame', 8, 10::numeric, 'proportionnel', true, null::text),
    ('ail', 9, 10::numeric, 'proportionnel', true, null::text),
    ('piment-poudre', 10, 3::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 11, 30::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Cuis le riz.', null::text, 'il est tendre.', 900::int),
  (2, 'Fais sauter séparément viande au soja, épinards, carottes et champignons.', null::text, 'chaque légume est juste cuit.', 900::int),
  (3, 'Fais cuire les œufs au plat.', null::text, 'le jaune est coulant.', 180::int),
  (4, 'Dispose le tout sur le riz, ajoute sésame et piment.', null::text, 'chaque garniture a sa place.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Tacos au poulet
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('tacos-poulet', 'Tacos au poulet', array[]::text[], array['Cuisine de rue et repas à emporter']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 20, 30, array['Poêle']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Taco']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'mexique' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('blanc-poulet', 1, 500::numeric, 'proportionnel', true, null::text),
    ('tortilla', 2, 8::numeric, 'proportionnel', true, null::text),
    ('cumin', 3, 3::numeric, 'proportionnel', true, null::text),
    ('paprika', 4, 4::numeric, 'proportionnel', true, null::text),
    ('oignon', 5, 80::numeric, 'proportionnel', true, null::text),
    ('tomate', 6, 200::numeric, 'proportionnel', true, null::text),
    ('coriandre', 7, 15::numeric, 'proportionnel', true, null::text),
    ('citron-vert', 8, 2::numeric, 'proportionnel', true, null::text),
    ('avocat', 9, 1::numeric, 'proportionnel', true, null::text),
    ('sel', 10, 5::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais dorer le poulet émincé avec cumin, paprika et sel.', null::text, 'il est cuit et doré.', 600::int),
  (2, 'Prépare une salsa tomate, oignon, coriandre, citron.', null::text, 'la salsa est juteuse.', null::int),
  (3, 'Réchauffe les galettes et garnis.', null::text, 'les galettes sont souples.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Guacamole
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('guacamole', 'Guacamole', array[]::text[], array['Apéritifs et entrées', 'Sauces et assaisonnements']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 10, 10, array['Bol', 'Fourchette']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Guacamole']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'mexique' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('avocat', 1, 3::numeric, 'proportionnel', true, null::text),
    ('citron-vert', 2, 1::numeric, 'proportionnel', true, null::text),
    ('oignon', 3, 30::numeric, 'proportionnel', true, null::text),
    ('tomate', 4, 100::numeric, 'proportionnel', true, null::text),
    ('coriandre', 5, 10::numeric, 'proportionnel', true, null::text),
    ('piment', 6, 5::numeric, 'proportionnel', false, null::text),
    ('sel', 7, 3::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Écrase les avocats avec le jus de citron.', null::text, 'il reste quelques morceaux.', null::int),
  (2, 'Ajoute oignon, tomate, coriandre, piment et sel.', null::text, 'tout est bien réparti.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Chili con carne
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('chili-con-carne', 'Chili con carne', array[]::text[], array['Plats au four et mijotés']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 20, 80, array['Cocotte']::text[],
    6, 'personnes', 1, 12, array['https://fr.wikipedia.org/wiki/Chili_con_carne']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'etats-unis-texas' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('viande-hachee', 1, 600::numeric, 'proportionnel', true, null::text),
    ('haricots-rouges', 2, 500::numeric, 'proportionnel', true, 'cuits'::text),
    ('tomate-pelee', 3, 800::numeric, 'proportionnel', true, null::text),
    ('oignon', 4, 150::numeric, 'proportionnel', true, null::text),
    ('poivron', 5, 150::numeric, 'proportionnel', true, null::text),
    ('ail', 6, 10::numeric, 'proportionnel', true, null::text),
    ('cumin', 7, 5::numeric, 'proportionnel', true, null::text),
    ('piment-poudre', 8, 4::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 9, 20::numeric, 'proportionnel', true, null::text),
    ('sel', 10, 8::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais revenir oignon, poivron et ail.', null::text, 'ils sont tendres.', 480::int),
  (2, 'Ajoute la viande et les épices.', null::text, 'la viande est dorée.', 480::int),
  (3, 'Ajoute tomates et haricots, mijote.', null::text, 'le chili est épais.', 2700::int)
) as x(ordre, action, dose, repere, minuteur);

-- Pancakes
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('pancakes', 'Pancakes', array[]::text[], array['Petits-déjeuners et brunchs']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 20, 25, array['Poêle', 'Fouet']::text[],
    12, 'pieces', 6, 24, array['https://fr.wikipedia.org/wiki/Pancake']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'etats-unis' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('farine', 1, 250::numeric, 'proportionnel', true, null::text),
    ('lait', 2, 300::numeric, 'proportionnel', true, null::text),
    ('oeuf', 3, 2::numeric, 'proportionnel', true, null::text),
    ('sucre', 4, 30::numeric, 'proportionnel', true, null::text),
    ('levure-chimique', 5, 10::numeric, 'proportionnel', true, null::text),
    ('beurre', 6, 40::numeric, 'proportionnel', true, 'fondu'::text),
    ('sel', 7, 2::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Mélange les ingrédients secs, puis lait, œufs et beurre.', null::text, 'la pâte est épaisse avec quelques grumeaux.', null::int),
  (2, 'Verse des petites louches dans la poêle chaude.', null::text, 'des bulles éclatent en surface.', 120::int),
  (3, 'Retourne et termine la cuisson.', null::text, 'les deux faces sont dorées.', 60::int)
) as x(ordre, action, dose, repere, minuteur);

-- Burger maison
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('burger-maison', 'Burger maison', array[]::text[], array['Cuisine de rue et repas à emporter']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 20, 25, array['Poêle ou grill']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Hamburger']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'etats-unis' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('viande-hachee', 1, 600::numeric, 'proportionnel', true, null::text),
    ('pain', 2, 320::numeric, 'proportionnel', true, '4 pains à burger'::text),
    ('fromage', 3, 80::numeric, 'proportionnel', true, 'en tranches'::text),
    ('tomate', 4, 150::numeric, 'proportionnel', true, null::text),
    ('laitue', 5, 60::numeric, 'proportionnel', true, null::text),
    ('oignon', 6, 80::numeric, 'proportionnel', true, null::text),
    ('moutarde', 7, 20::numeric, 'proportionnel', true, null::text),
    ('sel', 8, 5::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Forme 4 steaks un peu plus larges que les pains.', null::text, 'ils font environ 1,5 cm d’épaisseur.', null::int),
  (2, 'Saisis-les et sale.', null::text, 'une croûte brune s’est formée sur chaque face.', 360::int),
  (3, 'Pose le fromage, puis monte les burgers.', null::text, 'le fromage a fondu.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Feijoada
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('feijoada', 'Feijoada', array[]::text[], array['Plats au four et mijotés', 'Légumes et légumineuses']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 30, 180, array['Grande marmite']::text[],
    6, 'personnes', 1, 12, array['https://fr.wikipedia.org/wiki/Feijoada']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'bresil' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('haricots-rouges', 1, 500::numeric, 'proportionnel', true, 'noirs de préférence, secs'::text),
    ('porc', 2, 600::numeric, 'proportionnel', true, null::text),
    ('lardons', 3, 150::numeric, 'proportionnel', true, null::text),
    ('oignon', 4, 150::numeric, 'proportionnel', true, null::text),
    ('ail', 5, 15::numeric, 'proportionnel', true, null::text),
    ('laurier', 6, 2::numeric, 'proportionnel', true, null::text),
    ('orange', 7, 1::numeric, 'proportionnel', true, null::text),
    ('riz-local', 8, 400::numeric, 'proportionnel', true, null::text),
    ('sel', 9, 10::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais cuire les haricots trempés avec la viande et le laurier.', null::text, 'les haricots sont fondants.', 9000::int),
  (2, 'Fais revenir lardons, oignon et ail, ajoute-les aux haricots.', null::text, 'le bouillon a épaissi.', 1200::int),
  (3, 'Sers avec du riz et des quartiers d’orange.', null::text, 'chaque assiette a son orange.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Ceviche
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('ceviche', 'Ceviche', array[]::text[], array['Apéritifs et entrées']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 20, 35, array['Saladier en verre']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Ceviche']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'perou' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('filet-poisson', 1, 500::numeric, 'proportionnel', true, 'très frais'::text),
    ('citron-vert', 2, 8::numeric, 'proportionnel', true, null::text),
    ('oignon', 3, 100::numeric, 'proportionnel', true, 'rouge'::text),
    ('piment', 4, 10::numeric, 'proportionnel', true, null::text),
    ('coriandre', 5, 15::numeric, 'proportionnel', true, null::text),
    ('patate-douce', 6, 300::numeric, 'proportionnel', true, 'cuite'::text),
    ('sel', 7, 5::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Coupe le poisson en dés et sale-le.', null::text, 'les dés font 2 cm.', null::int),
  (2, 'Couvre de jus de citron vert avec oignon et piment, au frais.', null::text, 'la chair est devenue blanche et opaque.', 900::int),
  (3, 'Ajoute la coriandre et sers avec la patate douce.', null::text, 'le ceviche est bien froid.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Colombo de poulet
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('poulet-colombo', 'Colombo de poulet', array[]::text[], array['Plats au four et mijotés']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 20, 70, array['Cocotte']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Colombo']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'antilles-guadeloupe-martinique' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('poulet', 1, 1200::numeric, 'proportionnel', true, null::text),
    ('curry', 2, 15::numeric, 'proportionnel', true, 'poudre à colombo'::text),
    ('oignon', 3, 150::numeric, 'proportionnel', true, null::text),
    ('ail', 4, 10::numeric, 'proportionnel', true, null::text),
    ('pomme-de-terre', 5, 400::numeric, 'proportionnel', true, null::text),
    ('courgette', 6, 200::numeric, 'proportionnel', true, null::text),
    ('citron-vert', 7, 1::numeric, 'proportionnel', true, null::text),
    ('piment', 8, 5::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 9, 30::numeric, 'proportionnel', true, null::text),
    ('sel', 10, 8::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais mariner le poulet avec citron, ail et poudre à colombo.', null::text, 'il est bien jaune.', 1800::int),
  (2, 'Fais-le dorer avec l’oignon.', null::text, 'il a pris couleur.', 600::int),
  (3, 'Ajoute légumes et 40 cl d’eau, mijote.', null::text, 'les pommes de terre sont tendres.', 1800::int)
) as x(ordre, action, dose, repere, minuteur);

-- Accras
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('accras-morue', 'Accras', array[]::text[], array['Apéritifs et entrées']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 30, 90, array['Marmite pour friture']::text[],
    25, 'pieces', 13, 50, array['https://fr.wikipedia.org/wiki/Accra']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'antilles' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('filet-poisson', 1, 250::numeric, 'proportionnel', true, 'morue dessalée ou poisson blanc'::text),
    ('farine', 2, 200::numeric, 'proportionnel', true, null::text),
    ('levure-chimique', 3, 5::numeric, 'proportionnel', true, null::text),
    ('oignon-vert', 4, 30::numeric, 'proportionnel', true, null::text),
    ('persil', 5, 15::numeric, 'proportionnel', true, null::text),
    ('ail', 6, 5::numeric, 'proportionnel', true, null::text),
    ('piment', 7, 5::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 8, 600::numeric, 'fixe', true, null::text),
    ('sel', 9, 3::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Émiette le poisson cuit.', null::text, 'il n’y a plus d’arêtes.', null::int),
  (2, 'Mélange farine, levure, 20 cl d’eau, herbes, ail, piment et poisson.', null::text, 'la pâte est épaisse.', null::int),
  (3, 'Laisse reposer puis fais frire des cuillerées.', null::text, 'les accras sont dorés et gonflés.', 240::int)
) as x(ordre, action, dose, repere, minuteur);

-- Pain de campagne maison
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('pain-maison', 'Pain de campagne maison', array[]::text[], array['Boulangerie']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 25, 240, array['Four', 'Cocotte en fonte conseillée']::text[],
    1, 'pieces', 1, 2, array['https://fr.wikipedia.org/wiki/Pain']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'france' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('farine', 1, 500::numeric, 'proportionnel', true, null::text),
    ('levure-boulangere', 2, 5::numeric, 'proportionnel', true, null::text),
    ('sel', 3, 10::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Mélange farine, levure, sel et 35 cl d’eau tiède, pétris.', null::text, 'la pâte est lisse et revient quand on l’appuie.', 600::int),
  (2, 'Laisse lever couvert.', null::text, 'la pâte a doublé de volume.', 7200::int),
  (3, 'Façonne une boule et laisse lever encore.', null::text, 'une marque du doigt revient lentement.', 2700::int),
  (4, 'Entaille et cuis à 240 °C.', null::text, 'le dessous sonne creux quand on le tapote.', 2400::int)
) as x(ordre, action, dose, repere, minuteur);

-- Baguettes
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('baguette', 'Baguettes', array[]::text[], array['Boulangerie']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'avance', 40, 300, array['Four', 'Plaque', 'Lame']::text[],
    3, 'pieces', 2, 6, array['https://fr.wikipedia.org/wiki/Baguette']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'france' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('farine', 1, 500::numeric, 'proportionnel', true, null::text),
    ('levure-boulangere', 2, 3::numeric, 'proportionnel', true, null::text),
    ('sel', 3, 10::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Mélange farine et 34 cl d’eau, laisse reposer, puis ajoute levure et sel.', null::text, 'la pâte est lisse.', 1800::int),
  (2, 'Fais lever en rabattant la pâte toutes les 30 minutes.', null::text, 'la pâte est gonflée et souple.', 7200::int),
  (3, 'Divise, façonne des baguettes et laisse lever.', null::text, 'elles ont pris un tiers de volume.', 3600::int),
  (4, 'Grigne et cuis à 250 °C avec un bol d’eau dans le four.', null::text, 'la croûte est dorée et chante en refroidissant.', 1320::int)
) as x(ordre, action, dose, repere, minuteur);

-- Pains pita
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('pain-pita', 'Pains pita', array[]::text[], array['Boulangerie']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 25, 120, array['Four très chaud', 'Rouleau']::text[],
    8, 'pieces', 4, 16, array['https://fr.wikipedia.org/wiki/Pita']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'levant-grece' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('farine', 1, 500::numeric, 'proportionnel', true, null::text),
    ('levure-boulangere', 2, 7::numeric, 'proportionnel', true, null::text),
    ('huile-olive', 3, 20::numeric, 'proportionnel', true, null::text),
    ('sucre', 4, 5::numeric, 'proportionnel', true, null::text),
    ('sel', 5, 8::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Pétris tous les ingrédients avec 30 cl d’eau tiède.', null::text, 'la pâte est souple.', 480::int),
  (2, 'Laisse lever.', null::text, 'elle a doublé.', 3600::int),
  (3, 'Étale 8 disques de 5 mm et cuis sur plaque à 250 °C.', null::text, 'les pains gonflent comme des ballons.', 240::int)
) as x(ordre, action, dose, repere, minuteur);

-- Msemen
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('msemen', 'Msemen', array[]::text[], array['Boulangerie', 'Petits-déjeuners et brunchs']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 45, 60, array['Poêle', 'Plan de travail huilé']::text[],
    10, 'pieces', 5, 20, array['https://fr.wikipedia.org/wiki/Msemen']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'maroc-algerie' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('farine', 1, 400::numeric, 'proportionnel', true, null::text),
    ('semoule', 2, 100::numeric, 'proportionnel', true, 'fine'::text),
    ('beurre', 3, 60::numeric, 'proportionnel', true, 'fondu'::text),
    ('huile-vegetale', 4, 60::numeric, 'proportionnel', true, null::text),
    ('sel', 5, 6::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Pétris farine, semoule, sel et 30 cl d’eau.', null::text, 'la pâte est très souple.', 600::int),
  (2, 'Fais des boules et laisse reposer sous un linge huilé.', null::text, 'elles se détendent.', 900::int),
  (3, 'Étale très finement, enduis de beurre et semoule, plie en carré.', null::text, 'le carré a plusieurs couches.', null::int),
  (4, 'Aplatis et cuis à la poêle.', null::text, 'les deux faces sont dorées et feuilletées.', 240::int)
) as x(ordre, action, dose, repere, minuteur);

-- Brioche tressée
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('brioche', 'Brioche tressée', array[]::text[], array['Viennoiserie', 'Petits-déjeuners et brunchs']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 35, 240, array['Four', 'Robot conseillé']::text[],
    1, 'pieces', 1, 2, array['https://fr.wikipedia.org/wiki/Brioche']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'france' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('farine', 1, 500::numeric, 'proportionnel', true, null::text),
    ('oeuf', 2, 4::numeric, 'proportionnel', true, null::text),
    ('lait', 3, 100::numeric, 'proportionnel', true, null::text),
    ('sucre', 4, 60::numeric, 'proportionnel', true, null::text),
    ('beurre', 5, 150::numeric, 'proportionnel', true, 'mou'::text),
    ('levure-boulangere', 6, 10::numeric, 'proportionnel', true, null::text),
    ('sel', 7, 8::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Pétris farine, œufs, lait tiède, sucre, sel et levure.', null::text, 'la pâte se décolle des parois.', 600::int),
  (2, 'Ajoute le beurre en morceaux et pétris encore.', null::text, 'la pâte est lisse, brillante et élastique.', 600::int),
  (3, 'Laisse lever, puis tresse en trois brins.', null::text, 'la pâte a doublé avant le tressage.', 5400::int),
  (4, 'Laisse lever, dore à l’œuf et cuis à 170 °C.', null::text, 'la brioche est bien dorée.', 1800::int)
) as x(ordre, action, dose, repere, minuteur);

-- Croissants
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('croissants', 'Croissants', array[]::text[], array['Viennoiserie']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'avance', 90, 780, array['Rouleau', 'Four', 'Réfrigérateur']::text[],
    12, 'pieces', 6, 24, array['https://fr.wikipedia.org/wiki/Croissant']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'france' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('farine', 1, 500::numeric, 'proportionnel', true, null::text),
    ('beurre', 2, 280::numeric, 'proportionnel', true, 'froid, pour le tourage'::text),
    ('lait', 3, 150::numeric, 'proportionnel', true, null::text),
    ('sucre', 4, 60::numeric, 'proportionnel', true, null::text),
    ('levure-boulangere', 5, 12::numeric, 'proportionnel', true, null::text),
    ('oeuf', 6, 1::numeric, 'proportionnel', true, null::text),
    ('sel', 7, 10::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Pétris farine, lait, 15 cl d’eau, sucre, sel et levure, laisse au frais.', null::text, 'la pâte est froide et ferme.', 3600::int),
  (2, 'Enferme le beurre aplati dans la pâte, étale et plie en trois ; recommence 3 fois avec 30 min de froid.', null::text, 'on ne voit pas de beurre percer.', 7200::int),
  (3, 'Étale, découpe des triangles et roule-les.', null::text, 'la pointe est sous le croissant.', null::int),
  (4, 'Laisse pousser au tiède, dore et cuis à 190 °C.', null::text, 'les couches sont visibles et bien dorées.', 1080::int)
) as x(ordre, action, dose, repere, minuteur);

-- Pains au chocolat
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('pains-chocolat', 'Pains au chocolat', array['chocolatines']::text[], array['Viennoiserie']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'avance', 90, 780, array['Rouleau', 'Four']::text[],
    12, 'pieces', 6, 24, array['https://fr.wikipedia.org/wiki/Pain_au_chocolat']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'france' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('farine', 1, 500::numeric, 'proportionnel', true, null::text),
    ('beurre', 2, 280::numeric, 'proportionnel', true, null::text),
    ('lait', 3, 150::numeric, 'proportionnel', true, null::text),
    ('sucre', 4, 60::numeric, 'proportionnel', true, null::text),
    ('levure-boulangere', 5, 12::numeric, 'proportionnel', true, null::text),
    ('chocolat', 6, 120::numeric, 'proportionnel', true, 'en barres'::text),
    ('oeuf', 7, 1::numeric, 'proportionnel', true, null::text),
    ('sel', 8, 10::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Prépare une pâte feuilletée levée comme pour les croissants.', null::text, 'la pâte a reçu ses 3 tours.', 10800::int),
  (2, 'Découpe des rectangles, roule-les autour de 2 barres de chocolat.', null::text, 'la soudure est dessous.', null::int),
  (3, 'Laisse pousser, dore et cuis à 190 °C.', null::text, 'ils sont dorés et gonflés.', 1080::int)
) as x(ordre, action, dose, repere, minuteur);

-- Gâteau au yaourt
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('gateau-yaourt', 'Gâteau au yaourt', array[]::text[], array['Pâtisserie']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 10, 45, array['Moule à cake', 'Four']::text[],
    8, 'personnes', 1, 16, array['https://fr.wikipedia.org/wiki/G%C3%A2teau_au_yaourt']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'france' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('yaourt', 1, 125::numeric, 'proportionnel', true, null::text),
    ('sucre', 2, 200::numeric, 'proportionnel', true, null::text),
    ('farine', 3, 260::numeric, 'proportionnel', true, null::text),
    ('oeuf', 4, 3::numeric, 'proportionnel', true, null::text),
    ('huile-vegetale', 5, 100::numeric, 'proportionnel', true, null::text),
    ('levure-chimique', 6, 11::numeric, 'proportionnel', true, null::text),
    ('vanille', 7, 8::numeric, 'proportionnel', false, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Utilise le pot de yaourt comme mesure : mélange yaourt, sucre, œufs.', null::text, 'le mélange est mousseux.', null::int),
  (2, 'Ajoute farine, levure, puis huile.', null::text, 'la pâte est lisse.', null::int),
  (3, 'Verse dans le moule et cuis à 180 °C.', null::text, 'une lame ressort sèche.', 2100::int)
) as x(ordre, action, dose, repere, minuteur);

-- Fondant au chocolat
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('fondant-chocolat', 'Fondant au chocolat', array[]::text[], array['Pâtisserie']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 15, 40, array['Moule rond', 'Four']::text[],
    8, 'personnes', 1, 16, array['https://fr.wikipedia.org/wiki/Fondant_au_chocolat']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'france' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('chocolat', 1, 200::numeric, 'proportionnel', true, null::text),
    ('beurre', 2, 150::numeric, 'proportionnel', true, null::text),
    ('sucre', 3, 150::numeric, 'proportionnel', true, null::text),
    ('oeuf', 4, 4::numeric, 'proportionnel', true, null::text),
    ('farine', 5, 50::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais fondre chocolat et beurre doucement.', null::text, 'le mélange est lisse et brillant.', 180::int),
  (2, 'Ajoute sucre, œufs un à un, puis farine.', null::text, 'la pâte est homogène.', null::int),
  (3, 'Cuis à 180 °C.', null::text, 'les bords sont cuits et le centre tremble encore un peu.', 1320::int)
) as x(ordre, action, dose, repere, minuteur);

-- Tarte aux pommes
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('tarte-pommes', 'Tarte aux pommes', array[]::text[], array['Pâtisserie']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 25, 65, array['Moule à tarte', 'Four']::text[],
    8, 'personnes', 1, 16, array['https://fr.wikipedia.org/wiki/Tarte_aux_pommes']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'france' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('pate-feuilletee', 1, 230::numeric, 'fixe', true, null::text),
    ('pomme', 2, 5::numeric, 'proportionnel', true, null::text),
    ('sucre', 3, 50::numeric, 'proportionnel', true, null::text),
    ('beurre', 4, 30::numeric, 'proportionnel', true, null::text),
    ('cannelle', 5, 2::numeric, 'proportionnel', false, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fonce le moule avec la pâte.', null::text, 'la pâte couvre les bords.', null::int),
  (2, 'Dispose les pommes en fines lamelles en rosace.', null::text, 'les lamelles se chevauchent.', null::int),
  (3, 'Parsème de sucre et de noisettes de beurre, cuis à 190 °C.', null::text, 'les pommes sont caramélisées sur les bords.', 2400::int)
) as x(ordre, action, dose, repere, minuteur);

-- Clafoutis aux fruits
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('clafoutis', 'Clafoutis aux fruits', array[]::text[], array['Desserts', 'Pâtisserie']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 15, 55, array['Plat à four']::text[],
    6, 'personnes', 1, 12, array['https://fr.wikipedia.org/wiki/Clafoutis']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'france-limousin' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('fruits-rouges', 1, 500::numeric, 'proportionnel', true, 'ou mangue en dés'::text),
    ('oeuf', 2, 3::numeric, 'proportionnel', true, null::text),
    ('sucre', 3, 100::numeric, 'proportionnel', true, null::text),
    ('farine', 4, 80::numeric, 'proportionnel', true, null::text),
    ('lait', 5, 300::numeric, 'proportionnel', true, null::text),
    ('beurre', 6, 15::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Beurre le plat et répartis les fruits.', null::text, 'le fond est couvert.', null::int),
  (2, 'Fouette œufs et sucre, ajoute farine puis lait.', null::text, 'la pâte est fluide.', null::int),
  (3, 'Verse sur les fruits et cuis à 180 °C.', null::text, 'le clafoutis est gonflé et doré.', 2400::int)
) as x(ordre, action, dose, repere, minuteur);

-- Crème caramel
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('creme-caramel', 'Crème caramel', array['flan']::text[], array['Desserts']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 25, 230, array['Ramequins', 'Four', 'Bain-marie']::text[],
    6, 'personnes', 1, 12, array['https://fr.wikipedia.org/wiki/Cr%C3%A8me_caramel']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'france' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('lait', 1, 500::numeric, 'proportionnel', true, null::text),
    ('oeuf', 2, 4::numeric, 'proportionnel', true, null::text),
    ('sucre', 3, 180::numeric, 'proportionnel', true, null::text),
    ('vanille', 4, 8::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais un caramel avec 100 g de sucre et un peu d’eau, verse dans les ramequins.', null::text, 'le caramel est ambré.', 480::int),
  (2, 'Fouette œufs et sucre restant, ajoute le lait chaud vanillé.', null::text, 'le mélange est homogène.', null::int),
  (3, 'Cuis au bain-marie à 160 °C.', null::text, 'la crème est prise mais tremble au centre.', 2100::int),
  (4, 'Laisse refroidir au frais avant de démouler.', null::text, 'la crème est bien froide.', 10800::int)
) as x(ordre, action, dose, repere, minuteur);

-- Mousse au chocolat
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('mousse-chocolat', 'Mousse au chocolat', array[]::text[], array['Desserts']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 20, 200, array['Batteur', 'Saladier']::text[],
    6, 'personnes', 1, 12, array['https://fr.wikipedia.org/wiki/Mousse_au_chocolat']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'france' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('chocolat', 1, 200::numeric, 'proportionnel', true, null::text),
    ('oeuf', 2, 6::numeric, 'proportionnel', true, null::text),
    ('sucre', 3, 30::numeric, 'proportionnel', true, null::text),
    ('sel', 4, 1::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fais fondre le chocolat, ajoute les jaunes un à un.', null::text, 'le mélange est brillant.', null::int),
  (2, 'Monte les blancs avec le sel, puis le sucre.', null::text, 'les blancs forment un bec ferme.', 300::int),
  (3, 'Incorpore délicatement les blancs au chocolat.', null::text, 'il ne reste plus de traces blanches.', null::int),
  (4, 'Mets au frais.', null::text, 'la mousse est ferme.', 10800::int)
) as x(ordre, action, dose, repere, minuteur);

-- Cookies aux pépites de chocolat
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('cookies', 'Cookies aux pépites de chocolat', array[]::text[], array['Biscuits et petites douceurs']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 15, 30, array['Plaque', 'Four']::text[],
    16, 'pieces', 8, 32, array['https://fr.wikipedia.org/wiki/Cookie']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'etats-unis' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('beurre', 1, 120::numeric, 'proportionnel', true, 'mou'::text),
    ('sucre', 2, 150::numeric, 'proportionnel', true, null::text),
    ('oeuf', 3, 1::numeric, 'proportionnel', true, null::text),
    ('farine', 4, 220::numeric, 'proportionnel', true, null::text),
    ('levure-chimique', 5, 5::numeric, 'proportionnel', true, null::text),
    ('chocolat', 6, 150::numeric, 'proportionnel', true, 'en morceaux'::text),
    ('sel', 7, 2::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Mélange beurre et sucre, puis l’œuf.', null::text, 'le mélange est crémeux.', null::int),
  (2, 'Ajoute farine, levure, sel et chocolat.', null::text, 'la pâte est homogène.', null::int),
  (3, 'Forme des boules espacées et cuis à 180 °C.', null::text, 'les bords sont dorés, le centre encore mou.', 660::int)
) as x(ordre, action, dose, repere, minuteur);

-- Madeleines
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('madeleines', 'Madeleines', array[]::text[], array['Biscuits et petites douceurs']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 15, 75, array['Moule à madeleines', 'Four']::text[],
    20, 'pieces', 10, 40, array['https://fr.wikipedia.org/wiki/Madeleine_(g%C3%A2teau)']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'france-lorraine' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('oeuf', 1, 3::numeric, 'proportionnel', true, null::text),
    ('sucre', 2, 130::numeric, 'proportionnel', true, null::text),
    ('farine', 3, 150::numeric, 'proportionnel', true, null::text),
    ('levure-chimique', 4, 5::numeric, 'proportionnel', true, null::text),
    ('beurre', 5, 120::numeric, 'proportionnel', true, 'fondu'::text),
    ('citron', 6, 1::numeric, 'proportionnel', true, 'zeste'::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fouette œufs et sucre, ajoute farine, levure, zeste puis beurre.', null::text, 'la pâte est lisse.', null::int),
  (2, 'Laisse reposer au frais.', null::text, 'la pâte est froide.', 2700::int),
  (3, 'Remplis les moules et cuis à 220 °C puis 180 °C.', null::text, 'une bosse s’est formée et les bords sont dorés.', 600::int)
) as x(ordre, action, dose, repere, minuteur);

-- Cornes de gazelle
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('cornes-gazelle', 'Cornes de gazelle', array[]::text[], array['Biscuits et petites douceurs']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'avance', 60, 80, array['Rouleau', 'Four']::text[],
    30, 'pieces', 15, 60, array['https://fr.wikipedia.org/wiki/Corne_de_gazelle']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'maroc-algerie' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('amande', 1, 300::numeric, 'proportionnel', true, null::text),
    ('sucre', 2, 150::numeric, 'proportionnel', true, null::text),
    ('fleur-oranger', 3, 40::numeric, 'proportionnel', true, null::text),
    ('beurre', 4, 60::numeric, 'proportionnel', true, null::text),
    ('farine', 5, 250::numeric, 'proportionnel', true, null::text),
    ('oeuf', 6, 1::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Mélange amandes, sucre, fleur d’oranger et un peu de beurre.', null::text, 'la pâte d’amande est malléable.', null::int),
  (2, 'Pétris farine, beurre restant, œuf et un peu d’eau.', null::text, 'la pâte est souple.', 600::int),
  (3, 'Étale très finement, enferme des boudins d’amande et forme des croissants.', null::text, 'les bords sont bien soudés.', null::int),
  (4, 'Cuis à 170 °C.', null::text, 'elles sont à peine blondes.', 900::int)
) as x(ordre, action, dose, repere, minuteur);

-- Baklava
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('baklava', 'Baklava', array[]::text[], array['Pâtisserie']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'avance', 45, 110, array['Plat à four', 'Pinceau']::text[],
    24, 'pieces', 12, 48, array['https://fr.wikipedia.org/wiki/Baklava']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'turquie-grece-levant' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('feuilles-brick', 1, 20::numeric, 'proportionnel', true, 'ou pâte filo'::text),
    ('pistache', 2, 300::numeric, 'proportionnel', true, 'concassées'::text),
    ('beurre', 3, 200::numeric, 'proportionnel', true, 'fondu'::text),
    ('sucre', 4, 300::numeric, 'proportionnel', true, null::text),
    ('miel', 5, 100::numeric, 'proportionnel', true, null::text),
    ('citron', 6, 1::numeric, 'proportionnel', true, null::text),
    ('cannelle', 7, 2::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Beurre une feuille sur deux et superpose-en la moitié dans le plat.', null::text, 'chaque couche est beurrée.', null::int),
  (2, 'Étale les pistaches à la cannelle, puis le reste des feuilles beurrées.', null::text, 'le dessus est lisse.', null::int),
  (3, 'Découpe en losanges et cuis à 170 °C.', null::text, 'le dessus est doré.', 2700::int),
  (4, 'Fais un sirop sucre, miel, citron et 20 cl d’eau, verse sur la baklava chaude.', null::text, 'le sirop est absorbé.', 600::int)
) as x(ordre, action, dose, repere, minuteur);

-- Gâteau à la noix de coco
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('gateau-coco', 'Gâteau à la noix de coco', array[]::text[], array['Pâtisserie']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 15, 50, array['Moule rond', 'Four']::text[],
    8, 'personnes', 1, 16, array[]::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'afrique-de-l-ouest-antilles' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('noix-coco', 1, 1::numeric, 'proportionnel', true, 'râpée, soit 150 g'::text),
    ('lait-coco', 2, 200::numeric, 'proportionnel', true, null::text),
    ('sucre', 3, 150::numeric, 'proportionnel', true, null::text),
    ('oeuf', 4, 3::numeric, 'proportionnel', true, null::text),
    ('farine', 5, 200::numeric, 'proportionnel', true, null::text),
    ('levure-chimique', 6, 10::numeric, 'proportionnel', true, null::text),
    ('beurre', 7, 80::numeric, 'proportionnel', true, 'fondu'::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Fouette œufs et sucre, ajoute beurre et lait de coco.', null::text, 'le mélange est lisse.', null::int),
  (2, 'Ajoute farine, levure et coco râpée.', null::text, 'la pâte est épaisse.', null::int),
  (3, 'Cuis à 180 °C.', null::text, 'le gâteau est doré et une lame ressort sèche.', 2100::int)
) as x(ordre, action, dose, repere, minuteur);

-- Bananes caramélisées
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('banane-flambee', 'Bananes caramélisées', array[]::text[], array['Desserts']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 10, 10, array['Poêle']::text[],
    4, 'personnes', 1, 8, array[]::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'antilles' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('banane', 1, 4::numeric, 'proportionnel', true, null::text),
    ('beurre', 2, 30::numeric, 'proportionnel', true, null::text),
    ('sucre', 3, 40::numeric, 'proportionnel', true, null::text),
    ('cannelle', 4, 1::numeric, 'proportionnel', true, null::text),
    ('citron-vert', 5, 1::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Coupe les bananes en deux dans la longueur.', null::text, 'les moitiés sont entières.', null::int),
  (2, 'Fais-les dorer dans le beurre avec sucre et cannelle.', null::text, 'un caramel blond nappe les bananes.', 300::int),
  (3, 'Arrose d’un filet de citron vert.', null::text, 'la sauce brille.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Salade de fruits tropicaux
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('salade-fruits', 'Salade de fruits tropicaux', array[]::text[], array['Desserts']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 15, 45, array['Saladier']::text[],
    6, 'personnes', 1, 12, array[]::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'cote-d-ivoire' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('mangue', 1, 2::numeric, 'proportionnel', true, null::text),
    ('ananas', 2, 1::numeric, 'proportionnel', true, null::text),
    ('banane', 3, 2::numeric, 'proportionnel', true, null::text),
    ('orange', 4, 2::numeric, 'proportionnel', true, null::text),
    ('citron-vert', 5, 1::numeric, 'proportionnel', true, null::text),
    ('sucre', 6, 30::numeric, 'proportionnel', true, null::text),
    ('menthe', 7, 5::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Coupe tous les fruits en dés.', null::text, 'les dés font la taille d’une bouchée.', null::int),
  (2, 'Arrose de jus de citron et d’orange, sucre légèrement.', null::text, 'les fruits baignent un peu dans le jus.', null::int),
  (3, 'Laisse au frais.', null::text, 'la salade est bien froide.', 1800::int)
) as x(ordre, action, dose, repere, minuteur);

-- Riz au lait
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('riz-au-lait', 'Riz au lait', array[]::text[], array['Desserts']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 10, 50, array['Casserole']::text[],
    6, 'personnes', 1, 12, array['https://fr.wikipedia.org/wiki/Riz_au_lait']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'france' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('riz-arborio', 1, 150::numeric, 'proportionnel', true, null::text),
    ('lait', 2, 1000::numeric, 'proportionnel', true, null::text),
    ('sucre', 3, 100::numeric, 'proportionnel', true, null::text),
    ('vanille', 4, 8::numeric, 'proportionnel', true, null::text),
    ('cannelle', 5, 1::numeric, 'proportionnel', false, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Porte le lait vanillé à frémissement, verse le riz.', null::text, 'le lait frémit doucement.', null::int),
  (2, 'Cuis à feu très doux en remuant souvent.', null::text, 'le riz est tendre et crémeux.', 2400::int),
  (3, 'Ajoute le sucre hors du feu.', null::text, 'il est dissous.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Thé à la menthe
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('the-menthe', 'Thé à la menthe', array[]::text[], array['Boissons']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 10, 15, array['Théière']::text[],
    4, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Th%C3%A9_%C3%A0_la_menthe']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'maroc' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('the', 1, 10::numeric, 'proportionnel', true, null::text),
    ('menthe', 2, 30::numeric, 'proportionnel', true, null::text),
    ('sucre', 3, 60::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Rince le thé avec un peu d’eau bouillante, jette cette eau.', null::text, 'les feuilles sont humides.', null::int),
  (2, 'Ajoute menthe, sucre et 80 cl d’eau bouillante, laisse infuser.', null::text, 'le thé est ambré.', 240::int),
  (3, 'Sers de haut pour faire mousser.', null::text, 'une mousse se forme dans le verre.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Smoothie mangue banane
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('smoothie-mangue', 'Smoothie mangue banane', array[]::text[], array['Boissons']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'debutant', 5, 5, array['Mixeur']::text[],
    2, 'personnes', 1, 8, array['https://fr.wikipedia.org/wiki/Smoothie']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'monde' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('mangue', 1, 1::numeric, 'proportionnel', true, null::text),
    ('banane', 2, 1::numeric, 'proportionnel', true, null::text),
    ('yaourt', 3, 150::numeric, 'proportionnel', true, null::text),
    ('miel', 4, 15::numeric, 'proportionnel', false, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Mixe tous les ingrédients avec quelques glaçons.', null::text, 'le smoothie est lisse et épais.', null::int)
) as x(ordre, action, dose, repere, minuteur);

-- Confiture de mangue
with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values ('confiture-mangue', 'Confiture de mangue', array[]::text[], array['Conservation et fermentation']::text[])
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', 'intermediaire', 20, 60, array['Grande casserole', 'Pots stérilisés']::text[],
    3, 'pieces', 2, 6, array['https://fr.wikipedia.org/wiki/Confiture']::text[]
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'afrique-de-l-ouest' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
    ('mangue', 1, 4::numeric, 'proportionnel', true, 'soit 1 kg de chair'::text),
    ('sucre', 2, 600::numeric, 'proportionnel', true, null::text),
    ('citron', 3, 1::numeric, 'proportionnel', true, null::text)
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Coupe la chair en dés et mélange avec sucre et jus de citron.', null::text, 'le sucre commence à fondre.', 1800::int),
  (2, 'Fais cuire en remuant.', null::text, 'une goutte sur une assiette froide se fige.', 1500::int),
  (3, 'Verse bouillante dans des pots stérilisés, ferme et retourne.', null::text, 'les pots sont pleins jusqu’en haut.', null::int)
) as x(ordre, action, dose, repere, minuteur);

insert into public.releves (ingredient_id, ville, zone, prix_moyen, unite_prix, source, date_releve, valide) values
  ('riz-local', 'Abidjan', 'District d’Abidjan', 720, 'kg', 'OCPV, bulletin du 2 au 8 novembre 2026', '2026-11-08', true)
on conflict do nothing;

commit;
