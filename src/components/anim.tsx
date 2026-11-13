import { useEffect, useMemo, useRef, type ReactNode } from 'react';
import { Pressable, StyleSheet, useWindowDimensions, View, type PressableProps, type StyleProp, type ViewStyle } from 'react-native';
import Animated, {
  Easing,
  ReduceMotion,
  useAnimatedStyle,
  useReducedMotion,
  useSharedValue,
  withDelay,
  withRepeat,
  withSequence,
  withSpring,
  withTiming,
} from 'react-native-reanimated';

import { Couleurs } from '@/constants/theme';

const AnimatedPressable = Animated.createAnimatedComponent(Pressable);

/** Bouton qui s'enfonce puis rebondit au toucher. */
export function Rebond({ style, children, ...p }: Omit<PressableProps, 'style'> & { style?: StyleProp<ViewStyle>; children: ReactNode }) {
  const echelle = useSharedValue(1);
  const anim = useAnimatedStyle(() => ({ transform: [{ scale: echelle.value }] }));
  return (
    <AnimatedPressable
      accessibilityRole="button"
      onPressIn={() => echelle.set(withSpring(0.95, { damping: 15, stiffness: 400 }))}
      onPressOut={() => echelle.set(withSpring(1, { damping: 8, stiffness: 300 }))}
      style={[style, anim]}
      {...p}>
      {children}
    </AnimatedPressable>
  );
}

/** Rejoue un petit « pop » à chaque changement de `valeur`. */
export function Pop({ valeur, children, style }: { valeur: unknown; children: ReactNode; style?: StyleProp<ViewStyle> }) {
  const echelle = useSharedValue(1);
  const premier = useRef(true);
  useEffect(() => {
    // Pas d'animation au premier affichage : seulement quand la valeur change.
    if (premier.current) {
      premier.current = false;
      return;
    }
    echelle.set(withSequence(withTiming(1.25, { duration: 110 }), withSpring(1, { damping: 6, stiffness: 260 })));
  }, [valeur, echelle]);
  const anim = useAnimatedStyle(() => ({ transform: [{ scale: echelle.value }] }));
  return <Animated.View style={[style, anim]}>{children}</Animated.View>;
}

/** Volute de vapeur qui monte, ondule et s'efface en boucle. */
function Volute({ delai, x, taille }: { delai: number; x: number; taille: number }) {
  const t = useSharedValue(0);
  useEffect(() => {
    t.set(withDelay(delai, withRepeat(withTiming(1, { duration: 2200, easing: Easing.out(Easing.quad) }), -1, false)));
  }, [t, delai]);
  const anim = useAnimatedStyle(() => ({
    opacity: t.value < 0.2 ? t.value * 4 : 0.8 * (1 - t.value),
    transform: [
      { translateY: -t.value * taille * 1.4 },
      { translateX: Math.sin(t.value * Math.PI * 2) * taille * 0.12 },
      { scale: 0.6 + t.value * 0.6 },
    ],
  }));
  return (
    <Animated.View
      style={[
        { position: 'absolute', bottom: taille * 0.75, left: x, width: taille * 0.18, height: taille * 0.34, borderRadius: taille, backgroundColor: Couleurs.vapeur },
        anim,
      ]}
    />
  );
}

/** Vapeur au-dessus d'un élément (icône de cocotte, carte…). Désactivée si l'utilisateur réduit les animations. */
export function Vapeur({ taille, children }: { taille: number; children: ReactNode }) {
  const reduit = useReducedMotion();
  return (
    <View style={{ width: taille, height: taille }} accessibilityElementsHidden importantForAccessibility="no-hide-descendants">
      {children}
      {reduit ? null : (
        <>
          <Volute delai={0} x={taille * 0.3} taille={taille} />
          <Volute delai={700} x={taille * 0.52} taille={taille} />
          <Volute delai={1400} x={taille * 0.41} taille={taille} />
        </>
      )}
    </View>
  );
}

