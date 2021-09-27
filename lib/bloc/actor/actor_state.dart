import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_list_bloc/models/actor_model.dart';

part 'actor_state.freezed.dart';

@freezed
class ActorState with _$ActorState {
  const factory ActorState.initial() = ActorStateInitial;

  const factory ActorState.loading() = ActorStateLoading;

  const factory ActorState.success(ActorModel actor) = ActorStateSuccess;

  const factory ActorState.error(String message) = ActorStateError;
}
