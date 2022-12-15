import 'package:json_annotation/json_annotation.dart';
import 'package:movie_list_bloc/core/model/common_model.dart';

part 'genre_model.g.dart';

@JsonSerializable(createToJson: false)
class GenresModel {
  const GenresModel({required this.genres});

  factory GenresModel.fromJson(Map<String, dynamic> json) =>
      _$GenresModelFromJson(json);

  final List<GenreModel> genres;
}
