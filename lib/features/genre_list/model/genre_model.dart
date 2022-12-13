import 'package:json_annotation/json_annotation.dart';

part 'genre_model.g.dart';

@JsonSerializable(createToJson: false)
class GenresModel {
  const GenresModel({required this.genders});

  factory GenresModel.fromJson(Map<String, dynamic> json) =>
      _$GenresModelFromJson(json);

  @JsonKey(name: 'genres')
  final List<GenreModel> genders;
}

@JsonSerializable(createToJson: false)
class GenreModel {
  const GenreModel({required this.id, required this.name});

  factory GenreModel.fromJson(Map<String, dynamic> json) =>
      _$GenreModelFromJson(json);

  final int id;
  final String name;
}
