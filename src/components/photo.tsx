import { Image } from 'expo-image';
import { Linking, StyleSheet, Text, View, type StyleProp, type ViewStyle } from 'react-native';

import { Couleurs } from '@/constants/theme';
import { photosIngredients, photosRecettes } from '@/data/photos';

const TEINTES = ['#E9B36F', '#F59E42', '#D9C7A3', '#C98B5B', '#EFCB8E'];

function teinte(id: string) {
  let h = 0;
  for (const c of id) h = (h * 31 + c.charCodeAt(0)) >>> 0;
  return TEINTES[h % TEINTES.length];
}

type Props = { id: string; type: 'recette' | 'ingredient'; titre: string; style: StyleProp<ViewStyle>; arrondi?: number };

/** Photo libre de droits si disponible, sinon une tuile colorée avec l'initiale. */
export function Photo({ id, type, titre, style, arrondi = 12 }: Props) {
  const p = (type === 'recette' ? photosRecettes : photosIngredients)[id];
  if (p) {
    return (
      <Image
        source={p.image}
        style={[{ borderRadius: arrondi }, style as object]}
        contentFit="cover"
        transition={250}
        accessibilityLabel={`Photo : ${titre}`}
      />
    );
  }
  return (
    <View style={[styles.vide, { backgroundColor: teinte(id), borderRadius: arrondi }, style]} accessibilityElementsHidden importantForAccessibility="no-hide-descendants">
      <Text style={styles.initiale}>{titre.charAt(0)}</Text>
    </View>
  );
}

/** Crédit obligatoire (auteur, licence, lien) sous une photo. */
export function CreditPhoto({ id, type }: { id: string; type: 'recette' | 'ingredient' }) {
  const p = (type === 'recette' ? photosRecettes : photosIngredients)[id];
  if (!p) return null;
  return (
    <Text style={styles.credit} accessibilityRole="link" onPress={() => {
        if (p.credit.source.startsWith('https://commons.wikimedia.org/')) Linking.openURL(p.credit.source).catch(() => undefined);
      }}>
      Photo : {p.credit.auteur}, {p.credit.licence}, via Wikimedia Commons
    </Text>
  );
}

const styles = StyleSheet.create({
  vide: { alignItems: 'center', justifyContent: 'center' },
  initiale: { fontSize: 28, fontWeight: '900', color: Couleurs.aubergine, opacity: 0.6 },
  credit: { fontSize: 11, color: Couleurs.texteSecondaire, paddingHorizontal: 20, paddingTop: 6 },
});
