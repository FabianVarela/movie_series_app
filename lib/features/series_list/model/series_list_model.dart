import 'package:json_annotation/json_annotation.dart';

part 'series_list_model.g.dart';

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class SeriesListModel {
  const SeriesListModel({
    required this.page,
    required this.totalResults,
    required this.totalPages,
    required this.series,
  });

  factory SeriesListModel.fromJson(Map<String, dynamic> json) =>
      _$SeriesListModelFromJson(json);

  final int page;
  final int totalResults;
  final int totalPages;

  @JsonKey(name: 'results')
  final List<SeriesModel> series;
}

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class SeriesModel {
  const SeriesModel({
    required this.id,
    required this.posterPath,
    this.backdropPath,
    required this.originalName,
    required this.voteAverage,
  });

  factory SeriesModel.fromJson(Map<String, dynamic> json) =>
      _$SeriesModelFromJson(json);

  final int id;
  final String posterPath;
  final String? backdropPath;
  final String originalName;
  final double voteAverage;
}
