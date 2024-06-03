import 'dart:ui';

import 'package:movie_list_bloc/core/repository/language/language_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'language_provider.g.dart';

@riverpod
class Language extends _$Language {
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
