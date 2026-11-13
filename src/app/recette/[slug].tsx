import { router, Stack, useLocalSearchParams } from 'expo-router';
import { useMemo } from 'react';
import { Pressable, ScrollView, StyleSheet, Text, View } from 'react-native';
import Animated, { ZoomIn } from 'react-native-reanimated';
import { SafeAreaView } from 'react-native-safe-area-context';

import { Pop } from '@/components/anim';
import { dureeLisible, LIBELLE_NIVEAU } from '@/components/carte-recette';
import { CreditPhoto, Photo } from '@/components/photo';
import { Bouton, Carte, SousTitre, Texte, Titre } from '@/components/ui';
import { CIBLE_MIN, Couleurs, Espace, Rayon } from '@/constants/theme';
import { formaterFcfa } from '@/domain/budget';
import { calculerPlat } from '@/domain/plat';
import { formaterQuantite, horsPlage } from '@/domain/quantites';
import type { EtatStock } from '@/domain/types';
import { useMijote, useRecette } from '@/state/mijote';

const CYCLE: EtatStock['etat'][] = ['aucun', 'partie', 'assez', 'a_verifier'];
const LIBELLE_STOCK: Record<EtatStock['etat'], string> = {
  aucun: 'Je n’en ai pas',
  partie: 'J’en ai la moitié',
  assez: 'J’ai assez',
  a_verifier: 'À vérifier',
};

