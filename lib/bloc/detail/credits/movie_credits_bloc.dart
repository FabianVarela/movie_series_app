import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_list_bloc/bloc/detail/credits/credits_state.dart';
import 'package:movie_list_bloc/repository/movie_repository.dart';

class CreditsBloc extends Cubit<CreditsState> {
  CreditsBloc(this._repository) : super(CreditsInitialState());

  late final MovieRepository _repository;

  Future<void> getCredits(int movieId) async {
    try {
      emit(CreditsLoadingState());
      final credits = await _repository.fetchCredits(movieId);
      emit(CreditsSuccessState(credits));
    } on Exception catch (e) {
      emit(CreditsErrorState(e.toString()));
      addError(e, StackTrace.current);
    }
  }
}
