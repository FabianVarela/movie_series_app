// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => MovieModel(
      id: json['id'] as int,
      originalTitle: json['original_title'] as String,
      overview: json['overview'] as String,
      releaseDate: json['release_date'] as String?,
      voteAverage: (json['vote_average'] as num).toDouble(),
      homepage: json['homepage'] as String?,
      genres: (json['genres'] as List<dynamic>)
          .map((e) => GenderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      credits: MovieModel._getCasts(json['credits'] as Map<String, dynamic>),
      trailers: MovieModel._getTrailers(json['videos'] as Map<String, dynamic>),
    );

GenderModel _$GenderModelFromJson(Map<String, dynamic> json) => GenderModel(
      id: json['id'] as int,
      name: json['name'] as String,
    );

CreditsModel _$CreditsModelFromJson(Map<String, dynamic> json) => CreditsModel(
      id: json['id'] as int,
      castId: json['cast_id'] as int,
      character: json['character'] as String,
      name: json['name'] as String,
      order: json['order'] as int,
      profilePath: json['profile_path'] as String?,
    );

TrailerModel _$TrailerModelFromJson(Map<String, dynamic> json) => TrailerModel(
      id: json['id'] as String,
      iso639: json['iso_639_1'] as String,
      iso3166: json['iso_3166_1'] as String,
      key: json['key'] as String,
      name: json['name'] as String,
      site: json['site'] as String,
      size: json['size'] as int,
      type: json['type'] as String,
    );
