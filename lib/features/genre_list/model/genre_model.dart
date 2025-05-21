import 'package:json_annotation/json_annotation.dart';
import 'package:movie_series_app/core/model/common_model.dart';

part 'genre_model.g.dart';

@JsonSerializable(createToJson: false)
class GenresModel {
  const GenresModel({required this.genres});

  factory GenresModel.fromJson(Map<String, dynamic> json) =>
      _$GenresModelFromJson(json);

  final List<GenreModel> genres;
}
