import 'package:equatable/equatable.dart';

class MoviesModel extends Equatable {
  final int page;
  final int totalResults;
  final int totalPages;
  final List<MoviesItemModel> movies;

  MoviesModel.fromJson(Map<String, dynamic> json)
      : page = json['page'],
        totalResults = json['total_results'],
        totalPages = json['total_pages'],
        movies = (json['results'] as List<dynamic>)
            .map((dynamic item) => MoviesItemModel.fromJson(item))
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
      : id = json['id'],
        posterPath = json['poster_path'],
        backdropPath = json['backdrop_path'],
        title = json['title'],
        voteAverage = json['vote_average'].toDouble();

  @override
  List<Object> get props => [id, posterPath, backdropPath, title, voteAverage];
}
