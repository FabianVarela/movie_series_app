import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_list_bloc/models/movies_model.dart';

part 'movie_state.freezed.dart';

@freezed
class MovieState with _$MovieState {
  const factory MovieState.initial() = MovieStateInitial;

  const factory MovieState.loading() = MovieStateLoading;

  const factory MovieState.success(MovieModel movie) = MovieStateSuccess;

  const factory MovieState.error(String message) = MovieStateError;
}
