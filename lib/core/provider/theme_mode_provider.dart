import 'dart:ui';

import 'package:movie_list_bloc/core/repository/preference_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_mode_provider.g.dart';

@riverpod
class ThemeMode extends _$ThemeMode {
  @override
  FutureOr<Brightness?> build() => Brightness.light;

  Future<void> getTheme() async {
    final isDarkTheme = await ref.read(preferenceRepositoryProvider).getTheme();
    if (isDarkTheme != null) {
      state = AsyncValue.data(isDarkTheme ? Brightness.dark : Brightness.light);
    }
  }

  Future<void> setTheme({required bool isDark}) async {
    await ref.read(preferenceRepositoryProvider).setTheme(isDark: isDark);
    state = AsyncValue.data(isDark ? Brightness.dark : Brightness.light);
  }
}
