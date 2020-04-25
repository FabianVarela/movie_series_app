import 'package:movie_list_bloc/models/movies_model.dart';
import 'package:movie_list_bloc/repository/movie_repository.dart';
import 'package:rxdart/rxdart.dart';

class MoviesBloc {
  final MovieRepository _repository = MovieRepository();

  /// Subjects or StreamControllers
  final PublishSubject<MoviesModel> _movies = PublishSubject<MoviesModel>();

  /// Get data from Stream

  /// Observables
  Stream<MoviesModel> get movies => _movies.stream;

  void fetchAllMovies() async {
    final MoviesModel itemModel = await _repository.fetchAllMovies();
    _movies.sink.add(itemModel);
  }

  void dispose() => _movies.close();
}

final MoviesBloc bloc = MoviesBloc();
