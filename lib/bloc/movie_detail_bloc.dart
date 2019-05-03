import 'package:movie_list_bloc/models/trailer_model.dart';
import 'package:movie_list_bloc/repository/movie_repository.dart';
import 'package:rxdart/rxdart.dart';

class MovieDetailBloc {
  final _repository = MovieRepository();
  final _movieId = PublishSubject<int>();
  final _trailers = BehaviorSubject<Future<TrailerModel>>();

  Function(int) get fetchTrailersById => _movieId.sink.add;

  Observable<Future<TrailerModel>> get movieTrailers => _trailers.stream;

  MovieDetailBloc() {
    _movieId.stream.transform(_itemTransformer()).pipe(_trailers);
  }

  _itemTransformer() {
    return ScanStreamTransformer(
      (Future<TrailerModel> trailer, int id, int index) {
        print(index);
        trailer = _repository.fetchTrailers(id);
        return trailer;
      },
    );
  }

  dispose() async {
    _movieId.close();
    await _trailers.drain();
    _trailers.close();
  }
}
