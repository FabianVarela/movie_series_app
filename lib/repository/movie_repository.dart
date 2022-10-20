import 'package:movie_list_bloc/client/movie_client.dart';
import 'package:movie_list_bloc/models/actor/actor_model.dart';
import 'package:movie_list_bloc/models/credits/credits_model.dart';
import 'package:movie_list_bloc/models/gender/gender_model.dart';
import 'package:movie_list_bloc/models/movies/movies_model.dart';
import 'package:movie_list_bloc/models/trailers/trailer_model.dart';

class MovieRepository {
  MovieRepository(this._movieClient);

  late final MovieClient _movieClient;

  Future<GendersModel> fetchGenderList() => _movieClient.fetchGenderList();

  Future<MoviesModel> fetchMovies({int? genreId}) =>
      _movieClient.fetchMovies(genreId: genreId);

  Future<MovieModel> fetchMovie(int movieId) =>
      _movieClient.fetchMovie(movieId);

  Future<CreditsModel> fetchCredits(int movieId) =>
      _movieClient.fetchCredits(movieId);

  Future<TrailersModel> fetchTrailers(int movieId) =>
      _movieClient.fetchTrailers(movieId);

  Future<ActorModel> fetchActor(int personId) =>
      _movieClient.fetchActor(personId);

  Future<ActorCreditsModel> fetchActorCredits(int personId) =>
      _movieClient.fetchActorCredits(personId);
}
