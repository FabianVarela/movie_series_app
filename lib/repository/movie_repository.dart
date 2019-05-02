import 'package:movie_list_bloc/client/movie_client.dart';
import 'package:movie_list_bloc/models/item_model.dart';

class MovieRepository {
  final moviesApiProvider = MovieClient();

  Future<ItemModel> fetchAllMovies() => moviesApiProvider.fetchMovieList();
}
