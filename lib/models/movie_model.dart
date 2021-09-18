import 'package:equatable/equatable.dart';

class MovieModel extends Equatable {
  MovieModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int,
        posterPath = json['poster_path'] as String,
        backdropPath = json['backdrop_path'] as String?,
        originalTitle = json['original_title'] as String,
        title = json['title'] as String,
        overview = json['overview'] as String,
        releaseDate = json['release_date'] as String,
        voteAverage = json['vote_average'] as double,
        voteCount = json['vote_count'] as int,
        originalLanguage = json['original_language'] as String,
        homepage = json['homepage'] as String,
        tagLine = json['tagLine'] as String?,
        genres = json['genres'] == null
            ? <GenreMovies>[]
            : (json['genres'] as List<dynamic>)
                .map((dynamic item) =>
                    GenreMovies.fromJson(item as Map<String, dynamic>))
                .toList();

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
  final String homepage;
  final String? tagLine;
  final List<GenreMovies> genres;

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

class GenreMovies extends Equatable {
  GenreMovies.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int,
        name = json['name'] as String;

  final int id;
  final String name;

  @override
  List<Object> get props => [id, name];
}
