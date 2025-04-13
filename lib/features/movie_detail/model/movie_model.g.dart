// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => MovieModel(
  id: (json['id'] as num).toInt(),
  originalTitle: json['original_title'] as String,
  overview: json['overview'] as String,
  voteAverage: (json['vote_average'] as num).toDouble(),
  genres:
      (json['genres'] as List<dynamic>)
          .map((e) => GenreModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  credits: MovieModel._getCasts(json['credits'] as Map<String, dynamic>),
  trailers: MovieModel._getTrailers(json['videos'] as Map<String, dynamic>),
  releaseDate: json['release_date'] as String?,
  homepage: json['homepage'] as String?,
);
