-- Mijote : schéma initial (catalogue, prix, données personnelles).
-- Lecture publique du contenu publié ; écriture réservée aux éditeurs.

create extension if not exists unaccent with schema extensions;

-- Rôles éditoriaux --------------------------------------------------------
create table public.editeurs (
  user_id uuid primary key references auth.users (id) on delete cascade,
  role text not null check (role in ('redacteur', 'testeur', 'relecteur', 'responsable')),
  cree_le timestamptz not null default now()
);
alter table public.editeurs enable row level security;

create or replace function public.est_editeur()
returns boolean
language sql
stable
security definer
set search_path = ''
as $$
  select exists (select 1 from public.editeurs e where e.user_id = (select auth.uid()));
$$;
revoke all on function public.est_editeur() from public;
grant execute on function public.est_editeur() to anon, authenticated;

-- Vrai si l'utilisateur a l'un des rôles donnés (publication, validation des prix).
create or replace function public.a_role(variadic roles text[])
returns boolean
language sql
stable
security definer
set search_path = ''
as $$
  select exists (select 1 from public.editeurs e where e.user_id = (select auth.uid()) and e.role = any (roles));
$$;
revoke all on function public.a_role(text[]) from public;
grant execute on function public.a_role(text[]) to anon, authenticated;

create policy editeurs_lecture_soi on public.editeurs
  for select to authenticated using (user_id = (select auth.uid()));

-- Lieux, cuisines et collections (référentiel M49 + collections) -------------
create table public.lieux (
  id text primary key,                      -- ex. 'ci', 'maghreb', 'cuisines-lagunaires'
  type text not null check (type in ('region', 'pays', 'territoire', 'tradition', 'collection')),
  nom text not null,
  synonymes text[] not null default '{}',
  parent_id text references public.lieux (id),
  code_m49 text check (code_m49 ~ '^\d{3}$'),
  code_iso2 text check (code_iso2 ~ '^[A-Z]{2}$')
);
create index lieux_parent_idx on public.lieux (parent_id);

-- Ingrédients canoniques ---------------------------------------------------
create table public.ingredients (
  id text primary key,
  nom text not null,
  alias text[] not null default '{}',
  unite text not null check (unite in ('g', 'ml', 'piece')),
  rayon text not null,
  allergenes text[] not null default '{}',
  allergenes_connus boolean not null default false,
  rendement_comestible numeric check (rendement_comestible > 0 and rendement_comestible <= 1)
);

-- Recettes et versions -----------------------------------------------------
create table public.recettes (
  id uuid primary key default gen_random_uuid(),
  slug text not null unique,
  titre text not null,
  alias text[] not null default '{}',
  familles text[] not null default '{}',
  cree_le timestamptz not null default now()
);

create table public.versions_recette (
  id uuid primary key default gen_random_uuid(),
  recette_id uuid not null references public.recettes (id) on delete cascade,
  numero int not null check (numero > 0),
  statut text not null default 'brouillon'
    check (statut in ('brouillon', 'a_tester', 'a_relire', 'publiee', 'retiree')),
  langue text not null default 'fr',
  niveau text not null check (niveau in ('debutant', 'intermediaire', 'avance')),
  temps_actif_min int not null check (temps_actif_min >= 0),
  temps_total_min int not null check (temps_total_min >= temps_actif_min),
  materiel text[] not null default '{}',
  rendement_valeur numeric not null check (rendement_valeur > 0),
  rendement_unite text not null check (rendement_unite in ('personnes', 'pieces')),
  plage_min numeric not null check (plage_min > 0),
  plage_max numeric not null check (plage_max >= plage_min),
  sources text[] not null default '{}',
  publiee_le timestamptz,
  unique (recette_id, numero),
  check (statut <> 'publiee' or publiee_le is not null)
);
create unique index une_version_publiee on public.versions_recette (recette_id) where statut = 'publiee';

create table public.recettes_lieux (
  recette_id uuid not null references public.recettes (id) on delete cascade,
  lieu_id text not null references public.lieux (id),
  primary key (recette_id, lieu_id)
);
create index recettes_lieux_lieu_idx on public.recettes_lieux (lieu_id);

