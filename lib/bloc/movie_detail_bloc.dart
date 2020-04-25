import 'package:movie_list_bloc/models/credits_model.dart';
import 'package:movie_list_bloc/models/movie_model.dart';
import 'package:movie_list_bloc/models/trailer_model.dart';
import 'package:movie_list_bloc/repository/movie_repository.dart';
import 'package:rxdart/rxdart.dart';

class MovieDetailBloc {
  final MovieRepository _repository = MovieRepository();

  /// Subjects or StreamControllers

  final PublishSubject<MovieModel> _movie = PublishSubject<MovieModel>();
  final PublishSubject<TrailersModel> _trailers =
      PublishSubject<TrailersModel>();
  final PublishSubject<CreditsModel> _credits = PublishSubject<CreditsModel>();

  /// Get data from Stream

  /// Observables

  Stream<MovieModel> get movie => _movie.stream;

  Stream<TrailersModel> get trailers => _trailers.stream;

  Stream<CreditsModel> get credits => _credits.stream;

  void getMovie(int movieId) async {
    try {
      final MovieModel movieModel = await _repository.fetchMovie(movieId);
      _movie.sink.add(movieModel);
    } on Exception catch (e) {
      _movie.sink.addError(e);
    }
  }

  void getTrailers(int movieId) async {
    try {
      final TrailersModel trailersModel =
          await _repository.fetchTrailers(movieId);
      _trailers.sink.add(trailersModel);
    } on Exception catch (e) {
      _trailers.sink.addError(e);
    }
  }

  void getCredits(int movieId) async {
    try {
      final CreditsModel creditsModel = await _repository.fetchCredits(movieId);
      _credits.sink.add(creditsModel);
    } on Exception catch (e) {
      _credits.sink.addError(e);
    }
  }

  void dispose() {
    _movie.close();
    _trailers.close();
    _credits.close();
  }
}
