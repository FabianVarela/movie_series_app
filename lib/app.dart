import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_list_bloc/core/provider/language_provider.dart';
import 'package:movie_list_bloc/core/routes/routes.dart';
import 'package:movie_list_bloc/l10n/l10n.dart';

class App extends HookConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final language = ref.watch(languageProvider);

    useEffect(
      () {
        ref.read(languageProvider.notifier).getLanguage();
        return null;
      },
      const [],
    );

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
      theme: ThemeData(
        textTheme: GoogleFonts.ubuntuTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }

  void _setNewLanguage(WidgetRef ref, Locale? current, Locale next) {
    if (current?.languageCode != next.languageCode) {
      ref.read(languageProvider.notifier).setLanguage(next.languageCode);
    }
  }
}
