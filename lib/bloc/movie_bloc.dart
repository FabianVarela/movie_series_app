import 'package:movie_list_bloc/models/item_model.dart';
import 'package:movie_list_bloc/repository/movie_repository.dart';
import 'package:rxdart/rxdart.dart';

class MoviesBloc {
  final _repository = MovieRepository();
  final _moviesFetcher = PublishSubject<ItemModel>();

  Observable<ItemModel> get allMovies => _moviesFetcher.stream;

  fetchAllMovies() async {
    ItemModel itemModel = await _repository.fetchAllMovies();
    _moviesFetcher.sink.add(itemModel);
  }

  dispose() => _moviesFetcher.close();
}

final bloc = MoviesBloc();
