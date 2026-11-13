import { Image } from 'expo-image';
import { Link, router } from 'expo-router';
import { useState } from 'react';
import { Pressable, ScrollView, StyleSheet, Text, TextInput, View } from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';

import { CarteRecette } from '@/components/carte-recette';
import { SousTitre } from '@/components/ui';
import { Couleurs, Espace, Rayon } from '@/constants/theme';
import { useMijote } from '@/state/mijote';

const ENTREES = ['Cuisines du monde', 'Pâtisserie', 'Viennoiserie', 'Boulangerie'];

export default function Accueil() {
  const { etat } = useMijote();
  const [requete, setRequete] = useState('');
  const enCours = etat.enCours && etat.catalogue.recettes.find((r) => r.slug === etat.enCours?.slug);
  const premieres = etat.catalogue.recettes.filter((r) => r.niveau === 'debutant').slice(0, 5);

  return (
    <ScrollView style={{ backgroundColor: Couleurs.creme }} contentContainerStyle={{ paddingBottom: Espace.xxl }}>
      <View style={styles.entete}>
        <SafeAreaView edges={['top']} style={{ gap: Espace.l }}>
          <View style={styles.ligne}>
            <Image source={require('@/assets/images/icon.png')} style={styles.icone} accessibilityIgnoresInvertColors />
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

        <Link href="/explorer" asChild>
          <Pressable accessibilityRole="button" style={styles.vedette}>
            <Text style={styles.vedetteLabel}>Mise en avant</Text>
            <Text style={styles.vedetteTitre}>Cuisine ivoirienne</Text>
          </Pressable>
        </Link>
        <View style={styles.grille}>
          {ENTREES.map((e) => (
            <Link key={e} href="/explorer" asChild>
              <Pressable accessibilityRole="button" style={styles.tuile}>
                <Text style={styles.tuileTexte}>{e}</Text>
              </Pressable>
            </Link>
          ))}
        </View>

        <SousTitre>Mes premières recettes</SousTitre>
        {premieres.map((r) => (
          <CarteRecette key={r.slug} recette={r} />
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
  tuileTexte: { color: Couleurs.aubergine, fontSize: 15, fontWeight: '800' },
});
