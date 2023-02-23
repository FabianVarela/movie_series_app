import 'package:json_annotation/json_annotation.dart';
import 'package:movie_list_bloc/core/model/common_model.dart';

part 'movie_model.g.dart';

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class MovieModel {
  const MovieModel({
    required this.id,
    required this.originalTitle,
    required this.overview,
    required this.voteAverage,
    required this.genres,
    required this.credits,
    required this.trailers,
    this.releaseDate,
    this.homepage,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);

  final int id;
  final String originalTitle;
  final String overview;
  final String? releaseDate;
  final double voteAverage;
  final String? homepage;
  final List<GenreModel> genres;

  @JsonKey(name: 'credits', fromJson: _getCasts)
  final List<CreditsModel> credits;

  @JsonKey(name: 'videos', fromJson: _getTrailers)
  final List<TrailerModel> trailers;

  static List<CreditsModel> _getCasts(Map<String, dynamic> value) {
    final creditMap = value['cast'] as List<dynamic>;
    return [
      for (final item in creditMap)
        CreditsModel.fromJson(item as Map<String, dynamic>)
    ];
  }

  static List<TrailerModel> _getTrailers(Map<String, dynamic> value) {
    final creditMap = value['results'] as List<dynamic>;
    return [
      for (final item in creditMap)
        TrailerModel.fromJson(item as Map<String, dynamic>)
    ];
  }
}
