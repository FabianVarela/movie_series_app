import 'package:dio/dio.dart';
import 'package:movie_list_bloc/core/client/remote/dio_provider.dart';
import 'package:movie_list_bloc/core/model/movies_model.dart';
import 'package:movie_list_bloc/features/movie_detail/model/credits_model.dart';
import 'package:movie_list_bloc/features/movie_detail/model/trailer_model.dart';
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
        if (language != null) 'language': language,
      },
    );
    return MovieModel.fromJson(response.data!);
  }

  Future<CreditsModel> fetchCredits({
    required int movieId,
    String? language,
  }) async {
    final response = await dio.get<Map<String, dynamic>>(
      '/3/movie/$movieId/credits',
      queryParameters: {
        'api_key': apiKey,
        if (language != null) 'language': language,
      },
    );
    return CreditsModel.fromJson(response.data!);
  }

  Future<TrailersModel> fetchTrailers({
    required int movieId,
    String? language,
  }) async {
    final response = await dio.get<Map<String, dynamic>>(
      '/3/movie/$movieId/videos',
      queryParameters: {
        'api_key': apiKey,
        if (language != null) 'language': language,
      },
    );
    return TrailersModel.fromJson(response.data!);
  }
}

@riverpod
MovieDetailRepository movieDetailRepository(MovieDetailRepositoryRef ref) {
  return MovieDetailRepository(
    dio: ref.watch(dioProvider),
    apiKey: const String.fromEnvironment('TMDB_API_KEY'),
  );
}

@riverpod
Future<MovieModel> fetchMovie(
  FetchMovieRef ref, {
  required int movieId,
  String? language,
}) async {
  final movieDetailRepository = ref.watch(movieDetailRepositoryProvider);
  return movieDetailRepository.fetchMovie(movieId: movieId, language: language);
}

@riverpod
Future<CreditsModel> fetchCredits(
  FetchCreditsRef ref, {
  required int movieId,
  String? language,
}) async {
  final movieDetailRepository = ref.watch(movieDetailRepositoryProvider);
  return movieDetailRepository.fetchCredits(
    movieId: movieId,
    language: language,
  );
}

@riverpod
Future<TrailersModel> fetchTrailers(
  FetchTrailersRef ref, {
  required int movieId,
  String? language,
}) async {
  final movieDetailRepository = ref.watch(movieDetailRepositoryProvider);
  return movieDetailRepository.fetchTrailers(
    movieId: movieId,
    language: language,
  );
}
