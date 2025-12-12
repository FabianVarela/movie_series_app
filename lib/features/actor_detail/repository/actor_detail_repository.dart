import 'package:dio/dio.dart';
import 'package:movie_series_app/core/client/remote/dio_provider.dart';
import 'package:movie_series_app/features/actor_detail/model/actor_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'actor_detail_repository.g.dart';

class ActorDetailRepository {
  ActorDetailRepository({required this.dio, required this.apiKey});

  final Dio dio;
  final String apiKey;

  Future<ActorModel> fetchActor({
    required int personId,
    String? language,
  }) async {
    final response = await dio.get<Map<String, dynamic>>(
      '/3/person/$personId',
      queryParameters: {
        'api_key': apiKey,
        'language': ?language,
        'append_to_response': 'movie_credits',
      },
    );
    return ActorModel.fromJson(response.data!);
  }
}

@riverpod
ActorDetailRepository actorDetailRepository(Ref ref) {
  return ActorDetailRepository(
    dio: ref.watch(dioProvider),
    apiKey: const String.fromEnvironment('TMDB_API_KEY'),
  );
}

@riverpod
Future<ActorModel> fetchActor(
  Ref ref, {
  required int personId,
  String? language,
}) async {
  final actorDetailRepository = ref.watch(actorDetailRepositoryProvider);
  return actorDetailRepository.fetchActor(
    personId: personId,
    language: language,
  );
}
