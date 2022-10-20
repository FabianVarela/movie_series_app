// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gender_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GendersModel _$GendersModelFromJson(Map<String, dynamic> json) => GendersModel(
      genders: (json['genres'] as List<dynamic>)
          .map((e) => GenderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

GenderModel _$GenderModelFromJson(Map<String, dynamic> json) => GenderModel(
      id: json['id'] as int,
      name: json['name'] as String,
    );
