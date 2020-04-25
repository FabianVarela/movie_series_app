import 'package:movie_list_bloc/client/movie_client.dart';
import 'package:movie_list_bloc/models/credits_model.dart';
import 'package:movie_list_bloc/models/movie_model.dart';
import 'package:movie_list_bloc/models/movies_model.dart';
import 'package:movie_list_bloc/models/trailer_model.dart';

class MovieRepository {
  final MovieClient _movieApiClient = MovieClient();

  Future<MoviesModel> fetchAllMovies() => _movieApiClient.fetchMovies();

  Future<MovieModel> fetchMovie(int movieId) =>
      _movieApiClient.fetchMovie(movieId);

  Future<TrailersModel> fetchTrailers(int movieId) =>
      _movieApiClient.fetchMovieTrailer(movieId);

  Future<CreditsModel> fetchCredits(int movieId) =>
      _movieApiClient.fetchCredits(movieId);
}
