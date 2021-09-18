import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_list_bloc/bloc/movie_list/movie_state.dart';
import 'package:movie_list_bloc/repository/movie_repository.dart';

class MoviesBloc extends Cubit<MovieListState> {
  MoviesBloc(this._repository) : super(MovieListInitialState());

  late final MovieRepository _repository;

  Future<void> fetchMovies() async {
    try {
      emit(MovieListLoadingState());
      final movies = await _repository.fetchMovies();
      emit(MovieListSuccessState(movies));
    } on Exception catch (e) {
      emit(MovieListErrorState(e.toString()));
      addError(e, StackTrace.current);
    }
  }
}
