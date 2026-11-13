import { router, useLocalSearchParams } from 'expo-router';
import { useEffect, useState } from 'react';
import Animated, { FadeInRight, FadeOutLeft, ZoomIn } from 'react-native-reanimated';
import { AppState, StyleSheet, Text, View } from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';

import { Confettis, Progression, Pulsation } from '@/components/anim';
import { Bouton } from '@/components/ui';
import { Couleurs, Espace, Rayon } from '@/constants/theme';
import { useMijote, useRecette } from '@/state/mijote';

function formaterDuree(ms: number) {
  const s = Math.max(0, Math.ceil(ms / 1000));
  return `${Math.floor(s / 60)}:${String(s % 60).padStart(2, '0')}`;
}

export default function ModeCuisine() {
  const { slug } = useLocalSearchParams<{ slug: string }>();
  const { etat, envoyer } = useMijote();
  const { recette, portions } = useRecette(slug);
  const etape = etat.enCours?.slug === slug ? etat.enCours.etape : 0;
  const [maintenant, setMaintenant] = useState(() => Date.now());
  const [fini, setFini] = useState(false);

  useEffect(() => {
    if (recette && !fini && etat.enCours?.slug !== recette.slug) {
      envoyer({ type: 'enCours', valeur: { slug: recette.slug, etape: 0, portions } });
    }
  }, [recette, fini, etat.enCours?.slug, portions, envoyer]);

  // Le minuteur est calculé à partir de son échéance : il reste juste après une mise en veille.
  const minuteur = etat.minuteur?.slug === slug && etat.minuteur.etape === etape ? etat.minuteur : null;
  const actif = minuteur?.finA != null;
  useEffect(() => {
    if (!actif) return;
    const iv = setInterval(() => setMaintenant(Date.now()), 500);
    const abo = AppState.addEventListener('change', () => setMaintenant(Date.now()));
    return () => {
      clearInterval(iv);
      abo.remove();
    };
  }, [actif]);

  if (!recette) return null;
  const e = recette.etapes[etape];
  const total = recette.etapes.length;
  const dureeMs = (e.minuteurSec ?? 0) * 1000;
  const resteMs = minuteur ? (minuteur.finA != null ? minuteur.finA - maintenant : minuteur.resteMs) : dureeMs;
  const termine = minuteur != null && resteMs <= 0;

  const allerA = (i: number) => envoyer({ type: 'enCours', valeur: { slug: recette.slug, etape: i, portions } });
  const lancer = () => {
    setMaintenant(Date.now());
    envoyer({ type: 'minuteur', valeur: { slug: recette.slug, etape, finA: Date.now() + resteMs, resteMs } });
  };
  const pause = () => envoyer({ type: 'minuteur', valeur: { slug: recette.slug, etape, finA: null, resteMs } });
  const annuler = () => envoyer({ type: 'minuteur', valeur: null });
  const quitter = () => (router.canGoBack() ? router.back() : router.replace('/'));

  if (fini) {
    return (
      <SafeAreaView style={[styles.ecran, { justifyContent: 'center', alignItems: 'center' }]}>
        <Animated.Text entering={ZoomIn.springify().damping(8)} style={styles.bravo} accessibilityRole="header">
          Bravo !
        </Animated.Text>
        <Animated.Text entering={ZoomIn.delay(250)} style={styles.bravoTexte}>
          Ton {recette.titre.toLowerCase()} est prêt. Bon appétit !
        </Animated.Text>
        <Bouton libelle="Retour à la recette" variante="accent" onPress={quitter} style={{ alignSelf: 'stretch', marginTop: 24 }} />
        <Confettis />
      </SafeAreaView>
    );
  }

  return (
    <SafeAreaView style={styles.ecran}>
      <View style={styles.entete}>
        <Bouton libelle="Quitter" variante="contour" onPress={quitter} style={styles.quitter} />
        <Text style={styles.compteur} accessibilityLiveRegion="polite">
          Étape {etape + 1} sur {total}
        </Text>
      </View>
      <Progression ratio={(etape + 1) / total} />

      <Animated.View key={etape} entering={FadeInRight.springify().damping(16)} exiting={FadeOutLeft.duration(150)} style={styles.corps}>
        <Text accessibilityRole="header" style={styles.action}>{e.action}</Text>
        {e.dose ? <Text style={styles.dose}>{e.dose}</Text> : null}
        <View style={styles.repere}>
          <Text style={styles.repereTexte}>
            <Text style={{ fontWeight: '900' }}>C’est réussi quand </Text>
            {e.repere}
          </Text>
        </View>
        {e.minuteurSec ? (
          <Pulsation actif={termine} style={styles.minuteur}>
            <Text style={styles.temps} accessibilityLabel={termine ? 'Minuteur terminé' : `Temps restant ${formaterDuree(resteMs)}`}>
              {termine ? 'Terminé !' : formaterDuree(resteMs)}
            </Text>
            <View style={{ flexDirection: 'row', gap: Espace.s }}>
              {!termine ? (
                <Bouton libelle={actif ? 'Pause' : minuteur ? 'Reprendre' : 'Lancer'} onPress={actif ? pause : lancer} />
              ) : null}
              {minuteur ? <Bouton libelle="Annuler" variante="contour" onPress={annuler} /> : null}
            </View>
          </Pulsation>
        ) : null}
      </Animated.View>

      <View style={styles.pied}>
        <Bouton libelle="Précédent" variante="contour" disabled={etape === 0} onPress={() => allerA(etape - 1)} style={styles.precedent} />
        <Bouton
          libelle={etape === total - 1 ? 'Terminer' : 'Étape suivante'}
          variante="accent"
          style={{ flex: 1 }}
          onPress={() => {
            if (etape === total - 1) {
              envoyer({ type: 'enCours', valeur: null });
              envoyer({ type: 'minuteur', valeur: null });
              setFini(true);
            } else allerA(etape + 1);
          }}
        />
      </View>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  ecran: { flex: 1, backgroundColor: Couleurs.aubergine, padding: Espace.xl, gap: Espace.l },
  entete: { flexDirection: 'row', justifyContent: 'space-between', alignItems: 'center' },
  quitter: { borderColor: Couleurs.creme, backgroundColor: Couleurs.creme },
  compteur: { color: Couleurs.creme, fontWeight: '800', fontSize: 14 },
  corps: { flex: 1, justifyContent: 'center', gap: Espace.l },
  action: { color: Couleurs.creme, fontSize: 28, fontWeight: '900', lineHeight: 34 },
  dose: { color: Couleurs.creme, fontSize: 16, fontWeight: '700', backgroundColor: 'rgba(253,243,227,0.1)', borderRadius: Rayon.m, padding: Espace.m },
  repere: { backgroundColor: Couleurs.creme, borderRadius: Rayon.m, padding: Espace.m },
  repereTexte: { color: Couleurs.aubergine, fontSize: 15, lineHeight: 21 },
  minuteur: { backgroundColor: Couleurs.vapeur, borderRadius: Rayon.l, padding: Espace.m, paddingLeft: Espace.l, flexDirection: 'row', alignItems: 'center', justifyContent: 'space-between' },
  temps: { fontSize: 32, fontWeight: '900', color: Couleurs.aubergine, fontVariant: ['tabular-nums'] },
  bravo: { color: Couleurs.vapeur, fontSize: 56, fontWeight: '900' },
  bravoTexte: { color: Couleurs.creme, fontSize: 18, fontWeight: '700', textAlign: 'center', marginTop: 8 },
  pied: { flexDirection: 'row', gap: Espace.s + 2 },
  precedent: { width: 120, borderColor: Couleurs.creme, backgroundColor: Couleurs.creme },
});
