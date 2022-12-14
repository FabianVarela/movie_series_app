import 'package:json_annotation/json_annotation.dart';

part 'movie_model.g.dart';

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class MovieModel {
  const MovieModel({
    required this.id,
    required this.originalTitle,
    required this.overview,
    this.releaseDate,
    required this.voteAverage,
    this.homepage,
    required this.genres,
    required this.credits,
    required this.trailers,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);

  final int id;
  final String originalTitle;
  final String overview;
  final String? releaseDate;
  final double voteAverage;
  final String? homepage;
  final List<GenreModel> genres;

  @JsonKey(name: 'credits', fromJson: _getCasts)
  final List<CreditsModel> credits;

  @JsonKey(name: 'videos', fromJson: _getTrailers)
  final List<TrailerModel> trailers;

  static List<CreditsModel> _getCasts(Map<String, dynamic> value) {
    final creditMap = value['cast'] as List<dynamic>;
    return [
      for (final item in creditMap)
        CreditsModel.fromJson(item as Map<String, dynamic>)
    ];
  }

  static List<TrailerModel> _getTrailers(Map<String, dynamic> value) {
    final creditMap = value['results'] as List<dynamic>;
    return [
      for (final item in creditMap)
        TrailerModel.fromJson(item as Map<String, dynamic>)
    ];
  }
}

@JsonSerializable(createToJson: false)
class GenreModel {
  const GenreModel({required this.id, required this.name});

  factory GenreModel.fromJson(Map<String, dynamic> json) =>
      _$GenreModelFromJson(json);

  final int id;
  final String name;
}

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class CreditsModel {
  const CreditsModel({
    required this.id,
    required this.castId,
    required this.character,
    required this.name,
    required this.order,
    required this.profilePath,
  });

  factory CreditsModel.fromJson(Map<String, dynamic> json) =>
      _$CreditsModelFromJson(json);

  final int id;
  final int castId;
  final String character;
  final String name;
  final int order;
  final String? profilePath;
}

@JsonSerializable(createToJson: false)
class TrailerModel {
  const TrailerModel({
    required this.id,
    required this.iso639,
    required this.iso3166,
    required this.key,
    required this.name,
    required this.site,
    required this.size,
    required this.type,
  });

  factory TrailerModel.fromJson(Map<String, dynamic> json) =>
      _$TrailerModelFromJson(json);

  final String id;

  @JsonKey(name: 'iso_639_1')
  final String iso639;

  @JsonKey(name: 'iso_3166_1')
  final String iso3166;

  final String key;
  final String name;
  final String site;
  final int size;
  final String type;
}
