import 'dart:ui';

import 'package:movie_series_app/core/repository/preference_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'language_provider.g.dart';

@riverpod
class Language extends _$Language {
  @override
  FutureOr<Locale?> build() => null;

  Future<void> getLanguage() async {
    final language = await ref.read(preferenceRepositoryProvider).getLanguage();
    if (language != null) state = AsyncValue.data(Locale(language));
  }

  Future<void> setLanguage(String language) async {
    await ref.read(preferenceRepositoryProvider).setLanguage(language);
    state = AsyncValue.data(Locale(language));
  }
}
