import 'package:dio/dio.dart';
import 'package:movie_series_app/core/client/remote/dio_provider.dart';
import 'package:movie_series_app/core/model/common_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'series_list_repository.g.dart';

class SeriesListRepository {
  SeriesListRepository({required this.dio, required this.apiKey});

  final Dio dio;
  final String apiKey;

  Future<ResultsModel> fetchSeries({
    required SeriesOption option,
    int? genreId,
    String? language,
  }) async {
    final response = await dio.get<Map<String, dynamic>>(
      switch (option) {
        _ when genreId != null => '/3/discover/tv',
        .airingToday => '/3/tv/airing_today',
        .onTheAir => '/3/tv/on_the_air',
        .popular => '/3/tv/popular',
        .topRated => '/3/tv/top_rated',
      },
      queryParameters: {
        if (genreId != null) 'with_genres': '$genreId',
        'api_key': apiKey,
        'language': ?language,
      },
    );
    return ResultsModel.fromJson(response.data!);
  }
}

@riverpod
SeriesListRepository seriesListRepository(Ref ref) {
  return SeriesListRepository(
    dio: ref.watch(dioProvider),
    apiKey: const String.fromEnvironment('TMDB_API_KEY'),
  );
}

@riverpod
Future<ResultsModel> fetchSeries(
  Ref ref, {
  required SeriesOption option,
  int? genreId,
  String? language,
}) async {
  return ref
      .watch(seriesListRepositoryProvider)
      .fetchSeries(option: option, language: language, genreId: genreId);
}
