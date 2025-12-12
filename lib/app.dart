import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_series_app/core/provider/brightness_mode_provider.dart';
import 'package:movie_series_app/core/provider/language_provider.dart';
import 'package:movie_series_app/core/routes/routes.dart';
import 'package:movie_series_app/core/theme/movie_series_theme.dart';
import 'package:movie_series_app/l10n/l10n.dart';

class App extends HookConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final language = ref.watch(languageProvider);
    final brightness = ref.watch(brightnessModeProvider);

    useEffect(() {
      unawaited(ref.read(languageProvider.notifier).getLanguage());
      unawaited(ref.read(brightnessModeProvider.notifier).getTheme());

      return null;
    }, const []);

    return MaterialApp.router(
      locale: language.value,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      localeResolutionCallback: (locale, supportedLocales) {
        for (final currentLocale in supportedLocales) {
          if (currentLocale.languageCode == locale?.languageCode) {
            if (language.hasValue) {
              _setNewLanguage(ref, language.value, currentLocale);
            }
            return currentLocale;
          }
        }

        final firstLanguage = supportedLocales.first;
        if (language.hasValue) {
          _setNewLanguage(ref, language.value, supportedLocales.first);
        }
        return firstLanguage;
      },
      onGenerateTitle: (context) => context.l10n.appName,
      routerConfig: movieRouter,
      theme: MovieSeriesTheme.setThemeData(
        context,
        ColorScheme.fromSeed(
          seedColor: const Color(0xFF769CDF),
          brightness: brightness.value ?? Brightness.light,
        ),
      ),
    );
  }

  void _setNewLanguage(WidgetRef ref, Locale? current, Locale next) {
    if (current?.languageCode != next.languageCode) {
      unawaited(
        ref.read(languageProvider.notifier).setLanguage(next.languageCode),
      );
    }
  }
}
