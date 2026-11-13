// Télécharge des photos sous licence libre depuis Wikimedia Commons et génère src/data/photos.ts.
// Usage : node scripts/photos.mjs
// Seules les licences CC0, CC BY, CC BY-SA et domaine public sont retenues ; auteur et licence sont conservés.
import { execFileSync } from 'node:child_process';
import { existsSync, mkdirSync, readdirSync, readFileSync, rmSync, writeFileSync } from 'node:fs';
import { join } from 'node:path';

const RACINE = new URL('..', import.meta.url).pathname;
const UA = 'MijoteCatalogue/0.1 (outil de constitution de catalogue)';
const LARGEUR = 480;

const INGREDIENTS = {
  oignon: 'Oignon', tomate: 'Tomate', ail: 'Ail cultivé', gingembre: 'Gingembre', piment: 'Piment', gombo: 'Gombo',
  aubergine: 'Aubergine', gnangnan: 'Solanum aethiopicum', poivron: 'Poivron', carotte: 'Carotte cultivée', chou: 'Chou commun',
  'pomme-de-terre': 'Pomme de terre', 'patate-douce': 'Patate douce', igname: 'Igname', manioc: 'Manioc',
  'banane-plantain': 'Banane plantain', courgette: 'Courgette', epinards: 'Épinard', 'feuilles-manioc': 'Pondu',
  persil: 'Persil', coriandre: 'Coriandre cultivée', menthe: 'Menthe', citron: 'Citron', 'citron-vert': 'Lime (fruit)',
  avocat: 'Avocat (fruit)', mangue: 'Mangue', ananas: 'Ananas', 'noix-coco': 'Noix de coco', poulet: 'Viande de poulet',
  boeuf: 'Viande bovine', poisson: 'Tilapia', crevette: 'Crevette', oeuf: 'Œuf (aliment)', lait: 'Lait', beurre: 'Beurre',
  'riz-local': 'Riz', attieke: 'Attiéké', farine: 'Farine de blé', semoule: 'Semoule', lentilles: 'Lentille cultivée',
  'pois-chiches': 'Pois chiche', niebe: 'Niébé', arachide: 'Arachide', 'huile-palme': 'Huile de palme', 'graine-palme': 'Élaeis de Guinée',
  bissap: 'Hibiscus sabdariffa', fonio: 'Fonio', mil: 'Mil', soumbala: 'Soumbala', cumin: 'Cumin', curcuma: 'Curcuma',
  cannelle: 'Cannelle', safran: 'Safran (épice)', chocolat: 'Chocolat noir', miel: 'Miel', dattes: 'Datte',
};

// Images vérifiées à l'œil et écartées car elles ne montrent pas le plat ou l'ingrédient.
const REJETS = new Set([
  'poulet-colombo', 'kabato', 'claclo', 'fonio-legumes', 'foutou-banane', 'moambe', 'brioche',
  'confiture-mangue', 'sauce-gombo', 'choukouya', 'poulet', 'fonio',
]);

const ANGLAIS = {
  'yassa-poulet': 'Yassa (food)', 'jollof-rice': 'Jollof rice', suya: 'Suya', moambe: 'Moambe', 'doro-wat': 'Doro wat',
  'fonio-legumes': 'Fonio', pastels: 'Fataya', dal: 'Dal', nems: 'Gỏi cuốn', 'accras-morue': 'Accra (food)',
  garba: 'Attiéké', choukouya: 'Dibi (food)', claclo: 'Fried plantain', degue: 'Dégué', abolo: 'Abolo',
  harira: 'Harira', 'chorba-frik': 'Chorba', mujaddara: 'Mujaddara', koshari: 'Koshary', baguette: 'Baguette',
  'pain-pita': 'Pita', croissants: 'Croissant', cookies: 'Chocolate chip cookie', madeleines: 'Madeleine (cake)',
  ananas: 'Pineapple', 'graine-palme': 'Elaeis guineensis', fonio: 'Fonio', mil: 'Pearl millet',
};

async function api(params, essai = 0, langue = 'fr') {
  const url = `https://${langue}.wikipedia.org/w/api.php?` + new URLSearchParams({ format: 'json', formatversion: '2', ...params });
  const r = await fetch(url, { headers: { 'User-Agent': UA } });
  if (r.status === 429 && essai < 6) {
    await new Promise((ok) => setTimeout(ok, 2000 * 2 ** essai));
    return api(params, essai + 1, langue);
  }
  if (!r.ok) throw new Error(`${r.status}`);
  return r.json();
}

const LIBRE = /^(cc0|cc[- ]by(-sa)?[- ]?\d|public domain|domaine public|pd|fal|licence art libre|copyrighted free use)/i;
const nettoyer = (html = '') => html.replace(/<[^>]+>/g, '').replace(/\s+/g, ' ').trim();
const paquets = (l, n) => Array.from({ length: Math.ceil(l.length / n) }, (_, k) => l.slice(k * n, k * n + n));

