import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_list_bloc/bloc/movie_list/movie_list_state.dart';
import 'package:movie_list_bloc/repository/movie_repository.dart';

class MoviesBloc extends Cubit<MovieListState> {
  MoviesBloc(
    this._repository, [
    super.initialState = const MovieListStateInitial(),
  ]);

  late final MovieRepository _repository;

  Future<void> getMovies({int? genreId}) async {
    try {
      emit(const MovieListStateLoading());

      final movies = await _repository.fetchMovies(genreId: genreId);
      final genres = await _repository.fetchGenderList();

      emit(
        MovieListStateSuccess(movies: movies, genres: genres),
      );
    } on Exception catch (e) {
      emit(MovieListStateError(e.toString()));
    }
  }
}
