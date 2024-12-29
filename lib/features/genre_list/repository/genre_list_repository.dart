import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_list_bloc/core/client/remote/dio_provider.dart';
import 'package:movie_list_bloc/features/genre_list/model/genre_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'genre_list_repository.g.dart';

enum GenreType { movie, tv }

class GenreListRepository {
  GenreListRepository({required this.dio, required this.apiKey});

  final Dio dio;
  final String apiKey;

  Future<GenresModel> fetchGenres({
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
    return GenresModel.fromJson(response.data!);
  }
}

@riverpod
GenreListRepository genreListRepository(Ref ref) {
  return GenreListRepository(
    dio: ref.watch(dioProvider),
    apiKey: const String.fromEnvironment('TMDB_API_KEY'),
  );
}

@riverpod
Future<GenresModel> fetchGenres(
  Ref ref, {
  required GenreType type,
  String? language,
}) async {
  final genreListRepository = ref.watch(genreListRepositoryProvider);
  return genreListRepository.fetchGenres(type: type, language: language);
}