/** Pour une liste de titres d'articles, renvoie titre → photo libre (ou motif de refus). */
async function photosDePages(titres, langue = 'fr') {
  const fichierDe = {};
  for (const lot of paquets(titres, 50)) {
    const d = await api({ action: 'query', titles: lot.join('|'), prop: 'pageimages', piprop: 'name', redirects: '1' }, 0, langue);
    const renvoi = {};
    for (const x of [...(d.query?.normalized ?? []), ...(d.query?.redirects ?? [])]) renvoi[x.to] = x.from;
    for (const page of d.query?.pages ?? []) {
      let t = page.title;
      while (renvoi[t]) t = renvoi[t];
      if (page.pageimage) fichierDe[t] = page.pageimage;
    }
  }
  const infos = {};
  for (const lot of paquets([...new Set(Object.values(fichierDe))], 50)) {
    const d = await api({
      action: 'query', titles: lot.map((f) => `File:${f}`).join('|'), prop: 'imageinfo',
      iiprop: 'url|extmetadata', iiurlwidth: String(LARGEUR),
    }, 0, langue);
    const renvoi = {};
    for (const x of d.query?.normalized ?? []) renvoi[x.to] = x.from;
    for (const page of d.query?.pages ?? []) {
      const ii = page.imageinfo?.[0];
      if (ii) infos[(renvoi[page.title] ?? page.title).replace(/^File:/, '')] = ii;
    }
  }
  const res = {};
  for (const t of titres) {
    const nom = fichierDe[t];
    const ii = nom && (infos[nom] ?? infos[nom.replace(/_/g, ' ')]);
    if (!ii) { res[t] = { refus: 'aucune image' }; continue; }
    const m = ii.extmetadata ?? {};
    const licence = nettoyer(m.LicenseShortName?.value);
    if (!LIBRE.test(licence)) { res[t] = { refus: licence || 'licence inconnue' }; continue; }
    if (!/\.(jpe?g|png)$/i.test(nom)) { res[t] = { refus: `format ${nom.split('.').pop()}` }; continue; }
    res[t] = {
      url: ii.thumburl ?? ii.url,
      auteur: nettoyer(m.Artist?.value) || 'Auteur inconnu',
      licence,
      lienLicence: m.LicenseUrl?.value,
      source: ii.descriptionurl,
    };
  }
  return res;
}

async function telecharger(url, chemin) {
  const r = await fetch(url, { headers: { 'User-Agent': UA } });
  if (!r.ok) throw new Error(`${r.status}`);
  const brut = join(chemin + '.src');
  writeFileSync(brut, Buffer.from(await r.arrayBuffer()));
  // Recadrage carré et compression pour limiter la taille de l'application.
  execFileSync('python3', ['-c', `
from PIL import Image, ImageOps
im = Image.open(${JSON.stringify(brut)}).convert('RGB')
im = ImageOps.fit(im, (${LARGEUR}, ${LARGEUR}), Image.LANCZOS)
im.save(${JSON.stringify(chemin)}, 'JPEG', quality=72, optimize=True)
`]);
  execFileSync('rm', [brut]);
}

async function lot(type, entrees) {
  const dossier = join(RACINE, 'assets/photos', type);
  mkdirSync(dossier, { recursive: true });
  const photos = await photosDePages([...new Set(entrees.map(([, t]) => t))]);
  // Deuxième essai sur Wikipédia en anglais pour les articles sans image libre.
  const secours = entrees.filter(([id, t]) => photos[t]?.refus && ANGLAIS[id]).map(([id]) => ANGLAIS[id]);
  const photosEn = secours.length ? await photosDePages(secours, 'en') : {};
  for (const [id, t] of entrees) if (photos[t]?.refus && photosEn[ANGLAIS[id]] && !photosEn[ANGLAIS[id]].refus) photos[t] = photosEn[ANGLAIS[id]];
  const resultats = {};
  for (const [id, titre] of entrees) {
    const p = photos[titre];
    if (REJETS.has(id)) {
      rmSync(join(dossier, `${id}.jpg`), { force: true });
      continue;
    }
    if (!p || p.refus) {
      console.log(`  ✗ ${id} (${titre}) : ${p?.refus ?? 'aucune image'}`);
      continue;
    }
    try {
      const chemin = join(dossier, `${id}.jpg`);
      if (!existsSync(chemin)) {
        await telecharger(p.url, chemin);
        await new Promise((r) => setTimeout(r, 300));
      }
      resultats[id] = { auteur: p.auteur, licence: p.licence, lienLicence: p.lienLicence, source: p.source };
      console.log(`  ✓ ${id} — ${p.licence}`);
    } catch (e) {
      console.log(`  ✗ ${id} : ${e.message}`);
    }
  }
  return resultats;
}

// Lit slug et article Wikipédia de chaque recette dans les fichiers du catalogue.
const recettesCompactes = readdirSync(join(RACINE, 'src/data/catalogue'))
  .filter((f) => f.endsWith('.ts'))
  .flatMap((f) => [...readFileSync(join(RACINE, 'src/data/catalogue', f), 'utf8').matchAll(/s: '([^']+)'[\s\S]*?(?:w: '([^']+)'|\n  \},)/g)])
  .map((m) => ({ s: m[1], w: m[2]?.replace(/’/g, "'") }));
console.log('Recettes');
const rec = await lot('recettes', recettesCompactes.filter((r) => r.w).map((r) => [r.s, r.w]));
console.log('Ingrédients');
const ing = await lot('ingredients', Object.entries(INGREDIENTS));

const ligne = (type, id, c) =>
  `  ${JSON.stringify(id)}: { image: require('@/assets/photos/${type}/${id}.jpg'), credit: ${JSON.stringify(c)} },`;
writeFileSync(
  join(RACINE, 'src/data/photos.ts'),
  `// Fichier généré par scripts/photos.mjs : ne pas modifier à la main.
// Photos Wikimedia Commons sous licence libre ; les crédits sont affichés dans l'application.
import type { Photo } from '@/domain/types';

type Entree = { image: number; credit: Photo };

export const photosRecettes: Record<string, Entree> = {
${Object.entries(rec).map(([id, c]) => ligne('recettes', id, c)).join('\n')}
};

export const photosIngredients: Record<string, Entree> = {
${Object.entries(ing).map(([id, c]) => ligne('ingredients', id, c)).join('\n')}
};
`,
);
console.log(`\n${Object.keys(rec).length} photos de recettes, ${Object.keys(ing).length} photos d’ingrédients.`);
