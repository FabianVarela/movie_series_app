// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credits_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreditsModel _$CreditsModelFromJson(Map<String, dynamic> json) => CreditsModel(
      id: json['id'] as int,
      casts: (json['cast'] as List<dynamic>)
          .map((e) => CastModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

CastModel _$CastModelFromJson(Map<String, dynamic> json) => CastModel(
      id: json['id'] as int,
      castId: json['cast_id'] as int,
      character: json['character'] as String,
      name: json['name'] as String,
      order: json['order'] as int,
      profilePath: json['profile_path'] as String?,
    );
