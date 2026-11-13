import { Stack } from 'expo-router';
import { StatusBar } from 'expo-status-bar';

import { Couleurs } from '@/constants/theme';
import { FournisseurMijote } from '@/state/mijote';

export default function Racine() {
  return (
    <FournisseurMijote>
      <StatusBar style="dark" />
      <Stack
        screenOptions={{
          headerStyle: { backgroundColor: Couleurs.creme },
          headerTintColor: Couleurs.aubergine,
          headerTitleStyle: { fontWeight: '800' },
          contentStyle: { backgroundColor: Couleurs.creme },
          headerBackTitle: 'Retour',
        }}>
        <Stack.Screen name="(onglets)" options={{ headerShown: false }} />
        <Stack.Screen name="recette/[slug]" options={{ title: '' }} />
        <Stack.Screen name="cuisine/[slug]" options={{ headerShown: false, presentation: 'fullScreenModal' }} />
      </Stack>
    </FournisseurMijote>
  );
}