create table public.ingredients_recette (
  id uuid primary key default gen_random_uuid(),
  version_id uuid not null references public.versions_recette (id) on delete cascade,
  ingredient_id text not null references public.ingredients (id),
  ordre int not null,
  quantite numeric not null check (quantite >= 0),
  regle text not null default 'proportionnel' check (regle in ('proportionnel', 'fixe')),
  indispensable boolean not null default true,
  preparation text,
  unique (version_id, ordre)
);
create index ingredients_recette_version_idx on public.ingredients_recette (version_id);
create index ingredients_recette_ingredient_idx on public.ingredients_recette (ingredient_id);

create table public.etapes (
  id uuid primary key default gen_random_uuid(),
  version_id uuid not null references public.versions_recette (id) on delete cascade,
  ordre int not null,
  action text not null,
  dose text,
  repere text not null,
  minuteur_sec int check (minuteur_sec > 0),
  image_url text,
  unique (version_id, ordre)
);

-- Prix ------------------------------------------------------------------------
create table public.releves (
  id uuid primary key default gen_random_uuid(),
  ingredient_id text not null references public.ingredients (id),
  ville text not null,
  zone text not null,
  prix_min numeric check (prix_min >= 0),
  prix_moyen numeric not null check (prix_moyen >= 0),
  prix_max numeric check (prix_max >= 0),
  unite_prix text not null check (unite_prix in ('kg', 'l', 'piece')),
  monnaie text not null default 'XOF' check (monnaie = 'XOF'),
  source text not null,
  date_releve date not null,
  valide boolean not null default false,
  check (prix_min is null or prix_min <= prix_moyen),
  check (prix_max is null or prix_moyen <= prix_max),
  unique (ingredient_id, ville, zone, source, date_releve)
);
create index releves_ingredient_idx on public.releves (ingredient_id);
create index releves_recherche_idx on public.releves (ingredient_id, ville, date_releve desc) where valide;

create table public.formats_vente (
  id uuid primary key default gen_random_uuid(),
  ingredient_id text not null references public.ingredients (id),
  ville text not null,
  libelle text not null,
  quantite numeric not null check (quantite > 0),
  prix numeric not null check (prix >= 0),
  source text not null,
  date_releve date not null,
  valide boolean not null default false,
  unique (ingredient_id, ville, libelle, source, date_releve)
);
create index formats_vente_ingredient_idx on public.formats_vente (ingredient_id);
create index formats_vente_idx on public.formats_vente (ingredient_id, ville) where valide;

-- Données personnelles ---------------------------------------------------------
create table public.favoris (
  user_id uuid not null references auth.users (id) on delete cascade,
  recette_id uuid not null references public.recettes (id) on delete cascade,
  ajoute_le timestamptz not null default now(),
  primary key (user_id, recette_id)
);
create index favoris_recette_idx on public.favoris (recette_id);

-- Sécurité au niveau des lignes ------------------------------------------------
alter table public.lieux enable row level security;
alter table public.ingredients enable row level security;
alter table public.recettes enable row level security;
alter table public.versions_recette enable row level security;
alter table public.recettes_lieux enable row level security;
alter table public.ingredients_recette enable row level security;
alter table public.etapes enable row level security;
alter table public.releves enable row level security;
alter table public.formats_vente enable row level security;
alter table public.favoris enable row level security;

-- Référentiels : lecture pour tous, écriture pour les éditeurs.
create policy lecture on public.lieux for select to anon, authenticated using (true);
create policy lecture on public.ingredients for select to anon, authenticated using (true);
create policy ecriture_ajout on public.lieux for insert to authenticated with check ((select public.est_editeur()));
create policy ecriture_modif on public.lieux for update to authenticated using ((select public.est_editeur())) with check ((select public.est_editeur()));
create policy ecriture_suppr on public.lieux for delete to authenticated using ((select public.est_editeur()));
create policy ecriture_ajout on public.ingredients for insert to authenticated with check ((select public.est_editeur()));
create policy ecriture_modif on public.ingredients for update to authenticated using ((select public.est_editeur())) with check ((select public.est_editeur()));
create policy ecriture_suppr on public.ingredients for delete to authenticated using ((select public.est_editeur()));

