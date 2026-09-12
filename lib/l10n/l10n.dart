import 'package:material_ui/material_ui.dart';
import 'package:movie_series_app/l10n/gen/app_localizations.dart';

export 'package:movie_series_app/l10n/gen/app_localizations.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
