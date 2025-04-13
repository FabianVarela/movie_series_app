// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeriesListModel _$SeriesListModelFromJson(Map<String, dynamic> json) =>
    SeriesListModel(
      page: (json['page'] as num).toInt(),
      totalResults: (json['total_results'] as num).toInt(),
      totalPages: (json['total_pages'] as num).toInt(),
      series:
          (json['results'] as List<dynamic>)
              .map((e) => SeriesModel.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

SeriesModel _$SeriesModelFromJson(Map<String, dynamic> json) => SeriesModel(
  id: (json['id'] as num).toInt(),
  originalName: json['original_name'] as String,
  voteAverage: (json['vote_average'] as num).toDouble(),
  posterPath: json['poster_path'] as String?,
  backdropPath: json['backdrop_path'] as String?,
);
