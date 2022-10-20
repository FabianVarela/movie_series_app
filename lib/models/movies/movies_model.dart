import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_list_bloc/models/gender/gender_model.dart';

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
    required this.posterPath,
    this.backdropPath,
    required this.originalTitle,
    required this.title,
    required this.overview,
    this.releaseDate,
    required this.voteAverage,
    required this.voteCount,
    required this.originalLanguage,
    this.homepage,
    this.tagLine,
    this.genres,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);

  final int id;
  final String posterPath;
  final String? backdropPath;
  final String originalTitle;
  final String title;
  final String overview;
  final String? releaseDate;
  final double voteAverage;
  final int voteCount;
  final String originalLanguage;
  final String? homepage;

  @JsonKey(name: 'tagLine')
  final String? tagLine;

  final List<GenderModel>? genres;
}
