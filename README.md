# Mijote

Application de cuisine pour débutants : recettes ivoiriennes et du monde, quantités ajustées au nombre de convives, budget en FCFA et mode cuisine pas à pas.

**Technique** : Expo (React Native, Expo Router, TypeScript) + Supabase (PostgreSQL, RLS). Android d'abord, iOS ensuite.
Le cahier des charges prévoyait Flutter ; le choix est passé à Expo + Supabase.

## Démarrer

```bash
npm install
cp .env.example .env.local   # facultatif : sans Supabase, l'app utilise les données locales
npx expo start               # puis « a » pour Android
```

## Vérifier

```bash
npm test            # logique de calcul (quantités, stock, budget, recherche)
npm run typecheck
npm run lint
```

## Organisation

| Dossier | Contenu |
|---|---|
| `src/app/` | Écrans (Expo Router) : onglets Accueil, Explorer, Courses, Mes recettes ; fiche recette ; mode cuisine |
| `src/domain/` | Logique pure et testée : quantités, stock, coût du plat, budget courses, recherche tolérante |
| `src/data/` | Données locales de départ (`seed.ts`), client Supabase, chargement du catalogue |
| `src/state/` | État de l'app (portions, stock, favoris, courses, recette en cours, minuteur), sauvegardé sur l'appareil |
| `supabase/` | Migration du schéma avec RLS et données de départ |

## Base Supabase

```bash
npx supabase init           # une seule fois, crée supabase/config.toml
npx supabase start
npx supabase db reset       # applique la migration et seed.sql
```

Le public ne lit que les versions de recette **publiées** et les relevés de prix **validés**. L'écriture est réservée aux éditeurs (table `editeurs`).

## Données

Seul le prix du riz est un relevé réel (OCPV, 2–8 novembre 2026, 720 FCFA/kg, district d'Abidjan). Les autres ingrédients s'affichent « prix à relever » et le budget est signalé comme incomplet. Les recettes de départ sont des brouillons non testés.
