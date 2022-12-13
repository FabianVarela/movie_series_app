import 'package:dio/dio.dart';
import 'package:movie_list_bloc/core/client/remote/dio_provider.dart';
import 'package:movie_list_bloc/core/model/gender_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'genre_list_repository.g.dart';

enum GenreType { movie, tv }

class GenreListRepository {
  GenreListRepository({required this.dio, required this.apiKey});

  final Dio dio;
  final String apiKey;

  Future<GendersModel> fetchGenres({
    required GenreType type,
    String? language,
  }) async {
    final response = await dio.get<Map<String, dynamic>>(
      '/3/genre/${type.name}/list',
      queryParameters: {
        'api_key': apiKey,
        if (language != null) 'language': language,
      },
    );
    return GendersModel.fromJson(response.data!);
  }
}

@riverpod
GenreListRepository genreListRepository(GenreListRepositoryRef ref) {
  return GenreListRepository(
    dio: ref.watch(dioProvider),
    apiKey: const String.fromEnvironment('TMDB_API_KEY'),
  );
}

@riverpod
Future<GendersModel> fetchGenres(
  FetchGenresRef ref, {
  required GenreType type,
  String? language,
}) async {
  final genreListRepository = ref.watch(genreListRepositoryProvider);
  return genreListRepository.fetchGenres(type: type, language: language);
}
