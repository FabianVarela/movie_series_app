import 'package:json_annotation/json_annotation.dart';

part 'trailer_model.g.dart';

@JsonSerializable(createToJson: false)
class TrailersModel {
  const TrailersModel({required this.id, required this.trailers});

  factory TrailersModel.fromJson(Map<String, dynamic> json) =>
      _$TrailersModelFromJson(json);

  final int id;

  @JsonKey(name: 'results')
  final List<TrailerModel> trailers;
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
