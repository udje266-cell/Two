import AsyncStorage from '@react-native-async-storage/async-storage';
import { createClient, type SupabaseClient } from '@supabase/supabase-js';

const url = process.env.EXPO_PUBLIC_SUPABASE_URL;
const cle = process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY;

/**
 * Client Supabase, ou null si le projet n'est pas encore configuré
 * (l'application utilise alors les données locales de `seed.ts`).
 * Seule la clé publique « anon » va dans l'application : la sécurité repose sur la RLS.
 */
export const supabase: SupabaseClient | null =
  url && cle
    ? createClient(url, cle, {
        auth: { storage: AsyncStorage, autoRefreshToken: true, persistSession: true, detectSessionInUrl: false },
      })
    : null;
