import { Image } from 'expo-image';
import { Link, router } from 'expo-router';
import { useState } from 'react';
import { FlatList, Pressable, ScrollView, StyleSheet, Text, TextInput, View } from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';

import { Rebond, Vapeur } from '@/components/anim';
import { CarteRecette } from '@/components/carte-recette';
import { Photo } from '@/components/photo';
import { SousTitre } from '@/components/ui';
import { Couleurs, Espace, Rayon } from '@/constants/theme';
import { useMijote } from '@/state/mijote';

const ENTREES: { libelle: string; famille?: string }[] = [
  { libelle: 'Cuisines du monde' },
  { libelle: 'Pâtisserie', famille: 'Pâtisserie' },
  { libelle: 'Viennoiserie', famille: 'Viennoiserie' },
  { libelle: 'Boulangerie', famille: 'Boulangerie' },
];

export default function Accueil() {
  const { etat } = useMijote();
  const [requete, setRequete] = useState('');
  const enCours = etat.enCours && etat.catalogue.recettes.find((r) => r.slug === etat.enCours?.slug);
  const ivoiriennes = etat.catalogue.recettes.filter((r) => r.origine.includes('Côte d’Ivoire'));
  const premieres = etat.catalogue.recettes.filter((r) => r.niveau === 'debutant' && r.tempsTotalMin <= 45).slice(0, 6);

  return (
    <ScrollView style={{ backgroundColor: Couleurs.creme }} contentContainerStyle={{ paddingBottom: Espace.xxl }}>
      <View style={styles.entete}>
        <SafeAreaView edges={['top']} style={{ gap: Espace.l }}>
          <View style={styles.ligne}>
            <Vapeur taille={40}>
              <Image source={require('@/assets/images/icon.png')} style={styles.icone} accessibilityIgnoresInvertColors />
            </Vapeur>
            <Text style={styles.marque}>Mijote</Text>
            <View style={{ flex: 1 }} />
            <Text style={styles.ville}>{etat.ville}</Text>
          </View>
          <Text accessibilityRole="header" style={styles.question}>
            Qu’est-ce qu’on cuisine aujourd’hui ?
          </Text>
          <TextInput
            value={requete}
            onChangeText={setRequete}
            onSubmitEditing={() => router.push({ pathname: '/explorer', params: { q: requete } })}
            placeholder="Un plat, un ingrédient… (attieke)"
            placeholderTextColor={Couleurs.texteSecondaire}
            accessibilityLabel="Rechercher une recette"
            returnKeyType="search"
            style={styles.recherche}
          />
        </SafeAreaView>
      </View>

      <View style={styles.contenu}>
        {enCours ? (
          <Link href={{ pathname: '/cuisine/[slug]', params: { slug: enCours.slug } }} asChild>
            <Pressable accessibilityRole="button" style={styles.reprendre}>
              <Text style={styles.reprendreLabel}>Reprendre la recette en cours</Text>
              <Text style={styles.reprendreTitre}>
                {enCours.titre} · étape {(etat.enCours?.etape ?? 0) + 1} sur {enCours.etapes.length}
              </Text>
            </Pressable>
          </Link>
        ) : null}

        <Rebond style={styles.vedette} onPress={() => router.push({ pathname: '/explorer', params: { origine: 'Côte d’Ivoire' } })}>
          <Text style={styles.vedetteLabel}>Mise en avant · {ivoiriennes.length} recettes</Text>
          <Text style={styles.vedetteTitre}>Cuisine ivoirienne</Text>
        </Rebond>
        <FlatList
          horizontal
          data={ivoiriennes}
          keyExtractor={(r) => r.slug}
          showsHorizontalScrollIndicator={false}
          contentContainerStyle={{ gap: Espace.s + 2 }}
          renderItem={({ item }) => (
            <Rebond
              accessibilityLabel={item.titre}
              onPress={() => router.push({ pathname: '/recette/[slug]', params: { slug: item.slug } })}
              style={styles.vignette}>
              <Photo id={item.slug} type="recette" titre={item.titre} style={styles.vignettePhoto} arrondi={14} />
              <Text style={styles.vignetteTitre} numberOfLines={2}>{item.titre}</Text>
            </Rebond>
          )}
        />
        <View style={styles.grille}>
          {ENTREES.map((e) => (
            <Rebond
              key={e.libelle}
              style={styles.tuile}
              onPress={() => router.push({ pathname: '/explorer', params: e.famille ? { famille: e.famille } : {} })}>
              <Text style={styles.tuileTexte}>{e.libelle}</Text>
            </Rebond>
          ))}
        </View>

        <SousTitre>Mes premières recettes</SousTitre>
        {premieres.map((r, k) => (
          <CarteRecette key={r.slug} recette={r} rang={k} />
        ))}
      </View>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  entete: { backgroundColor: Couleurs.aubergine, paddingHorizontal: Espace.xl, paddingBottom: Espace.xl, paddingTop: Espace.m },
  ligne: { flexDirection: 'row', alignItems: 'center', gap: Espace.s },
  icone: { width: 36, height: 36, borderRadius: 10 },
  marque: { color: Couleurs.creme, fontSize: 24, fontWeight: '900' },
  ville: { color: Couleurs.creme, fontSize: 13, fontWeight: '700' },
  question: { color: Couleurs.creme, fontSize: 22, fontWeight: '800' },
  recherche: {
    backgroundColor: Couleurs.creme,
    borderRadius: Rayon.m,
    minHeight: 48,
    paddingHorizontal: Espace.l,
    fontSize: 15,
    color: Couleurs.texte,
  },
  contenu: { padding: Espace.xl, gap: Espace.m },
  reprendre: { backgroundColor: Couleurs.blanc, borderColor: Couleurs.vapeur, borderWidth: 1.5, borderRadius: Rayon.l, padding: Espace.m, gap: 2 },
  reprendreLabel: { color: Couleurs.caramel, fontSize: 12, fontWeight: '700' },
  reprendreTitre: { color: Couleurs.texte, fontSize: 15, fontWeight: '800' },
  vedette: { backgroundColor: Couleurs.vapeur, borderRadius: Rayon.l, height: 96, justifyContent: 'flex-end', padding: Espace.l },
  vedetteLabel: { color: Couleurs.aubergine, fontSize: 12, fontWeight: '700' },
  vedetteTitre: { color: Couleurs.aubergine, fontSize: 20, fontWeight: '900' },
  grille: { flexDirection: 'row', flexWrap: 'wrap', gap: Espace.s + 2 },
  tuile: { backgroundColor: Couleurs.blanc, borderRadius: Rayon.l, height: 72, padding: Espace.m, flexBasis: '47%', flexGrow: 1 },
  vignette: { width: 132, gap: 6 },
  vignettePhoto: { width: 132, height: 132 },
  vignetteTitre: { fontSize: 14, fontWeight: '800', color: Couleurs.texte },
  tuileTexte: { color: Couleurs.aubergine, fontSize: 15, fontWeight: '800' },
});
