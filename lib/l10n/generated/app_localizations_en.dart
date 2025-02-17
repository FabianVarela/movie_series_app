// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Movies App';

  @override
  String get movieNavBarText => 'Movies';

  @override
  String get seriesNavBarText => 'TV Series';

  @override
  String get genreDefaultTitle => 'Popular';

  @override
  String get errorMovieListText => 'Error getting movie list';

  @override
  String get errorMovieDetailText => 'Error getting movie detail';

  @override
  String get errorSeriesListText => 'Error getting series list';

  @override
  String get errorSeriesDetailText => 'Error getting series detail';

  @override
  String quantityList(int start, int end) {
    return '$start / $end';
  }

  @override
  String get webPageTitle => 'Web page\n';

  @override
  String get noDateAvailableText => 'No date available';

  @override
  String get castTitle => 'Cast';

  @override
  String get noCastAvailableText => 'No cast available';

  @override
  String get trailerTitle => 'Trailers';

  @override
  String get noTrailerAvailableText => 'No trailers available';

  @override
  String get actorDetailBirthDate => 'Birth date: ';

  @override
  String get noBirthDateText => 'No birth date';

  @override
  String get actorDetailDeathDate => 'Death date: ';

  @override
  String get actorDetailBirthPlace => 'Birth place: ';

  @override
  String get noBirthPlace => 'No birth place';

  @override
  String get actorDetailRol => 'Rol: ';

  @override
  String get actorDetailPopularity => 'Popularity: ';

  @override
  String actorDetailCharacters(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count characters',
      one: '$count character',
      zero: 'no characters',
    );
    return '$_temp0';
  }

  @override
  String actorDetailLoadMore(int count) {
    return 'Load $count more';
  }

  @override
  String get noCharacterText => 'Unknown character';

  @override
  String get errorActorDetailText => 'Error getting actor details';

  @override
  String get noFoundTitle => 'Oops!!!';

  @override
  String get noFoundReturnButton => 'Go to Home';
}
