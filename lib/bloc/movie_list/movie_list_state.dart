import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_list_bloc/models/movies/movies_model.dart';

part 'movie_list_state.freezed.dart';

@freezed
class MovieListState with _$MovieListState {
  const factory MovieListState.initial() = MovieListStateInitial;

  const factory MovieListState.loading() = MovieListStateLoading;

  const factory MovieListState.success(MoviesModel movies) =
      MovieListStateSuccess;

  const factory MovieListState.error(String message) = MovieListStateError;
}
