import 'dart:ui';

import 'package:movie_list_bloc/core/repository/language_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class Language extends AsyncNotifier<Locale?> {
  @override
  FutureOr<Locale?> build() => null;

  Future<void> getLanguage() async {
    final language = await ref.read(languageRepositoryProvider).getLanguage();
    if (language != null) state = AsyncValue.data(Locale(language));
  }

  Future<void> setLanguage(String language) async {
    await ref.read(languageRepositoryProvider).setLanguage(language);
    state = AsyncValue.data(Locale(language));
  }
}

final languageProvider = AsyncNotifierProvider<Language, Locale?>(Language.new);
