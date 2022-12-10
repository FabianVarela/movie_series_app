import 'package:dio/dio.dart';
import 'package:movie_list_bloc/core/client/dio_provider.dart';
import 'package:movie_list_bloc/core/model/gender_model.dart';
import 'package:movie_list_bloc/core/model/movies_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'movie_list_repository.g.dart';

class MovieListRepository {
  MovieListRepository({required this.dio, required this.apiKey});

  final Dio dio;
  final String apiKey;

  Future<GendersModel> fetchGenders({required String language}) async {
    final response = await dio.get<Map<String, dynamic>>(
      '/3/genre/movie/list',
      queryParameters: {'api_key': apiKey, 'language': language},
    );
    return GendersModel.fromJson(response.data!);
  }

  Future<MoviesModel> fetchMovies({
    required String language,
    int? genreId,
  }) async {
    final response = await dio.get<Map<String, dynamic>>(
      genreId != null ? '/3/discover/movie' : '/3/movie/popular',
      queryParameters: {
        if (genreId != null) 'with_genres': '$genreId',
        'api_key': apiKey,
        'language': language,
      },
    );
    return MoviesModel.fromJson(response.data!);
  }
}

@riverpod
MovieListRepository movieListRepository(MovieListRepositoryRef ref) {
  return MovieListRepository(
    dio: ref.watch(dioProvider),
    apiKey: const String.fromEnvironment('TMDB_API_KEY'),
  );
}

@riverpod
Future<GendersModel> fetchGenders(
  FetchGendersRef ref, {
  required String language,
}) async {
  final movieListRepository = ref.watch(movieListRepositoryProvider);
  return movieListRepository.fetchGenders(language: language);
}

@riverpod
Future<MoviesModel> fetchMovies(
  FetchMoviesRef ref, {
  required String language,
  int? genreId,
}) async {
  final movieListRepository = ref.watch(movieListRepositoryProvider);

  if (genreId == null) {
    return movieListRepository.fetchMovies(language: language);
  }
  return movieListRepository.fetchMovies(language: language, genreId: genreId);
}
