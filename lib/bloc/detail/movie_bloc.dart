import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_list_bloc/bloc/detail/movie_state.dart';
import 'package:movie_list_bloc/repository/movie_repository.dart';

class MovieBloc extends Cubit<MovieState> {
  MovieBloc(this._repository, [super.initialState = const MovieStateInitial()]);

  late final MovieRepository _repository;
  final _lang = 'es-CO';

  Future<void> getMovieDetails(int movieId) async {
    try {
      emit(const MovieStateLoading());

      final movie = await _repository.fetchMovie(movieId, _lang);
      final credits = await _repository.fetchCredits(movieId, _lang);
      final trailers = await _repository.fetchTrailers(movieId, _lang);

      emit(
        MovieStateSuccess(movie: movie, credits: credits, trailers: trailers),
      );
    } on Exception catch (e) {
      emit(MovieStateError(e.toString()));
    }
  }
}
