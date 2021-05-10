import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_list_bloc/bloc/detail/movie/movie_state.dart';
import 'package:movie_list_bloc/repository/movie_repository.dart';

class MovieBloc extends Cubit<MovieState> {
  MovieBloc(this._repository) : super(MovieInitialState());

  late final MovieRepository _repository;

  void getMovie(int movieId) async {
    try {
      emit(MovieLoadingState());
      final movie = await _repository.fetchMovie(movieId);
      emit(MovieSuccessState(movie));
    } on Exception catch (e) {
      emit(MovieErrorState(e.toString()));
      addError(e, StackTrace.current);
    }
  }
}
