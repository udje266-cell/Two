import { useLocalSearchParams } from 'expo-router';
import { useMemo, useState } from 'react';
import { FlatList, Pressable, ScrollView, StyleSheet, Text, TextInput, View } from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';

import { CarteRecette } from '@/components/carte-recette';
import { Texte, Titre } from '@/components/ui';
import { Couleurs, Espace, Rayon } from '@/constants/theme';
import { correspond } from '@/domain/recherche';
import { useMijote } from '@/state/mijote';

type Filtre = 'maintenant' | 'debutant';

export default function Explorer() {
  const { etat } = useMijote();
  const params = useLocalSearchParams<{ q?: string; famille?: string; origine?: string }>();
  const [requete, setRequete] = useState(params.q ?? '');
  const [famille, setFamille] = useState<string | undefined>(params.famille);
  const [origine, setOrigine] = useState<string | undefined>(params.origine);
  // Quand on arrive depuis l'accueil avec de nouveaux paramètres, on applique ces filtres.
  const [vus, setVus] = useState(params);
  if (vus.famille !== params.famille || vus.origine !== params.origine || vus.q !== params.q) {
    setVus(params);
    setFamille(params.famille);
    setOrigine(params.origine);
    if (params.q !== undefined) setRequete(params.q);
  }
  const [filtres, setFiltres] = useState<Filtre[]>([]);
  const basculer = (f: Filtre) => setFiltres((l) => (l.includes(f) ? l.filter((x) => x !== f) : [...l, f]));

  const resultats = useMemo(() => {
    const { recettes, ingredients } = etat.catalogue;
    return recettes.filter((r) => {
      const textes = [r.titre, ...r.alias, r.origine, ...r.familles, ...r.ingredients.flatMap((i) => {
        const ing = ingredients[i.ingredientId];
        return ing ? [ing.nom, ...ing.alias] : [];
      })];
      if (!correspond(requete, textes)) return false;
      if (famille && !r.familles.includes(famille)) return false;
      if (origine && !r.origine.includes(origine)) return false;
      if (filtres.includes('debutant') && r.niveau !== 'debutant') return false;
      if (filtres.includes('maintenant')) {
        const stocks = etat.stocks[r.slug] ?? {};
        const couvert = r.ingredients.filter((i) => i.indispensable).every((i) => {
          const s = stocks[i.ingredientId];
          return s?.etat === 'assez' || s?.etat === 'partie';
        });
        if (!couvert) return false;
      }
      return true;
    });
  }, [etat.catalogue, etat.stocks, requete, filtres, famille, origine]);

  const familles = useMemo(
    () => [...new Set(etat.catalogue.recettes.flatMap((r) => r.familles))].sort((a, b) => a.localeCompare(b, 'fr')),
    [etat.catalogue.recettes],
  );

  return (
    <SafeAreaView edges={['top']} style={{ flex: 1, backgroundColor: Couleurs.creme }}>
      <FlatList
        data={resultats}
        keyExtractor={(r) => r.slug}
        renderItem={({ item, index }) => <CarteRecette recette={item} rang={index} />}
        initialNumToRender={8}
        contentContainerStyle={styles.liste}
        ListHeaderComponent={
          <View style={{ gap: Espace.m }}>
            <Titre>Explorer</Titre>
            <TextInput
              value={requete}
              onChangeText={setRequete}
              placeholder="Plat, ingrédient, cuisine…"
              placeholderTextColor={Couleurs.texteSecondaire}
              accessibilityLabel="Rechercher une recette"
              style={styles.recherche}
            />
            <View style={styles.puces}>
              <Puce libelle="Je peux cuisiner maintenant" actif={filtres.includes('maintenant')} onPress={() => basculer('maintenant')} />
              <Puce libelle="Débutant" actif={filtres.includes('debutant')} onPress={() => basculer('debutant')} />
              {origine ? <Puce libelle={`${origine} ✕`} actif onPress={() => setOrigine(undefined)} /> : null}
            </View>
            <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={{ gap: Espace.s }}>
              {familles.map((f) => (
                <Puce key={f} libelle={f} actif={famille === f} onPress={() => setFamille(famille === f ? undefined : f)} />
              ))}
            </ScrollView>
            <Texte secondaire>{resultats.length} recette(s)</Texte>
          </View>
        }
        ListEmptyComponent={
          <View style={{ gap: Espace.s }}>
            <Texte>Aucune recette ne correspond.</Texte>
            {filtres.length > 0 || famille || origine ? (
              <Pressable accessibilityRole="button" onPress={() => {
                setFiltres([]);
                setFamille(undefined);
                setOrigine(undefined);
              }} style={styles.retirer}>
                <Text style={styles.retirerTexte}>Retirer les filtres</Text>
              </Pressable>
            ) : null}
          </View>
        }
      />
    </SafeAreaView>
  );
}

function Puce({ libelle, actif, onPress }: { libelle: string; actif: boolean; onPress: () => void }) {
  return (
    <Pressable
      accessibilityRole="switch"
      accessibilityState={{ checked: actif }}
      onPress={onPress}
      style={[styles.puce, actif && { backgroundColor: Couleurs.aubergine, borderColor: Couleurs.aubergine }]}>
      <Text style={[styles.puceTexte, actif && { color: Couleurs.creme }]}>{libelle}</Text>
    </Pressable>
  );
}

const styles = StyleSheet.create({
  liste: { padding: Espace.xl, gap: Espace.s },
  recherche: { backgroundColor: Couleurs.blanc, borderRadius: Rayon.m, minHeight: 48, paddingHorizontal: Espace.l, fontSize: 15, color: Couleurs.texte },
  puces: { flexDirection: 'row', flexWrap: 'wrap', gap: Espace.s },
  puce: { minHeight: 44, justifyContent: 'center', paddingHorizontal: Espace.m, borderRadius: Rayon.rond, borderWidth: 1, borderColor: Couleurs.bordure, backgroundColor: Couleurs.blanc },
  puceTexte: { fontSize: 13, fontWeight: '700', color: Couleurs.aubergine },
  retirer: { minHeight: 44, justifyContent: 'center' },
  retirerTexte: { color: Couleurs.aubergine, fontWeight: '800', textDecorationLine: 'underline' },
});
