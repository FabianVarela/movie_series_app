import 'package:json_annotation/json_annotation.dart';

part 'gender_model.g.dart';

@JsonSerializable(createToJson: false)
class GendersModel {
  const GendersModel({required this.genders});

  factory GendersModel.fromJson(Map<String, dynamic> json) =>
      _$GendersModelFromJson(json);

  @JsonKey(name: 'genres')
  final List<GenderModel> genders;
}

@JsonSerializable(createToJson: false)
class GenderModel {
  const GenderModel({required this.id, required this.name});

  factory GenderModel.fromJson(Map<String, dynamic> json) =>
      _$GenderModelFromJson(json);

  final int id;
  final String name;
}
