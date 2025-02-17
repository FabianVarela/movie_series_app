import 'package:flutter/material.dart';
import 'package:movie_list_bloc/l10n/generated/app_localizations.dart';

export 'package:movie_list_bloc/l10n/generated/app_localizations.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
