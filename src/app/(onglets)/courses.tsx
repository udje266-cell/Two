import { useMemo, useState } from 'react';
import { Pressable, ScrollView, Share, StyleSheet, Text, View } from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';

import { Bouton, Texte, Titre } from '@/components/ui';
import { Couleurs, Espace, Rayon } from '@/constants/theme';
import { formaterFcfa } from '@/domain/budget';
import { calculerPlat } from '@/domain/plat';
import { formaterQuantite } from '@/domain/quantites';
import type { Ingredient } from '@/domain/types';
import { useMijote } from '@/state/mijote';

type Article = { ingredient: Ingredient; besoin: number; cout: number | null; achat: string };

export default function Courses() {
  const { etat, envoyer } = useMijote();
  const [coches, setCoches] = useState<string[]>([]);

  const { rayons, total } = useMemo(() => {
    // Additionne les besoins de toutes les recettes avant de choisir les formats d'achat.
    const parIngredient = new Map<string, Article>();
    let total = 0;
    for (const slug of etat.courses) {
      const recette = etat.catalogue.recettes.find((r) => r.slug === slug);
      if (!recette) continue;
      const calcul = calculerPlat(recette, etat.portions[slug] ?? recette.rendement.valeur, etat.stocks[slug] ?? {}, {
        ...etat.catalogue,
        ville: etat.ville,
        aujourdhui: new Date(),
      });
      for (const l of calcul.lignes) {
        if (l.manquant <= 0) continue;
        const a = parIngredient.get(l.ingredient.id);
        parIngredient.set(l.ingredient.id, {
          ingredient: l.ingredient,
          besoin: (a?.besoin ?? 0) + l.manquant,
          cout: l.achat ? (a?.cout ?? 0) + l.achat.cout : a?.cout ?? null,
          achat: l.achat?.mode === 'format' ? `${l.achat.nombre} × ${l.achat.format.libelle}` : 'en vrac',
        });
      }
      total += calcul.budgetCourses;
    }
    const rayons = new Map<string, Article[]>();
    for (const a of parIngredient.values()) rayons.set(a.ingredient.rayon, [...(rayons.get(a.ingredient.rayon) ?? []), a]);
    return { rayons: [...rayons.entries()], total };
  }, [etat]);

  const partager = () => {
    const texte = rayons
      .map(([rayon, articles]) => `${rayon}\n${articles.map((a) => `- ${a.ingredient.nom} : ${formaterQuantite(a.besoin, a.ingredient.unite)}`).join('\n')}`)
      .join('\n\n');
    Share.share({ message: `Courses Mijote\n\n${texte}\n\nBudget estimé : ${formaterFcfa(total)}` }).catch(() => undefined);
  };

  return (
    <SafeAreaView edges={['top']} style={{ flex: 1, backgroundColor: Couleurs.creme }}>
      <ScrollView contentContainerStyle={styles.contenu}>
        <View style={styles.entete}>
          <Titre>Courses</Titre>
          {rayons.length > 0 ? <Bouton libelle="Partager" variante="contour" onPress={partager} /> : null}
        </View>

        {etat.courses.length === 0 ? (
          <Texte secondaire>Votre liste est vide. Depuis une recette, touchez « Ajouter aux courses ».</Texte>
        ) : (
          <>
            <View style={styles.total}>
              <Text style={styles.totalLibelle}>{etat.courses.length} recette(s)</Text>
              <Text style={styles.totalValeur}>{formaterFcfa(total)}</Text>
            </View>
            {etat.courses.map((slug) => {
              const r = etat.catalogue.recettes.find((x) => x.slug === slug);
              return r ? (
                <Pressable key={slug} accessibilityRole="button" onPress={() => envoyer({ type: 'courses', slug, ajouter: false })} style={styles.retirer}>
                  <Text style={styles.retirerTexte}>Retirer {r.titre}</Text>
                </Pressable>
              ) : null;
            })}
            {rayons.length === 0 ? <Texte>Vous avez tout ce qu’il faut.</Texte> : null}
            {rayons.map(([rayon, articles]) => (
              <View key={rayon} style={{ gap: Espace.s }}>
                <Text accessibilityRole="header" style={styles.rayon}>{rayon.toUpperCase()}</Text>
                {articles.map((a) => {
                  const coche = coches.includes(a.ingredient.id);
                  return (
                    <Pressable
                      key={a.ingredient.id}
                      accessibilityRole="checkbox"
                      accessibilityState={{ checked: coche }}
                      onPress={() => setCoches((c) => (coche ? c.filter((x) => x !== a.ingredient.id) : [...c, a.ingredient.id]))}
                      style={styles.article}>
                      <View style={[styles.case, coche && styles.caseCochee]}>{coche ? <Text style={styles.coche}>✓</Text> : null}</View>
                      <View style={{ flex: 1 }}>
                        <Text style={[styles.nom, coche && styles.barre]}>{a.ingredient.nom}</Text>
                        <Text style={styles.meta}>Besoin {formaterQuantite(a.besoin, a.ingredient.unite)} · {a.achat}</Text>
                      </View>
                      <Text style={styles.cout}>{a.cout === null ? 'à chiffrer' : formaterFcfa(a.cout)}</Text>
                    </Pressable>
                  );
                })}
              </View>
            ))}
          </>
        )}
      </ScrollView>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  contenu: { padding: Espace.xl, gap: Espace.m },
  entete: { flexDirection: 'row', justifyContent: 'space-between', alignItems: 'center' },
  total: { backgroundColor: Couleurs.aubergine, borderRadius: Rayon.l, padding: Espace.l, flexDirection: 'row', justifyContent: 'space-between', alignItems: 'center' },
  totalLibelle: { color: Couleurs.creme, fontWeight: '700' },
  totalValeur: { color: Couleurs.creme, fontWeight: '900', fontSize: 20 },
  retirer: { minHeight: 44, justifyContent: 'center' },
  retirerTexte: { color: Couleurs.aubergine, fontWeight: '700', textDecorationLine: 'underline' },
  rayon: { fontSize: 13, fontWeight: '900', color: Couleurs.caramel, marginTop: Espace.s },
  article: { flexDirection: 'row', alignItems: 'center', gap: Espace.m, backgroundColor: Couleurs.blanc, borderRadius: Rayon.m, padding: Espace.m, minHeight: 56 },
  case: { width: 24, height: 24, borderRadius: 6, borderWidth: 2, borderColor: Couleurs.aubergine, alignItems: 'center', justifyContent: 'center' },
  caseCochee: { backgroundColor: Couleurs.aubergine },
  coche: { color: Couleurs.creme, fontWeight: '900' },
  nom: { fontSize: 15, fontWeight: '800', color: Couleurs.texte },
  barre: { textDecorationLine: 'line-through', color: Couleurs.texteSecondaire },
  meta: { fontSize: 13, color: Couleurs.texteSecondaire },
  cout: { fontSize: 14, fontWeight: '800', color: Couleurs.texte },
});
