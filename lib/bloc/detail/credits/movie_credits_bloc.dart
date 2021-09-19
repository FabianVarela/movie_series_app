import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_list_bloc/bloc/detail/credits/movie_credits_state.dart';
import 'package:movie_list_bloc/repository/movie_repository.dart';

class CreditsBloc extends Cubit<MovieCreditsState> {
  CreditsBloc(this._repository) : super(const MovieCreditsStateInitial());

  late final MovieRepository _repository;

  Future<void> getCredits(int movieId) async {
    try {
      emit(const MovieCreditsStateLoading());
      final credits = await _repository.fetchCredits(movieId);
      emit(MovieCreditsStateSuccess(credits));
    } on Exception catch (e) {
      emit(MovieCreditsStateError(e.toString()));
      addError(e, StackTrace.current);
    }
  }
}
