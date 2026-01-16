import 'package:dio/dio.dart';
import 'package:movie_series_app/core/client/remote/dio_provider.dart';
import 'package:movie_series_app/core/model/common_model.dart';
import 'package:movie_series_app/features/movie_list/model/movies_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'movie_list_repository.g.dart';

class MovieListRepository {
  MovieListRepository({required this.dio, required this.apiKey});

  final Dio dio;
  final String apiKey;

  Future<MoviesModel> fetchMovies({
    required MovieOption option,
    int? genreId,
    String? language,
  }) async {
    final response = await dio.get<Map<String, dynamic>>(
      switch (option) {
        _ when genreId != null => '/3/discover/movie',
        .nowPlaying => '/3/movie/now_playing',
        .popular => '/3/movie/popular',
        .topRated => '/3/movie/top_rated',
        .upcoming => '/3/movie/upcoming',
      },
      queryParameters: {
        if (genreId != null) 'with_genres': '$genreId',
        'api_key': apiKey,
        'language': ?language,
      },
    );
    return MoviesModel.fromJson(response.data!);
  }
}

@riverpod
MovieListRepository movieListRepository(Ref ref) {
  return MovieListRepository(
    dio: ref.watch(dioProvider),
    apiKey: const String.fromEnvironment('TMDB_API_KEY'),
  );
}

@riverpod
Future<MoviesModel> fetchMovies(
  Ref ref, {
  required MovieOption option,
  int? genreId,
  String? language,
}) async {
  return ref
      .watch(movieListRepositoryProvider)
      .fetchMovies(option: option, language: language, genreId: genreId);
}
