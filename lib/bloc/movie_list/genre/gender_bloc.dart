import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_list_bloc/bloc/movie_list/genre/gender_state.dart';
import 'package:movie_list_bloc/repository/movie_repository.dart';

class GenderBloc extends Cubit<GenderState> {
  GenderBloc(this._repository) : super(const GenderStateInitial());

  final MovieRepository _repository;

  Future<void> fetchMovieGenreList() async {
    try {
      emit(const GenderStateLoading());
      final genres = await _repository.fetchGenres();
      emit(GenderStateSuccess(genres));
    } on Exception catch (e) {
      emit(GenderStateError(e.toString()));
    }
  }
}
