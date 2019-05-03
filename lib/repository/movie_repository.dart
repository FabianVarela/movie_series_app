import 'package:movie_list_bloc/client/movie_client.dart';
import 'package:movie_list_bloc/models/item_model.dart';
import 'package:movie_list_bloc/models/trailer_model.dart';

class MovieRepository {
  final moviesApiProvider = MovieClient();

  Future<ItemModel> fetchAllMovies() => moviesApiProvider.fetchMovieList();

  Future<TrailerModel> fetchTrailers(int movieId) =>
      moviesApiProvider.fetchTrailer(movieId);
}
