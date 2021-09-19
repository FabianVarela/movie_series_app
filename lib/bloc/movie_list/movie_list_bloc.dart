import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_list_bloc/bloc/movie_list/movie_list_state.dart';
import 'package:movie_list_bloc/repository/movie_repository.dart';

class MoviesBloc extends Cubit<MovieListState> {
  MoviesBloc(this._repository) : super(const MovieListStateInitial());

  late final MovieRepository _repository;

  Future<void> fetchMovies() async {
    try {
      emit(const MovieListStateLoading());
      final movies = await _repository.fetchMovies();
      emit(MovieListStateSuccess(movies));
    } on Exception catch (e) {
      emit(MovieListStateError(e.toString()));
      addError(e, StackTrace.current);
    }
  }
}
