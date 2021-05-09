import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_list_bloc/models/credits_model.dart';
import 'package:movie_list_bloc/models/movie_model.dart';
import 'package:movie_list_bloc/models/trailer_model.dart';
import 'package:movie_list_bloc/repository/movie_repository.dart';

class MovieBloc extends Cubit<MovieModel?> {
  MovieBloc(this._repository) : super(null);

  late final MovieRepository _repository;

  void getMovie(int movieId) async {
    try {
      final movieModel = await _repository.fetchMovie(movieId);
      emit(movieModel);
    } on Exception catch (e) {
      addError(e, StackTrace.current);
    }
  }
}

class TrailersBloc extends Cubit<TrailersModel?> {
  TrailersBloc(this._repository) : super(null);

  late final MovieRepository _repository;

  void getTrailers(int movieId) async {
    try {
      final trailersModel = await _repository.fetchTrailers(movieId);
      emit(trailersModel);
    } on Exception catch (e) {
      addError(e, StackTrace.current);
    }
  }
}

class CreditsBloc extends Cubit<CreditsModel?> {
  CreditsBloc(this._repository) : super(null);

  late final MovieRepository _repository;

  void getCredits(int movieId) async {
    try {
      final creditsModel = await _repository.fetchCredits(movieId);
      emit(creditsModel);
    } on Exception catch (e) {
      addError(e, StackTrace.current);
    }
  }
}
