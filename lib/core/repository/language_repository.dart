import 'package:movie_list_bloc/core/client/local/preferences_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'language_repository.g.dart';

class LanguageRepository {
  LanguageRepository({required this.preferences});

  final SharedPreferences preferences;

  static const _languageKey = 'language';

  Future<String?> getLanguage() async {
    return preferences.getString(_languageKey);
  }

  Future<bool> setLanguage(String language) async {
    return preferences.setString(_languageKey, language);
  }
}

@riverpod
LanguageRepository languageRepository(LanguageRepositoryRef ref) {
  return LanguageRepository(preferences: ref.watch(sharedPrefsProvider));
}

@riverpod
Future<String?> getLanguage(GetLanguageRef ref) async {
  return ref.watch(languageRepositoryProvider).getLanguage();
}

@riverpod
Future<bool> setLanguage(SetLanguageRef ref, {required String language}) async {
  return ref.watch(languageRepositoryProvider).setLanguage(language);
}
