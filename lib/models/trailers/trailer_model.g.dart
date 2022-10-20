// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trailer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrailersModel _$TrailersModelFromJson(Map<String, dynamic> json) =>
    TrailersModel(
      id: json['id'] as int,
      trailers: (json['results'] as List<dynamic>)
          .map((e) => TrailerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
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
