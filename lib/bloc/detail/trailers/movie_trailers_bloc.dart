import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_list_bloc/bloc/detail/trailers/trailer_state.dart';
import 'package:movie_list_bloc/repository/movie_repository.dart';

class TrailersBloc extends Cubit<TrailersState> {
  TrailersBloc(this._repository) : super(TrailersInitialState());

  late final MovieRepository _repository;

  void getTrailers(int movieId) async {
    try {
      emit(TrailersLoadingState());
      final trailers = await _repository.fetchTrailers(movieId);
      emit(TrailersSuccessState(trailers));
    } on Exception catch (e) {
      emit(TrailersErrorState(e.toString()));
      addError(e, StackTrace.current);
    }
  }
}
