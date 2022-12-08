import 'package:movie_list_bloc/client/movie_client.dart';
import 'package:movie_list_bloc/models/actor/actor_model.dart';
import 'package:movie_list_bloc/models/credits/credits_model.dart';
import 'package:movie_list_bloc/models/gender/gender_model.dart';
import 'package:movie_list_bloc/models/movies/movies_model.dart';
import 'package:movie_list_bloc/models/trailers/trailer_model.dart';

class MovieRepository {
  MovieRepository(this._movieClient);

  late final MovieClient _movieClient;

  Future<GendersModel> fetchGenderList(String language) =>
      _movieClient.fetchGenderList(language);

  Future<MoviesModel> fetchMovies(String language, {int? genreId}) =>
      _movieClient.fetchMovies(language, genreId: genreId);

  Future<MovieModel> fetchMovie(int movieId, String language) =>
      _movieClient.fetchMovie(movieId, language);

  Future<CreditsModel> fetchCredits(int movieId, String language) =>
      _movieClient.fetchCredits(movieId, language);

  Future<TrailersModel> fetchTrailers(int movieId, String language) =>
      _movieClient.fetchTrailers(movieId, language);

  Future<ActorModel> fetchActor(int personId, String language) =>
      _movieClient.fetchActor(personId, language);

  Future<ActorCreditsModel> fetchActorCredits(int personId, String language) =>
      _movieClient.fetchActorCredits(personId, language);
}
