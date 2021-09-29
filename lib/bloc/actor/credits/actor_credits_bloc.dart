import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_list_bloc/bloc/actor/credits/actor_credits_state.dart';
import 'package:movie_list_bloc/repository/movie_repository.dart';

class ActorCreditsBloc extends Cubit<ActorCreditsState> {
  ActorCreditsBloc(this._repository) : super(const ActorCreditsStateInitial());

  final MovieRepository _repository;

  Future<void> getActorCredits(int personId) async {
    try {
      emit(const ActorCreditsStateLoading());
      final actorCredits = await _repository.fetchActorCredits(personId);
      emit(ActorCreditsStateSuccess(actorCredits));
    } on Exception catch (e) {
      emit(ActorCreditsStateError(e.toString()));
    }
  }
}
