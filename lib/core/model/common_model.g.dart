// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenreModel _$GenreModelFromJson(Map<String, dynamic> json) => GenreModel(
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
