import Ionicons from '@expo/vector-icons/Ionicons';
import { Tabs } from 'expo-router';
import type { ColorValue } from 'react-native';

import { Couleurs } from '@/constants/theme';

type NomIcone = keyof typeof Ionicons.glyphMap;

function icone(nom: NomIcone) {
  function IconeOnglet({ color, size }: { color: ColorValue; size: number }) {
    return <Ionicons name={nom} color={color as string} size={size} />;
  }
  return IconeOnglet;
}

export default function Onglets() {
  return (
    <Tabs
      screenOptions={{
        headerShown: false,
        tabBarActiveTintColor: Couleurs.aubergine,
        tabBarInactiveTintColor: '#7A6470',
        tabBarStyle: { backgroundColor: Couleurs.blanc, borderTopColor: Couleurs.bordure },
        tabBarLabelStyle: { fontWeight: '800' },
        sceneStyle: { backgroundColor: Couleurs.creme },
      }}>
      <Tabs.Screen name="index" options={{ title: 'Accueil', tabBarIcon: icone('home-outline') }} />
      <Tabs.Screen name="explorer" options={{ title: 'Explorer', tabBarIcon: icone('compass-outline') }} />
      <Tabs.Screen name="courses" options={{ title: 'Courses', tabBarIcon: icone('basket-outline') }} />
      <Tabs.Screen name="mes-recettes" options={{ title: 'Mes recettes', tabBarIcon: icone('heart-outline') }} />
    </Tabs>
  );
}
