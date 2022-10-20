import 'package:json_annotation/json_annotation.dart';

part 'credits_model.g.dart';

@JsonSerializable(createToJson: false)
class CreditsModel {
  const CreditsModel({required this.id, required this.casts});

  factory CreditsModel.fromJson(Map<String, dynamic> json) =>
      _$CreditsModelFromJson(json);

  final int id;

  @JsonKey(name: 'cast')
  final List<CastModel> casts;
}

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class CastModel {
  const CastModel({
    required this.id,
    required this.castId,
    required this.character,
    required this.name,
    required this.order,
    required this.profilePath,
  });

  factory CastModel.fromJson(Map<String, dynamic> json) =>
      _$CastModelFromJson(json);

  final int id;
  final int castId;
  final String character;
  final String name;
  final int order;
  final String? profilePath;
}
