import 'package:dio/dio.dart';
import 'package:movie_list_bloc/core/client/remote/dio_provider.dart';
import 'package:movie_list_bloc/features/series_list/model/series_list_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'series_list_repository.g.dart';

class SeriesListRepository {
  SeriesListRepository({required this.dio, required this.apiKey});

  final Dio dio;
  final String apiKey;

  Future<SeriesListModel> fetchSeries({
    int? genreId,
    String? language,
  }) async {
    final response = await dio.get<Map<String, dynamic>>(
      genreId != null ? '/3/discover/tv' : '/3/tv/popular',
      queryParameters: {
        if (genreId != null) 'with_genres': '$genreId',
        'api_key': apiKey,
        if (language != null) 'language': language,
      },
    );
    return SeriesListModel.fromJson(response.data!);
  }
}

@riverpod
SeriesListRepository seriesListRepository(SeriesListRepositoryRef ref) {
  return SeriesListRepository(
    dio: ref.watch(dioProvider),
    apiKey: const String.fromEnvironment('TMDB_API_KEY'),
  );
}

@riverpod
Future<SeriesListModel> fetchSeries(
  FetchSeriesRef ref, {
  int? genreId,
  String? language,
}) async {
  final seriesListRepository = ref.watch(seriesListRepositoryProvider);

  if (genreId == null) {
    return seriesListRepository.fetchSeries(language: language);
  }
  return seriesListRepository.fetchSeries(language: language, genreId: genreId);
}