export default function FicheRecette() {
  const { slug } = useLocalSearchParams<{ slug: string }>();
  const { etat, envoyer } = useMijote();
  const { recette, portions, stocks } = useRecette(slug);

  const calcul = useMemo(
    () =>
      recette &&
      calculerPlat(recette, portions, stocks, {
        ingredients: etat.catalogue.ingredients,
        releves: etat.catalogue.releves,
        formats: etat.catalogue.formats,
        ville: etat.ville,
        aujourdhui: new Date(),
      }),
    [recette, portions, stocks, etat.catalogue, etat.ville],
  );

  if (!recette || !calcul) {
    return (
      <View style={{ padding: Espace.xl }}>
        <Texte>Recette introuvable.</Texte>
      </View>
    );
  }

  const favori = etat.favoris.includes(recette.slug);
  const sansPrix = calcul.aChiffrer.length === calcul.lignes.length;
  const changerStock = (ingredientId: string, requis: number) => {
    const actuel = stocks[ingredientId]?.etat ?? 'aucun';
    const suivant = CYCLE[(CYCLE.indexOf(actuel) + 1) % CYCLE.length];
    // « J'en ai la moitié » : raccourci de saisie ; la quantité exacte viendra d'un champ dédié.
    const stock: EtatStock = suivant === 'partie' ? { etat: 'partie', disponible: requis / 2 } : { etat: suivant };
    envoyer({ type: 'stock', slug: recette.slug, ingredientId, stock });
  };

  return (
    <View style={{ flex: 1 }}>
      <Stack.Screen
        options={{
          headerRight: () => (
            <Pressable
              accessibilityRole="button"
              accessibilityLabel={favori ? 'Retirer des favoris' : 'Ajouter aux favoris'}
              onPress={() => envoyer({ type: 'favori', slug: recette.slug })}
              style={{ minWidth: CIBLE_MIN, minHeight: CIBLE_MIN, justifyContent: 'center', alignItems: 'center' }}>
              <Text style={{ fontSize: 22, color: Couleurs.aubergine }}>{favori ? '♥' : '♡'}</Text>
            </Pressable>
          ),
        }}
      />
      <ScrollView contentContainerStyle={{ paddingBottom: 120 }}>
        <Animated.View entering={ZoomIn.springify().damping(14)}>
          <Photo id={recette.slug} type="recette" titre={recette.titre} style={styles.hero} arrondi={0} />
        </Animated.View>
        <CreditPhoto id={recette.slug} type="recette" />
        <View style={styles.contenu}>
        <View style={{ gap: 4 }}>
          <Text style={styles.provenance}>{[recette.origine, recette.familles[0]].filter(Boolean).join(' · ').toUpperCase()}</Text>
          <Titre>{recette.titre}</Titre>
          <Texte secondaire>
            {LIBELLE_NIVEAU[recette.niveau]} · {dureeLisible(recette.tempsActifMin)} actif · {dureeLisible(recette.tempsTotalMin)} au total
          </Texte>
          <Texte secondaire>Matériel : {recette.materiel.join(', ')}</Texte>
        </View>

        <Carte style={styles.portions}>
          <Text style={styles.portionsLibelle}>{recette.rendement.unite === 'pieces' ? 'Pièces' : 'Personnes'}</Text>
          <View style={styles.compteur}>
            <Bouton libelle="−" variante="contour" accessibilityLabel="Une de moins" style={styles.pas} disabled={portions <= 1}
              onPress={() => envoyer({ type: 'portions', slug: recette.slug, valeur: portions - 1 })} />
            <Pop valeur={portions}>
              <Text style={styles.nombre} accessibilityLiveRegion="polite" accessibilityLabel={`${portions} ${recette.rendement.unite === 'pieces' ? 'pièces' : 'personnes'}`}>{portions}</Text>
            </Pop>
            <Bouton libelle="+" accessibilityLabel="Une de plus" style={styles.pas}
              onPress={() => envoyer({ type: 'portions', slug: recette.slug, valeur: portions + 1 })} />
          </View>
        </Carte>
        {horsPlage(recette, portions) ? (
          <Texte style={styles.alerte}>
            Recette testée de {recette.plageTestee.min} à {recette.plageTestee.max}. Au-delà, préparez-la en plusieurs fois.
          </Texte>
        ) : null}

        <View style={styles.montants}>
          <View style={[styles.montant, { backgroundColor: Couleurs.aubergine }]}>
            <Text style={[styles.montantLibelle, { color: Couleurs.creme }]}>Coût du plat</Text>
            <Pop valeur={calcul.coutPlat}>
              <Text style={[styles.montantValeur, { color: Couleurs.creme }]}>{sansPrix ? 'À chiffrer' : formaterFcfa(calcul.coutPlat)}</Text>
            </Pop>
            <Text style={[styles.montantLibelle, { color: Couleurs.creme }]}>{sansPrix ? 'prix à relever' : `${formaterFcfa(calcul.coutParPortion)} / portion`}</Text>
          </View>
          <View style={[styles.montant, { backgroundColor: Couleurs.vapeur }]}>
            <Text style={styles.montantLibelle}>Budget courses</Text>
            <Pop valeur={calcul.budgetCourses}>
              <Text style={styles.montantValeur}>{sansPrix ? 'À chiffrer' : formaterFcfa(calcul.budgetCourses)}</Text>
            </Pop>
            <Text style={styles.montantLibelle}>{calcul.lignes.filter((l) => l.manquant > 0).length} à acheter</Text>
          </View>
        </View>
        {calcul.aChiffrer.length > 0 ? (
          <Texte secondaire>
            Estimation incomplète : {calcul.aChiffrer.length} ingrédient(s) sans prix relevé à {etat.ville} (
            {calcul.aChiffrer.map((i) => i.nom).join(', ')}).
          </Texte>
        ) : null}

        <SousTitre>Ingrédients</SousTitre>
        <Texte secondaire>Touchez un ingrédient pour indiquer ce que vous avez.</Texte>
        {calcul.lignes.map((l) => {
          const etatStock = l.stock.etat;
          return (
            <Pressable
              key={l.ingredient.id}
              accessibilityRole="button"
              accessibilityLabel={`${l.ingredient.nom}, ${formaterQuantite(l.requis, l.ingredient.unite)}, ${LIBELLE_STOCK[etatStock]}`}
              accessibilityHint={`Touchez pour passer à : ${LIBELLE_STOCK[CYCLE[(CYCLE.indexOf(etatStock) + 1) % CYCLE.length]!]}`}
              onPress={() => changerStock(l.ingredient.id, l.requis)}
              style={styles.ingredient}>
              <Photo id={l.ingredient.id} type="ingredient" titre={l.ingredient.nom} style={styles.ingPhoto} arrondi={10} />
              <View style={{ flex: 1, gap: 2 }}>
                <Text style={styles.ingNom}>
                  {l.ingredient.nom}
                  {l.indispensable ? '' : ' (facultatif)'}
                </Text>
                <Text style={styles.ingMeta}>
                  {formaterQuantite(l.requis, l.ingredient.unite)} · {l.valeur === null ? 'prix à relever' : formaterFcfa(l.valeur)}
                  {l.ancien ? ' · relevé ancien' : ''}
                </Text>
              </View>
              <Pop valeur={etatStock}>
                <Text style={[styles.badge, badge(etatStock)]}>{LIBELLE_STOCK[etatStock]}</Text>
              </Pop>
            </Pressable>
          );
        })}
        {calcul.lignes.some((l) => l.releve) ? (
          <Texte secondaire>
            Sources : {[...new Set(calcul.lignes.flatMap((l) => (l.releve ? [`${l.releve.source} (${l.releve.zone})`] : [])))].join(' ; ')}.
          </Texte>
        ) : null}

        <SousTitre>Étapes</SousTitre>
        {recette.etapes.map((e) => (
          <Texte key={e.ordre}>
            {e.ordre}. {e.action}
          </Texte>
        ))}
        {recette.source ? (
          <Texte secondaire style={{ marginTop: Espace.m }}>
            Recette en cours de validation (non encore testée par l’équipe). Référence sur le plat : {recette.source}
          </Texte>
        ) : null}
        </View>
      </ScrollView>

      <SafeAreaView edges={['bottom']} style={styles.barre}>
        <Bouton libelle="Ajouter aux courses" variante="contour" style={{ flex: 1 }}
          onPress={() => {
            envoyer({ type: 'courses', slug: recette.slug, ajouter: true });
            router.navigate('/courses');
          }} />
        <Bouton libelle="Cuisiner" style={{ flex: 1 }}
          onPress={() => router.push({ pathname: '/cuisine/[slug]', params: { slug: recette.slug } })} />
      </SafeAreaView>
    </View>
  );
}

