import 'package:equatable/equatable.dart';

class MoviesModel extends Equatable {
  final int page;
  final int totalResults;
  final int totalPages;
  final List<MoviesItemModel> movies;

  MoviesModel.fromJson(Map<String, dynamic> json)
      : page = json['page'] as int,
        totalResults = json['total_results'] as int,
        totalPages = json['total_pages'] as int,
        movies = (json['results'] as List<dynamic>)
            .map((dynamic item) =>
                MoviesItemModel.fromJson(item as Map<String, dynamic>))
            .toList();

  @override
  List<Object> get props => [page, totalResults, totalPages, movies];
}

class MoviesItemModel extends Equatable {
  final int id;
  final String posterPath;
  final String backdropPath;
  final String title;
  final double voteAverage;

  MoviesItemModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int,
        posterPath = json['poster_path'] as String,
        backdropPath = json['backdrop_path'] as String,
        title = json['title'] as String,
        voteAverage = json['vote_average'] as double;

  @override
  List<Object> get props => [id, posterPath, backdropPath, title, voteAverage];
}
