import 'dart:ui';

import 'package:movie_list_bloc/core/repository/preference_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'brightness_mode_provider.g.dart';

@riverpod
class BrightnessMode extends _$BrightnessMode {
  @override
  FutureOr<Brightness?> build() => Brightness.light;

  Future<void> getTheme() async {
    final theme = await ref.read(preferenceRepositoryProvider).getTheme();
    state = AsyncValue.data(
      Brightness.values.singleWhere(
        (item) => item.name == theme,
        orElse: () => Brightness.light,
      ),
    );
  }

  Future<void> setTheme() async {
    final newBrightness = switch (state.requireValue) {
      Brightness.dark => Brightness.light,
      _ => Brightness.dark,
    };

    await ref.read(preferenceRepositoryProvider).setTheme(newBrightness.name);
    state = AsyncValue.data(newBrightness);
  }
}
