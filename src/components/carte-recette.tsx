import { Link } from 'expo-router';
import { Pressable, StyleSheet, Text, View } from 'react-native';

import { Couleurs, Espace, Rayon } from '@/constants/theme';
import type { Niveau, Recette } from '@/domain/types';

export const LIBELLE_NIVEAU: Record<Niveau, string> = {
  debutant: 'Débutant',
  intermediaire: 'Intermédiaire',
  avance: 'Avancé',
};

export function dureeLisible(min: number): string {
  if (min < 60) return `${min} min`;
  const h = Math.floor(min / 60);
  const m = min % 60;
  return m ? `${h} h ${String(m).padStart(2, '0')}` : `${h} h`;
}

export function CarteRecette({ recette }: { recette: Recette }) {
  return (
    <Link href={{ pathname: '/recette/[slug]', params: { slug: recette.slug } }} asChild>
      <Pressable accessibilityRole="button" style={styles.carte}>
        <View style={styles.photo} accessibilityElementsHidden importantForAccessibility="no-hide-descendants" />
        <View style={styles.corps}>
          <Text style={styles.titre}>{recette.titre}</Text>
          <Text style={styles.meta}>
            {recette.origine} · {LIBELLE_NIVEAU[recette.niveau]} · {dureeLisible(recette.tempsTotalMin)}
          </Text>
        </View>
      </Pressable>
    </Link>
  );
}

const styles = StyleSheet.create({
  carte: {
    flexDirection: 'row',
    gap: Espace.m,
    alignItems: 'center',
    backgroundColor: Couleurs.blanc,
    borderRadius: Rayon.l,
    padding: Espace.s + 2,
  },
  photo: { width: 64, height: 64, borderRadius: Rayon.m, backgroundColor: '#E9B36F' },
  corps: { flex: 1, gap: 3 },
  titre: { fontSize: 15, fontWeight: '800', color: Couleurs.texte },
  meta: { fontSize: 13, color: Couleurs.texteSecondaire },
});