-- Contenu : le public ne voit que les versions publiées.
create policy lecture_publiee on public.versions_recette for select to anon, authenticated
  using (statut = 'publiee' or (select public.est_editeur()));
create policy lecture_publiee on public.recettes for select to anon, authenticated
  using ((select public.est_editeur()) or exists (
    select 1 from public.versions_recette v where v.recette_id = recettes.id and v.statut = 'publiee'));
create policy lecture_publiee on public.recettes_lieux for select to anon, authenticated
  using ((select public.est_editeur()) or exists (
    select 1 from public.versions_recette v where v.recette_id = recettes_lieux.recette_id and v.statut = 'publiee'));
create policy lecture_publiee on public.ingredients_recette for select to anon, authenticated
  using ((select public.est_editeur()) or exists (
    select 1 from public.versions_recette v where v.id = version_id and v.statut = 'publiee'));
create policy lecture_publiee on public.etapes for select to anon, authenticated
  using ((select public.est_editeur()) or exists (
    select 1 from public.versions_recette v where v.id = version_id and v.statut = 'publiee'));

create policy ecriture_ajout on public.recettes for insert to authenticated with check ((select public.est_editeur()));
create policy ecriture_modif on public.recettes for update to authenticated using ((select public.est_editeur())) with check ((select public.est_editeur()));
create policy ecriture_suppr on public.recettes for delete to authenticated using ((select public.est_editeur()));
create policy ecriture_ajout on public.versions_recette for insert to authenticated
  with check ((select public.est_editeur()) and (statut <> 'publiee' or (select public.a_role('relecteur', 'responsable'))));
create policy ecriture_modif on public.versions_recette for update to authenticated
  using ((select public.est_editeur()))
  with check ((select public.est_editeur()) and (statut <> 'publiee' or (select public.a_role('relecteur', 'responsable'))));
create policy ecriture_suppr on public.versions_recette for delete to authenticated using ((select public.a_role('responsable')));
create policy ecriture_ajout on public.recettes_lieux for insert to authenticated with check ((select public.est_editeur()));
create policy ecriture_modif on public.recettes_lieux for update to authenticated using ((select public.est_editeur())) with check ((select public.est_editeur()));
create policy ecriture_suppr on public.recettes_lieux for delete to authenticated using ((select public.est_editeur()));
create policy ecriture_ajout on public.ingredients_recette for insert to authenticated with check ((select public.est_editeur()));
create policy ecriture_modif on public.ingredients_recette for update to authenticated using ((select public.est_editeur())) with check ((select public.est_editeur()));
create policy ecriture_suppr on public.ingredients_recette for delete to authenticated using ((select public.est_editeur()));
create policy ecriture_ajout on public.etapes for insert to authenticated with check ((select public.est_editeur()));
create policy ecriture_modif on public.etapes for update to authenticated using ((select public.est_editeur())) with check ((select public.est_editeur()));
create policy ecriture_suppr on public.etapes for delete to authenticated using ((select public.est_editeur()));

-- Prix : le public ne voit que les relevés validés.
create policy lecture_valide on public.releves for select to anon, authenticated using (valide or (select public.est_editeur()));
create policy lecture_valide on public.formats_vente for select to anon, authenticated using (valide or (select public.est_editeur()));
create policy ecriture_ajout on public.releves for insert to authenticated with check ((select public.a_role('relecteur', 'responsable')));
create policy ecriture_modif on public.releves for update to authenticated using ((select public.a_role('relecteur', 'responsable'))) with check ((select public.a_role('relecteur', 'responsable')));
create policy ecriture_suppr on public.releves for delete to authenticated using ((select public.a_role('relecteur', 'responsable')));
create policy ecriture_ajout on public.formats_vente for insert to authenticated with check ((select public.a_role('relecteur', 'responsable')));
create policy ecriture_modif on public.formats_vente for update to authenticated using ((select public.a_role('relecteur', 'responsable'))) with check ((select public.a_role('relecteur', 'responsable')));
create policy ecriture_suppr on public.formats_vente for delete to authenticated using ((select public.a_role('relecteur', 'responsable')));

-- Favoris : chacun ne voit et ne modifie que les siens.
create policy proprietaire on public.favoris for all to authenticated
  using (user_id = (select auth.uid())) with check (user_id = (select auth.uid()));
