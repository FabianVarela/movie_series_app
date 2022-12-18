import 'package:json_annotation/json_annotation.dart';

part 'movies_model.g.dart';

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class MoviesModel {
  const MoviesModel({
    required this.page,
    required this.totalResults,
    required this.totalPages,
    required this.movies,
  });

  factory MoviesModel.fromJson(Map<String, dynamic> json) =>
      _$MoviesModelFromJson(json);

  final int page;
  final int totalResults;
  final int totalPages;

  @JsonKey(name: 'results')
  final List<MovieModel> movies;
}

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class MovieModel {
  const MovieModel({
    required this.id,
    this.posterPath,
    this.backdropPath,
    required this.originalTitle,
    required this.voteAverage,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);

  final int id;
  final String? posterPath;
  final String? backdropPath;
  final String originalTitle;
  final double voteAverage;
}
