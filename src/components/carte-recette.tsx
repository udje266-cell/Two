import { router } from 'expo-router';
import { StyleSheet, Text, View } from 'react-native';
import Animated, { FadeInDown } from 'react-native-reanimated';

import { Couleurs, Espace, Rayon } from '@/constants/theme';
import type { Niveau, Recette } from '@/domain/types';

import { Rebond } from './anim';
import { Photo } from './photo';

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

/** Carte de recette qui apparaît en cascade (selon `rang`) et rebondit au toucher. */
export function CarteRecette({ recette, rang = 0 }: { recette: Recette; rang?: number }) {
  return (
    <Animated.View entering={FadeInDown.delay(Math.min(rang, 10) * 50).springify().damping(14)}>
      <Rebond
        accessibilityLabel={`${recette.titre}, ${recette.origine}`}
        onPress={() => router.push({ pathname: '/recette/[slug]', params: { slug: recette.slug } })}
        style={styles.carte}>
        <Photo id={recette.slug} type="recette" titre={recette.titre} style={styles.photo} />
        <View style={styles.corps}>
          <Text style={styles.titre}>{recette.titre}</Text>
          <Text style={styles.meta} numberOfLines={1}>
            {recette.origine}
          </Text>
          <Text style={styles.meta}>
            {LIBELLE_NIVEAU[recette.niveau]} · {dureeLisible(recette.tempsTotalMin)}
          </Text>
        </View>
      </Rebond>
    </Animated.View>
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
  photo: { width: 72, height: 72 },
  corps: { flex: 1, gap: 3 },
  titre: { fontSize: 15, fontWeight: '800', color: Couleurs.texte },
  meta: { fontSize: 13, color: Couleurs.texteSecondaire },
});
