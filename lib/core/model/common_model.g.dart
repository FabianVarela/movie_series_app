// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResultsModel _$ResultsModelFromJson(Map<String, dynamic> json) => ResultsModel(
  page: (json['page'] as num).toInt(),
  totalResults: (json['total_results'] as num).toInt(),
  totalPages: (json['total_pages'] as num).toInt(),
  results: (json['results'] as List<dynamic>)
      .map((e) => ResultModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

ResultModel _$ResultModelFromJson(Map<String, dynamic> json) => ResultModel(
  id: (json['id'] as num).toInt(),
  originalTitle:
      ResultModel._getOriginalTitle(json, 'original_title') as String,
  voteAverage: (json['vote_average'] as num).toDouble(),
  posterPath: json['poster_path'] as String?,
  backdropPath: json['backdrop_path'] as String?,
);

GenreModel _$GenreModelFromJson(Map<String, dynamic> json) =>
    GenreModel(id: (json['id'] as num).toInt(), name: json['name'] as String);

CreditsModel _$CreditsModelFromJson(Map<String, dynamic> json) => CreditsModel(
  id: (json['id'] as num).toInt(),
  character: json['character'] as String,
  name: json['name'] as String,
  profilePath: json['profile_path'] as String?,
);

TrailerModel _$TrailerModelFromJson(Map<String, dynamic> json) => TrailerModel(
  id: json['id'] as String,
  iso639: json['iso_639_1'] as String,
  iso3166: json['iso_3166_1'] as String,
  key: json['key'] as String,
  name: json['name'] as String,
  site: json['site'] as String,
  size: (json['size'] as num).toInt(),
  type: json['type'] as String,
);

ImagesResultModel _$ImagesResultModelFromJson(Map<String, dynamic> json) =>
    ImagesResultModel(
      backdrop:
          (json['backdrop'] as List<dynamic>?)
              ?.map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      posters:
          (json['posters'] as List<dynamic>?)
              ?.map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      logos:
          (json['logos'] as List<dynamic>?)
              ?.map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) => ImageModel(
  aspectRatio: (json['aspect_ratio'] as num).toDouble(),
  filePath: json['file_path'] as String,
);
