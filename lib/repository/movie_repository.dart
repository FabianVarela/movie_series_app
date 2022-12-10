import 'package:movie_list_bloc/client/movie_client.dart';
import 'package:movie_list_bloc/models/actor/actor_model.dart';

class MovieRepository {
  MovieRepository(this._movieClient);

  late final MovieClient _movieClient;

  Future<ActorModel> fetchActor(int personId, String language) =>
      _movieClient.fetchActor(personId, language);

  Future<ActorCreditsModel> fetchActorCredits(int personId, String language) =>
      _movieClient.fetchActorCredits(personId, language);
}
