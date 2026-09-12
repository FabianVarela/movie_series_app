import 'package:go_router_paths/go_router_paths.dart';

class AppRoutePath {
  static MoviesRoutePath get movies => MoviesRoutePath();

  static SeriesRoutePath get series => SeriesRoutePath();
}

class MoviesRoutePath extends Path<MoviesRoutePath> {
  new() : super('movies');

  MoviesDetailRoutePath get detail => MoviesDetailRoutePath(parent: this);
}

class MoviesDetailRoutePath extends Param<MoviesDetailRoutePath> {
  new({required super.parent}) : super('detail', 'movieId');

  ActorDetailRoutePath get actor => ActorDetailRoutePath(parent: this);
}

class SeriesRoutePath extends Path<SeriesRoutePath> {
  new() : super('series');

  SeriesDetailRoutePath get detail => SeriesDetailRoutePath(parent: this);
}

class SeriesDetailRoutePath extends Param<SeriesDetailRoutePath> {
  new({required super.parent}) : super('detail', 'seriesId');

  ActorDetailRoutePath get actor => ActorDetailRoutePath(parent: this);
}

class ActorDetailRoutePath extends Param<ActorDetailRoutePath> {
  new({required super.parent}) : super('actor', 'actorId');
}
