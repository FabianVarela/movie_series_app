import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_list_bloc/core/client/local/preferences_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'preference_repository.g.dart';

class PreferenceRepository {
  PreferenceRepository({required this.preferences});

  final SharedPreferences preferences;

  static const _languageKey = 'language';
  static const _themeKey = 'theme';

  Future<String?> getLanguage() async {
    return preferences.getString(_languageKey);
  }

  Future<bool> setLanguage(String language) async {
    return preferences.setString(_languageKey, language);
  }

  Future<bool?> getTheme() async => preferences.getBool(_themeKey);

  Future<bool> setTheme({required bool isDark}) async {
    return preferences.setBool(_themeKey, isDark);
  }
}

@riverpod
PreferenceRepository preferenceRepository(Ref ref) {
  return PreferenceRepository(preferences: ref.watch(sharedPrefsProvider));
}