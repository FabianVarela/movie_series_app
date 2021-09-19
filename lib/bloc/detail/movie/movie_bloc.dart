import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_list_bloc/bloc/detail/movie/movie_state.dart';
import 'package:movie_list_bloc/repository/movie_repository.dart';

class MovieBloc extends Cubit<MovieState> {
  MovieBloc(this._repository) : super(const MovieStateInitial());

  late final MovieRepository _repository;

  Future<void> getMovie(int movieId) async {
    try {
      emit(const MovieStateLoading());
      final movie = await _repository.fetchMovie(movieId);
      emit(MovieStateSuccess(movie));
    } on Exception catch (e) {
      emit(MovieStateError(e.toString()));
      addError(e, StackTrace.current);
    }
  }
}
