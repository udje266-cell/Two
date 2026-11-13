-- Données de départ pour un environnement local (supabase db reset).
insert into public.lieux (id, type, nom, parent_id, code_m49, code_iso2) values
  ('afrique-ouest', 'region', 'Afrique de l’Ouest', null, '011', null),
  ('ci', 'pays', 'Côte d’Ivoire', 'afrique-ouest', '384', 'CI'),
  ('afrique-nord', 'region', 'Afrique du Nord', null, '015', null),
  ('dz', 'pays', 'Algérie', 'afrique-nord', '012', 'DZ'),
  ('ma', 'pays', 'Maroc', 'afrique-nord', '504', 'MA'),
  ('tn', 'pays', 'Tunisie', 'afrique-nord', '788', 'TN'),
  ('maghreb', 'collection', 'Maghreb', null, null, null);

insert into public.ingredients (id, nom, alias, unite, rayon) values
  ('riz-local', 'Riz local blanchi', '{riz}', 'g', 'Céréales et épicerie'),
  ('poulet', 'Poulet en morceaux', '{poulet}', 'g', 'Viandes et poissons'),
  ('tomate', 'Tomates fraîches', '{tomate}', 'g', 'Légumes'),
  ('oignon', 'Oignons', '{oignon}', 'g', 'Légumes'),
  ('concentre-tomate', 'Concentré de tomate', '{"tomate concentrée"}', 'g', 'Céréales et épicerie'),
  ('huile-vegetale', 'Huile végétale', '{huile}', 'ml', 'Céréales et épicerie'),
  ('piment', 'Piment frais', '{piment}', 'g', 'Légumes');

with r as (
  insert into public.recettes (slug, titre, familles)
  values ('riz-gras-au-poulet', 'Riz gras au poulet', '{"Riz et autres céréales"}')
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, publiee_le)
  select id, 1, 'publiee', 'debutant', 40, 70, '{"Marmite avec couvercle"}', 4, 'personnes', 2, 8, now() from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, 'ci' from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, indispensable)
  select v.id, x.ing, x.ordre, x.q, x.ind from v, (values
    ('riz-local', 1, 500, true), ('poulet', 2, 800, true), ('tomate', 3, 300, true),
    ('oignon', 4, 200, true), ('concentre-tomate', 5, 70, true), ('huile-vegetale', 6, 100, true),
    ('piment', 7, 10, false)) as x(ing, ordre, q, ind)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
  (1, 'Coupe le poulet en morceaux et sale-le.', 'Tout le poulet', 'chaque morceau est enrobé de sel.', null::int),
  (2, 'Fais dorer le poulet dans l’huile chaude.', 'Toute l’huile', 'les morceaux sont dorés sur toutes les faces.', 480),
  (3, 'Ajoute les oignons et remue à feu moyen.', 'Tous les oignons', 'les oignons deviennent translucides.', 300),
  (4, 'Ajoute tomates et concentré, laisse réduire.', null, 'la sauce épaissit et l’huile remonte sur les bords.', 600),
  (5, 'Verse le riz lavé et l’eau, puis couvre à feu doux.', null, 'l’eau a disparu et de petits trous se forment.', 1200),
  (6, 'Laisse reposer, puis égraine à la fourchette.', null, 'les grains sont tendres et se détachent.', 300)
) as x(ordre, action, dose, repere, minuteur);

insert into public.releves (ingredient_id, ville, zone, prix_moyen, unite_prix, source, date_releve, valide) values
  ('riz-local', 'Abidjan', 'District d’Abidjan', 720, 'kg', 'OCPV, bulletin du 2 au 8 novembre 2026', '2026-11-08', true);
