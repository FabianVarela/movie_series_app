import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_list_bloc/bloc/actor/actor_state.dart';
import 'package:movie_list_bloc/repository/movie_repository.dart';

class ActorBloc extends Cubit<ActorState> {
  ActorBloc(this._repository, [super.initialState = const ActorStateInitial()]);

  late final MovieRepository _repository;

  Future<void> getActorData(int personId) async {
    try {
      emit(const ActorStateLoading());

      final actor = await _repository.fetchActor(personId);
      final actorCredits = await _repository.fetchActorCredits(personId);

      emit(ActorStateSuccess(actor: actor, credits: actorCredits));
    } on Exception catch (e) {
      emit(ActorStateError(e.toString()));
    }
  }
}
