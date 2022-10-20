import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_list_bloc/models/trailers/trailer_model.dart';

part 'movie_trailers_state.freezed.dart';

@freezed
class MovieTrailersState with _$MovieTrailersState {
  const factory MovieTrailersState.initial() = MovieTrailersStateInitial;

  const factory MovieTrailersState.loading() = MovieTrailersStateLoading;

  const factory MovieTrailersState.success(TrailersModel trailers) =
      MovieTrailersStateSuccess;

  const factory MovieTrailersState.error(String message) =
      MovieTrailersStateError;
}
