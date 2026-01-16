import 'package:dio/dio.dart';
import 'package:movie_series_app/core/client/remote/dio_provider.dart';
import 'package:movie_series_app/features/movie_detail/model/movie_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'movie_detail_repository.g.dart';

class MovieDetailRepository {
  MovieDetailRepository({required this.dio, required this.apiKey});

  final Dio dio;
  final String apiKey;

  Future<MovieModel> fetchMovie({
    required int movieId,
    String? language,
  }) async {
    final response = await dio.get<Map<String, dynamic>>(
      '/3/movie/$movieId',
      queryParameters: {
        'api_key': apiKey,
        'language': ?language,
        'append_to_response': 'credits,videos,images',
      },
    );
    return MovieModel.fromJson(response.data!);
  }
}

@riverpod
MovieDetailRepository movieDetailRepository(Ref ref) {
  return MovieDetailRepository(
    dio: ref.watch(dioProvider),
    apiKey: const String.fromEnvironment('TMDB_API_KEY'),
  );
}

@riverpod
Future<MovieModel> fetchMovie(
  Ref ref, {
  required int movieId,
  String? language,
}) async {
  final movieDetailRepository = ref.watch(movieDetailRepositoryProvider);
  return movieDetailRepository.fetchMovie(movieId: movieId, language: language);
}
