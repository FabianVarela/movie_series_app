import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_list_bloc/models/actor/actor_model.dart';

part 'actor_credits_state.freezed.dart';

@freezed
class ActorCreditsState with _$ActorCreditsState {
  const factory ActorCreditsState.initial() = ActorCreditsStateInitial;

  const factory ActorCreditsState.loading() = ActorCreditsStateLoading;

  const factory ActorCreditsState.success(ActorCreditsModel credits) =
      ActorCreditsStateSuccess;

  const factory ActorCreditsState.error(String message) =
      ActorCreditsStateError;
}
