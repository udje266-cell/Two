import type { ReactNode } from 'react';
import { Pressable, StyleSheet, Text, View, type PressableProps, type TextProps, type ViewStyle } from 'react-native';

import { CIBLE_MIN, Couleurs, Espace, Rayon } from '@/constants/theme';

export function Titre({ children, style, ...p }: TextProps & { children: ReactNode }) {
  return (
    <Text accessibilityRole="header" style={[styles.titre, style]} {...p}>
      {children}
    </Text>
  );
}

export function SousTitre({ children }: { children: ReactNode }) {
  return (
    <Text accessibilityRole="header" style={styles.sousTitre}>
      {children}
    </Text>
  );
}

export function Texte({ children, secondaire, style, ...p }: TextProps & { secondaire?: boolean; children: ReactNode }) {
  return (
    <Text style={[styles.texte, secondaire && styles.secondaire, style]} {...p}>
      {children}
    </Text>
  );
}

export function Carte({ children, style }: { children: ReactNode; style?: ViewStyle }) {
  return <View style={[styles.carte, style]}>{children}</View>;
}

type BoutonProps = Omit<PressableProps, 'style'> & {
  libelle: string;
  variante?: 'plein' | 'contour' | 'accent';
  style?: ViewStyle;
};

export function Bouton({ libelle, variante = 'plein', style, ...p }: BoutonProps) {
  const fond = variante === 'plein' ? Couleurs.aubergine : variante === 'accent' ? Couleurs.vapeur : 'transparent';
  const couleur = variante === 'plein' ? Couleurs.creme : Couleurs.aubergine;
  return (
    <Pressable
      accessibilityRole="button"
      style={({ pressed }) => [
        styles.bouton,
        { backgroundColor: fond, opacity: pressed ? 0.8 : 1 },
        variante === 'contour' && styles.contour,
        style,
      ]}
      {...p}>
      <Text style={[styles.boutonTexte, { color: couleur }]}>{libelle}</Text>
    </Pressable>
  );
}

const styles = StyleSheet.create({
  titre: { fontSize: 26, fontWeight: '900', color: Couleurs.aubergine },
  sousTitre: { fontSize: 17, fontWeight: '800', color: Couleurs.texte, marginTop: Espace.s },
  texte: { fontSize: 15, color: Couleurs.texte, lineHeight: 21 },
  secondaire: { color: Couleurs.texteSecondaire, fontSize: 13 },
  carte: { backgroundColor: Couleurs.blanc, borderRadius: Rayon.m, padding: Espace.m },
  bouton: {
    minHeight: CIBLE_MIN + 4,
    borderRadius: Rayon.m,
    paddingHorizontal: Espace.l,
    alignItems: 'center',
    justifyContent: 'center',
  },
  contour: { borderWidth: 2, borderColor: Couleurs.aubergine },
  boutonTexte: { fontSize: 15, fontWeight: '800' },
});
