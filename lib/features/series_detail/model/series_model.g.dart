// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeriesModel _$SeriesModelFromJson(Map<String, dynamic> json) => SeriesModel(
      id: json['id'] as int,
      originalName: json['original_name'] as String,
      overview: json['overview'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
      genres: (json['genres'] as List<dynamic>)
          .map((e) => GenreModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      credits: SeriesModel._getCasts(json['credits'] as Map<String, dynamic>),
      trailers:
          SeriesModel._getTrailers(json['videos'] as Map<String, dynamic>),
      seasons: json['seasons'] == null
          ? 0
          : SeriesModel._getSeasonSize(json['seasons'] as List),
      firstAirDate: json['first_air_date'] as String?,
      lastAirDate: json['last_air_date'] as String?,
      homepage: json['homepage'] as String?,
    );
