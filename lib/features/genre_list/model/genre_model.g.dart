// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenresModel _$GenresModelFromJson(Map<String, dynamic> json) => GenresModel(
      genders: (json['genres'] as List<dynamic>)
          .map((e) => GenreModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

GenreModel _$GenreModelFromJson(Map<String, dynamic> json) => GenreModel(
      id: json['id'] as int,
      name: json['name'] as String,
    );
