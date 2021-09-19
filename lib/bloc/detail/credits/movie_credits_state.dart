import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_list_bloc/models/credits_model.dart';

part 'movie_credits_state.freezed.dart';

@freezed
class MovieCreditsState with _$MovieCreditsState {
  const factory MovieCreditsState.initial() = MovieCreditsStateInitial;

  const factory MovieCreditsState.loading() = MovieCreditsStateLoading;

  const factory MovieCreditsState.success(CreditsModel credits) =
      MovieCreditsStateSuccess;

  const factory MovieCreditsState.error(String message) =
      MovieCreditsStateError;
}
