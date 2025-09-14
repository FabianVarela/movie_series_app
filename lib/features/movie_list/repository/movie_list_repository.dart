import 'package:dio/dio.dart';
import 'package:movie_series_app/core/client/remote/dio_provider.dart';
import 'package:movie_series_app/features/movie_list/model/movies_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'movie_list_repository.g.dart';

class MovieListRepository {
  MovieListRepository({required this.dio, required this.apiKey});

  final Dio dio;
  final String apiKey;

  Future<MoviesModel> fetchMovies({int? genreId, String? language}) async {
    final response = await dio.get<Map<String, dynamic>>(
      genreId != null ? '/3/discover/movie' : '/3/movie/popular',
      queryParameters: {
        if (genreId != null) 'with_genres': '$genreId',
        'api_key': apiKey,
        if (language != null) 'language': language,
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
  int? genreId,
  String? language,
}) async {
  final movieListRepository = ref.watch(movieListRepositoryProvider);

  if (genreId == null) {
    return movieListRepository.fetchMovies(language: language);
  }
  return movieListRepository.fetchMovies(language: language, genreId: genreId);
}
