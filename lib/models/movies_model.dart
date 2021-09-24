import 'package:equatable/equatable.dart';
import 'package:movie_list_bloc/models/genre_model.dart';

class MoviesModel extends Equatable {
  MoviesModel.fromJson(Map<String, dynamic> json)
      : page = json['page'] as int,
        totalResults = json['total_results'] as int,
        totalPages = json['total_pages'] as int,
        movies = (json['results'] as List<dynamic>)
            .map((dynamic item) =>
                MovieModel.fromJson(item as Map<String, dynamic>))
            .toList();

  final int page;
  final int totalResults;
  final int totalPages;
  final List<MovieModel> movies;

  @override
  List<Object> get props => [page, totalResults, totalPages, movies];
}

class MovieModel extends Equatable {
  MovieModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int,
        posterPath = json['poster_path'] as String,
        backdropPath = json['backdrop_path'] as String?,
        originalTitle = json['original_title'] as String,
        title = json['title'] as String,
        overview = json['overview'] as String,
        releaseDate = json['release_date'] as String,
        voteAverage = (json['vote_average'] as num).toDouble(),
        voteCount = json['vote_count'] as int,
        originalLanguage = json['original_language'] as String,
        homepage = json['homepage'] as String?,
        tagLine = json['tagLine'] as String?,
        genres = GenresModel.fromJson(json).genres;

  final int id;
  final String posterPath;
  final String? backdropPath;
  final String originalTitle;
  final String title;
  final String overview;
  final String releaseDate;
  final double voteAverage;
  final int voteCount;
  final String originalLanguage;
  final String? homepage;
  final String? tagLine;
  final List<GenreModel> genres;

  @override
  List<Object?> get props => [
        id,
        posterPath,
        backdropPath,
        originalTitle,
        title,
        overview,
        releaseDate,
        voteAverage,
        voteCount,
        originalLanguage,
        homepage,
        tagLine,
        genres,
      ];
}
