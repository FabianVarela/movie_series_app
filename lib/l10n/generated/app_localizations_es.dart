// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appName => 'App películas';

  @override
  String get movieNavBarText => 'Películas';

  @override
  String get seriesNavBarText => 'Series de TV';

  @override
  String get genreDefaultTitle => 'Popular';

  @override
  String get errorMovieListText => 'Error obteniendo la lista de películas';

  @override
  String get errorMovieDetailText =>
      'Error obteniendo el detalle de la película';

  @override
  String get errorSeriesListText => 'Error obteniendo la lista de series';

  @override
  String get errorSeriesDetailText => 'Error obteniendo el detalle de la serie';

  @override
  String quantityList(int start, int end) {
    return '$start / $end';
  }

  @override
  String get webPageTitle => 'Página web\n';

  @override
  String get noDateAvailableText => 'Sin fecha disponlible';

  @override
  String get castTitle => 'Reparto';

  @override
  String get noCastAvailableText => 'Sin reparto disponible';

  @override
  String get trailerTitle => 'Trailers';

  @override
  String get noTrailerAvailableText => 'Sin trailers disponibles';

  @override
  String get actorDetailBirthDate => 'Fecha de nacimiento: ';

  @override
  String get noBirthDateText => 'Sin fecha de nacimiento';

  @override
  String get actorDetailDeathDate => 'Fecha de muerte: ';

  @override
  String get actorDetailBirthPlace => 'Lugar de nacimiento: ';

  @override
  String get noBirthPlace => 'Sin lugar de nacimiento';

  @override
  String get actorDetailRol => 'Rol: ';

  @override
  String get actorDetailPopularity => 'Popularidad: ';

  @override
  String actorDetailCharacters(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count personajes',
      one: '$count personaje',
      zero: 'sin personajes',
    );
    return '$_temp0';
  }

  @override
  String actorDetailLoadMore(int count) {
    return 'Cargar $count más';
  }

  @override
  String get noCharacterText => 'Personaje desconocido';

  @override
  String get errorActorDetailText => 'Error al obtener los datos del actor';

  @override
  String get noFoundTitle => 'Oops!!!';

  @override
  String get noFoundReturnButton => 'Ir al inicio';
}
