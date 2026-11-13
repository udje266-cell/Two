import { ScrollView, StyleSheet } from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';

import { CarteRecette } from '@/components/carte-recette';
import { Carte, SousTitre, Texte, Titre } from '@/components/ui';
import { Couleurs, Espace } from '@/constants/theme';
import { useMijote } from '@/state/mijote';

export default function MesRecettes() {
  const { etat } = useMijote();
  const enCours = etat.enCours && etat.catalogue.recettes.find((r) => r.slug === etat.enCours?.slug);
  const favoris = etat.catalogue.recettes.filter((r) => etat.favoris.includes(r.slug));

  return (
    <SafeAreaView edges={['top']} style={{ flex: 1, backgroundColor: Couleurs.creme }}>
      <ScrollView contentContainerStyle={styles.contenu}>
        <Titre>Mes recettes</Titre>

        <SousTitre>En cours</SousTitre>
        {enCours ? <CarteRecette recette={enCours} /> : <Texte secondaire>Aucune recette en cours.</Texte>}

        <SousTitre>Favoris</SousTitre>
        {favoris.length ? (
          favoris.map((r, k) => <CarteRecette key={r.slug} recette={r} rang={k} />)
        ) : (
          <Texte secondaire>Touchez ♡ sur une recette pour la retrouver ici.</Texte>
        )}

        <SousTitre>Réglages</SousTitre>
        <Carte>
          <Texte>Ville d’achat : {etat.ville}</Texte>
          <Texte secondaire>
            Données : {etat.catalogue.source === 'supabase' ? 'synchronisées' : 'locales (hors connexion)'}
          </Texte>
        </Carte>
      </ScrollView>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  contenu: { padding: Espace.xl, gap: Espace.m },
});