/** Pulsation continue, pour attirer l'œil (minuteur terminé). */
export function Pulsation({ actif, children, style }: { actif: boolean; children: ReactNode; style?: StyleProp<ViewStyle> }) {
  const s = useSharedValue(1);
  useEffect(() => {
    s.set(actif ? withRepeat(withSequence(withTiming(1.06, { duration: 350 }), withTiming(1, { duration: 350 })), -1) : withTiming(1));
  }, [actif, s]);
  const anim = useAnimatedStyle(() => ({ transform: [{ scale: s.value }] }));
  return <Animated.View style={[style, anim]}>{children}</Animated.View>;
}

/** Barre de progression qui glisse jusqu'à sa nouvelle valeur. */
export function Progression({ ratio }: { ratio: number }) {
  const v = useSharedValue(ratio);
  useEffect(() => {
    v.set(withSpring(ratio, { damping: 18, stiffness: 120, reduceMotion: ReduceMotion.System }));
  }, [ratio, v]);
  const anim = useAnimatedStyle(() => ({ width: `${v.value * 100}%` }));
  return (
    <View style={styles.piste}>
      <Animated.View style={[styles.plein, anim]} />
    </View>
  );
}

/** Pseudo-aléatoire déterministe, pour garder le rendu pur. */
function hasard(n: number) {
  const x = Math.sin(n * 12.9898) * 43758.5453;
  return x - Math.floor(x);
}

const COULEURS_CONFETTIS = [Couleurs.vapeur, Couleurs.creme, '#E2553E', '#4CB782', '#F6D04D', '#7BB4E3'];

function Confetti({ index, largeur, hauteur }: { index: number; largeur: number; hauteur: number }) {
  const depart = useMemo(
    () => ({
      x: hasard(index + 1) * largeur,
      derive: (hasard(index + 101) - 0.5) * 160,
      rotation: 360 + hasard(index + 201) * 720,
      delai: hasard(index + 301) * 500,
      duree: 1800 + hasard(index + 401) * 1400,
      taille: 8 + hasard(index + 501) * 8,
      couleur: COULEURS_CONFETTIS[index % COULEURS_CONFETTIS.length],
      rond: index % 3 === 0,
    }),
    [index, largeur],
  );
  const t = useSharedValue(0);
  useEffect(() => {
    t.set(withDelay(depart.delai, withTiming(1, { duration: depart.duree, easing: Easing.in(Easing.quad) })));
  }, [t, depart]);
  const anim = useAnimatedStyle(() => ({
    opacity: 1 - Math.max(0, t.value - 0.8) * 5,
    transform: [
      { translateX: depart.x + depart.derive * t.value },
      { translateY: -40 + t.value * (hauteur + 80) },
      { rotate: `${depart.rotation * t.value}deg` },
    ],
  }));
  return (
    <Animated.View
      style={[
        {
          position: 'absolute',
          width: depart.taille,
          height: depart.rond ? depart.taille : depart.taille * 0.5,
          borderRadius: depart.rond ? depart.taille : 2,
          backgroundColor: depart.couleur,
        },
        anim,
      ]}
    />
  );
}

/** Pluie de confettis plein écran, pour fêter une recette terminée. */
export function Confettis({ nombre = 60 }: { nombre?: number }) {
  const { width, height } = useWindowDimensions();
  const reduit = useReducedMotion();
  if (reduit) return null;
  return (
    <View pointerEvents="none" style={StyleSheet.absoluteFill} accessibilityElementsHidden importantForAccessibility="no-hide-descendants">
      {Array.from({ length: nombre }, (_, k) => (
        <Confetti key={k} index={k} largeur={width} hauteur={height} />
      ))}
    </View>
  );
}

const styles = StyleSheet.create({
  piste: { height: 8, backgroundColor: 'rgba(253,243,227,0.18)', borderRadius: 999, overflow: 'hidden' },
  plein: { height: 8, backgroundColor: Couleurs.vapeur, borderRadius: 999 },
});
