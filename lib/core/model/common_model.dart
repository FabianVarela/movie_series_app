import 'package:json_annotation/json_annotation.dart';

part 'common_model.g.dart';

@JsonSerializable(createToJson: false)
class GenreModel {
  const GenreModel({required this.id, required this.name});

  factory GenreModel.fromJson(Map<String, dynamic> json) =>
      _$GenreModelFromJson(json);

  final int id;
  final String name;
}

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class CreditsModel {
  const CreditsModel({
    required this.id,
    required this.character,
    required this.name,
    required this.profilePath,
  });

  factory CreditsModel.fromJson(Map<String, dynamic> json) =>
      _$CreditsModelFromJson(json);

  final int id;
  final String character;
  final String name;
  final String? profilePath;
}

@JsonSerializable(createToJson: false)
class TrailerModel {
  const TrailerModel({
    required this.id,
    required this.iso639,
    required this.iso3166,
    required this.key,
    required this.name,
    required this.site,
    required this.size,
    required this.type,
  });

  factory TrailerModel.fromJson(Map<String, dynamic> json) =>
      _$TrailerModelFromJson(json);

  final String id;

  @JsonKey(name: 'iso_639_1')
  final String iso639;

  @JsonKey(name: 'iso_3166_1')
  final String iso3166;

  final String key;
  final String name;
  final String site;
  final int size;
  final String type;
}
