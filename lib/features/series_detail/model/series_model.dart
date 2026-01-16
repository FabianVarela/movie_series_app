import 'package:json_annotation/json_annotation.dart';
import 'package:movie_series_app/core/model/common_model.dart';

part 'series_model.g.dart';

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class SeriesModel {
  const SeriesModel({
    required this.id,
    required this.originalName,
    required this.overview,
    required this.voteAverage,
    required this.genres,
    required this.credits,
    required this.trailers,
    required this.seasons,
    required this.images,
    this.firstAirDate,
    this.lastAirDate,
    this.homepage,
  });

  factory SeriesModel.fromJson(Map<String, dynamic> json) =>
      _$SeriesModelFromJson(json);

  final int id;
  final String originalName;
  final String overview;
  final double voteAverage;
  final List<GenreModel> genres;

  @JsonKey(fromJson: _getCasts)
  final List<CreditsModel> credits;

  @JsonKey(name: 'videos', fromJson: _getTrailers)
  final List<TrailerModel> trailers;

  @JsonKey(defaultValue: 0, fromJson: _getSeasonSize)
  final int seasons;

  final List<ImageModel> images;
  final String? firstAirDate;
  final String? lastAirDate;
  final String? homepage;

  static List<CreditsModel> _getCasts(Map<String, dynamic> value) {
    final creditMap = value['cast'] as List<dynamic>;
    return [
      for (final item in creditMap)
        CreditsModel.fromJson(item as Map<String, dynamic>),
    ];
  }

  static List<TrailerModel> _getTrailers(Map<String, dynamic> value) {
    final creditMap = value['results'] as List<dynamic>;
    return [
      for (final item in creditMap)
        TrailerModel.fromJson(item as Map<String, dynamic>),
    ];
  }

  static int _getSeasonSize(List<dynamic> value) {
    return value.where((element) {
      final mapElement = element as Map<String, dynamic>;
      return (mapElement['season_number'] as int) != 0;
    }).length;
  }
}
