import 'package:equatable/equatable.dart';

class MovieModel extends Equatable {
  final int id;
  final String posterPath;
  final String backdropPath;
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

  MovieModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        posterPath = json['poster_path'],
        backdropPath = json['backdrop_path'] ?? '',
        originalTitle = json['original_title'],
        title = json['title'],
        overview = json['overview'],
        releaseDate = json['release_date'],
        voteAverage = json['vote_average'].toDouble(),
        voteCount = json['vote_count'],
        originalLanguage = json['original_language'],
        homepage = json['homepage'],
        tagLine = json['tagLine'],
        genres = json['genres'] == null
            ? <GenreMovies>[]
            : (json['genres'] as List<dynamic>)
                .map((dynamic item) => GenreMovies.fromJson(item))
                .toList();

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
  final int id;
  final String name;

  GenreMovies.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'];

  @override
  List<Object> get props => [id, name];
}