function badge(e: EtatStock['etat']) {
  switch (e) {
    case 'aucun':
      return { backgroundColor: Couleurs.aubergine, color: Couleurs.creme };
    case 'partie':
      return { backgroundColor: Couleurs.vapeur, color: Couleurs.aubergine };
    case 'assez':
      return { backgroundColor: Couleurs.succesFond, color: Couleurs.succesTexte };
    case 'a_verifier':
      return { backgroundColor: Couleurs.sable, color: Couleurs.caramel };
  }
}

const styles = StyleSheet.create({
  contenu: { padding: Espace.xl, paddingTop: Espace.m, gap: Espace.m },
  hero: { width: '100%', height: 240 },
  ingPhoto: { width: 44, height: 44 },
  provenance: { fontSize: 12, fontWeight: '800', color: Couleurs.caramel },
  portions: { flexDirection: 'row', alignItems: 'center', justifyContent: 'space-between' },
  portionsLibelle: { fontSize: 15, fontWeight: '800', color: Couleurs.texte },
  compteur: { flexDirection: 'row', alignItems: 'center', gap: Espace.m },
  pas: { width: CIBLE_MIN, paddingHorizontal: 0 },
  nombre: { fontSize: 20, fontWeight: '900', minWidth: 28, textAlign: 'center', color: Couleurs.texte },
  alerte: { color: Couleurs.caramel, fontWeight: '700' },
  montants: { flexDirection: 'row', gap: Espace.s + 2 },
  montant: { flex: 1, borderRadius: Rayon.l, padding: Espace.m, gap: 2 },
  montantLibelle: { fontSize: 12, fontWeight: '700', color: Couleurs.aubergine },
  montantValeur: { fontSize: 22, fontWeight: '900', color: Couleurs.aubergine },
  ingredient: { flexDirection: 'row', alignItems: 'center', gap: Espace.s, backgroundColor: Couleurs.blanc, borderRadius: Rayon.m, padding: Espace.m, minHeight: 60 },
  ingNom: { fontSize: 15, fontWeight: '800', color: Couleurs.texte },
  ingMeta: { fontSize: 13, color: Couleurs.texteSecondaire },
  badge: { fontSize: 12, fontWeight: '800', paddingHorizontal: 10, paddingVertical: 6, borderRadius: Rayon.rond, overflow: 'hidden' },
  barre: { flexDirection: 'row', gap: Espace.s + 2, padding: Espace.m, paddingHorizontal: Espace.xl, backgroundColor: Couleurs.creme, borderTopWidth: 1, borderTopColor: Couleurs.bordure },
});
