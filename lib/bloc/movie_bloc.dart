import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_list_bloc/models/movies_model.dart';
import 'package:movie_list_bloc/repository/movie_repository.dart';

class MoviesBloc extends Cubit<MoviesModel?> {
  MoviesBloc(this._repository) : super(null);

  late final MovieRepository _repository;

  void fetchMovies() async {
    try {
      final itemModel = await _repository.fetchMovies();
      emit(itemModel);
    } on Exception catch (e) {
      addError(e, StackTrace.current);
    }
  }
}
