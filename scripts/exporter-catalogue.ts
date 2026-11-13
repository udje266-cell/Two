/// <reference types="node" />
// Génère supabase/seed.sql à partir du catalogue de l'application (src/data/catalogue).
// Usage : npx tsx scripts/exporter-catalogue.ts
// Les recettes sont importées au statut « a_tester » : elles ne sont pas visibles du public
// tant qu'un relecteur ou un responsable ne les a pas publiées.
import { writeFileSync } from 'node:fs';
import { join } from 'node:path';

import { ingredients, recettes } from '../src/data/catalogue';
import { releves } from '../src/data/seed';

const q = (v: string | null | undefined) => (v == null ? 'null' : `'${v.replace(/'/g, "''")}'`);
const tab = (l: string[]) => `array[${l.map(q).join(', ')}]::text[]`;
const n = (v: number | null | undefined) => (v == null ? 'null' : String(v));
const slug = (t: string) =>
  t.normalize('NFD').replace(/[̀-ͯ]/g, '').toLowerCase().replace(/[^a-z0-9]+/g, '-').replace(/^-|-$/g, '');

const lignes: string[] = [
  '-- Fichier généré par scripts/exporter-catalogue.ts : ne pas modifier à la main.',
  '-- Catalogue de départ : recettes au statut « a_tester », à valider avant publication.',
  'begin;',
  '',
];

// Ingrédients
lignes.push('insert into public.ingredients (id, nom, alias, unite, rayon, allergenes) values');
lignes.push(
  Object.values(ingredients)
    .map((i) => `  (${q(i.id)}, ${q(i.nom)}, ${tab(i.alias)}, ${q(i.unite)}, ${q(i.rayon)}, ${tab(i.allergenes)})`)
    .join(',\n') + '\non conflict (id) do nothing;\n',
);

// Origines : une entrée « tradition » par origine du catalogue.
const origines = [...new Set(recettes.map((r) => r.origine))];
lignes.push('insert into public.lieux (id, type, nom) values');
lignes.push(origines.map((o) => `  (${q(slug(o))}, 'tradition', ${q(o)})`).join(',\n') + '\non conflict (id) do nothing;\n');

// Recettes, versions, ingrédients et étapes
for (const r of recettes) {
  lignes.push(`-- ${r.titre}`);
  lignes.push(`with r as (
  insert into public.recettes (slug, titre, alias, familles)
  values (${q(r.slug)}, ${q(r.titre)}, ${tab(r.alias)}, ${tab(r.familles)})
  on conflict (slug) do nothing
  returning id
), v as (
  insert into public.versions_recette (recette_id, numero, statut, niveau, temps_actif_min, temps_total_min,
    materiel, rendement_valeur, rendement_unite, plage_min, plage_max, sources)
  select id, 1, 'a_tester', ${q(r.niveau)}, ${r.tempsActifMin}, ${r.tempsTotalMin}, ${tab(r.materiel)},
    ${r.rendement.valeur}, ${q(r.rendement.unite)}, ${r.plageTestee.min}, ${r.plageTestee.max}, ${tab(r.source ? [r.source] : [])}
  from r
  returning id
), l as (
  insert into public.recettes_lieux (recette_id, lieu_id) select id, ${q(slug(r.origine))} from r
), i as (
  insert into public.ingredients_recette (version_id, ingredient_id, ordre, quantite, regle, indispensable, preparation)
  select v.id, x.ing, x.ordre, x.quantite, x.regle, x.indisp, x.prep from v, (values
${r.ingredients
  .map((i, k) => `    (${q(i.ingredientId)}, ${k + 1}, ${n(i.quantite)}::numeric, ${q(i.regle)}, ${i.indispensable}, ${q(i.preparation)}::text)`)
  .join(',\n')}
  ) as x(ing, ordre, quantite, regle, indisp, prep)
)
insert into public.etapes (version_id, ordre, action, dose, repere, minuteur_sec)
select v.id, x.ordre, x.action, x.dose, x.repere, x.minuteur from v, (values
${r.etapes.map((e) => `  (${e.ordre}, ${q(e.action)}, ${q(e.dose)}::text, ${q(e.repere)}, ${n(e.minuteurSec)}::int)`).join(',\n')}
) as x(ordre, action, dose, repere, minuteur);
`);
}

// Relevés de prix réels
lignes.push('insert into public.releves (ingredient_id, ville, zone, prix_moyen, unite_prix, source, date_releve, valide) values');
lignes.push(
  releves
    .map((p) => `  (${q(p.ingredientId)}, ${q(p.ville)}, ${q(p.zone)}, ${p.prixMoyen}, ${q(p.unitePrix)}, ${q(p.source)}, ${q(p.dateReleve)}, true)`)
    .join(',\n') + '\non conflict do nothing;\n',
);
lignes.push('commit;');

const sortie = join(__dirname, '..', 'supabase', 'seed.sql');
writeFileSync(sortie, lignes.join('\n') + '\n');
console.log(`${recettes.length} recettes, ${Object.keys(ingredients).length} ingrédients, ${origines.length} origines → ${sortie}`);
