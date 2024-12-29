import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_list_bloc/core/client/remote/dio_provider.dart';
import 'package:movie_list_bloc/features/series_detail/model/series_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'series_detail_repository.g.dart';

class SeriesDetailRepository {
  SeriesDetailRepository({required this.dio, required this.apiKey});

  final Dio dio;
  final String apiKey;

  Future<SeriesModel> fetchSeries({
    required int tvId,
    String? language,
  }) async {
    final response = await dio.get<Map<String, dynamic>>(
      '/3/tv/$tvId',
      queryParameters: {
        'api_key': apiKey,
        if (language != null) 'language': language,
        'append_to_response': 'credits,videos',
      },
    );
    return SeriesModel.fromJson(response.data!);
  }
}

@riverpod
SeriesDetailRepository seriesDetailRepository(Ref ref) {
  return SeriesDetailRepository(
    dio: ref.watch(dioProvider),
    apiKey: const String.fromEnvironment('TMDB_API_KEY'),
  );
}

@riverpod
Future<SeriesModel> fetchSeries(
  Ref ref, {
  required int tvId,
  String? language,
}) async {
  final seriesDetailRepository = ref.watch(seriesDetailRepositoryProvider);
  return seriesDetailRepository.fetchSeries(tvId: tvId, language: language);
}
