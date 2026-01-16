import 'package:json_annotation/json_annotation.dart';

part 'common_model.g.dart';

enum GenreType { movie, tv }

enum MovieOption { nowPlaying, popular, topRated, upcoming }

enum SeriesOption { airingToday, onTheAir, popular, topRated }

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class ResultsModel {
  const ResultsModel({
    required this.page,
    required this.totalResults,
    required this.totalPages,
    required this.results,
  });

  factory ResultsModel.fromJson(Map<String, dynamic> json) =>
      _$ResultsModelFromJson(json);

  final int page;
  final int totalResults;
  final int totalPages;
  final List<ResultModel> results;
}

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class ResultModel {
  const ResultModel({
    required this.id,
    required this.originalTitle,
    required this.voteAverage,
    this.posterPath,
    this.backdropPath,
  });

  factory ResultModel.fromJson(Map<String, dynamic> json) =>
      _$ResultModelFromJson(json);

  final int id;

  @JsonKey(readValue: _getOriginalTitle)
  final String originalTitle;

  final double voteAverage;
  final String? posterPath;
  final String? backdropPath;

  static Object? _getOriginalTitle(Map<dynamic, dynamic> json, String field) {
    if (json.containsKey(field)) return json[field] as String;
    if (json.containsKey('original_name')) {
      return json['original_name'] as String;
    }
    return null;
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
    required this.character,
    required this.name,
    required this.profilePath,
  });

  factory CreditsModel.fromJson(Map<String, dynamic> json) =>
      _$CreditsModelFromJson(json);

  final int id;
  final String character;
  final String name;
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

@JsonSerializable(createToJson: false)
class ImagesResultModel {
  const ImagesResultModel({
    this.backdrop = const [],
    this.posters = const [],
    this.logos = const [],
  });

  factory ImagesResultModel.fromJson(Map<String, dynamic> json) =>
      _$ImagesResultModelFromJson(json);

  final List<ImageModel> backdrop;
  final List<ImageModel> posters;
  final List<ImageModel> logos;
}

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class ImageModel {
  const ImageModel({required this.aspectRatio, required this.filePath});

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);

  final double aspectRatio;
  final String filePath;
}
