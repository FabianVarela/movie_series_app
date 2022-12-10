import 'package:dio/dio.dart';
import 'package:movie_list_bloc/core/client/dio_provider.dart';
import 'package:movie_list_bloc/features/actor_detail/model/actor_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'actor_detail_repository.g.dart';

class ActorDetailRepository {
  ActorDetailRepository({required this.dio, required this.apiKey});

  final Dio dio;
  final String apiKey;

  Future<ActorModel> fetchActor({
    required int personId,
    required String language,
  }) async {
    final response = await dio.get<Map<String, dynamic>>(
      '/3/person/$personId',
      queryParameters: {'api_key': apiKey, 'language': language},
    );
    return ActorModel.fromJson(response.data!);
  }

  Future<ActorCreditsModel> fetchActorCredits({
    required int actorId,
    required String language,
  }) async {
    final response = await dio.get<Map<String, dynamic>>(
      '/3/person/$actorId/movie_credits',
      queryParameters: {'api_key': apiKey, 'language': language},
    );
    return ActorCreditsModel.fromJson(response.data!);
  }
}

@riverpod
ActorDetailRepository actorDetailRepository(ActorDetailRepositoryRef ref) {
  return ActorDetailRepository(
    dio: ref.watch(dioProvider),
    apiKey: const String.fromEnvironment('TMDB_API_KEY'),
  );
}

@riverpod
Future<ActorModel> fetchActor(
  FetchActorRef ref, {
  required int personId,
  required String language,
}) async {
  final actorDetailRepository = ref.watch(actorDetailRepositoryProvider);
  return actorDetailRepository.fetchActor(
    personId: personId,
    language: language,
  );
}

@riverpod
Future<ActorCreditsModel> fetchActorCredits(
  FetchActorCreditsRef ref, {
  required int actorId,
  required String language,
}) async {
  final actorDetailRepository = ref.watch(actorDetailRepositoryProvider);
  return actorDetailRepository.fetchActorCredits(
    actorId: actorId,
    language: language,
  );
}
