import 'package:equatable/equatable.dart';

class GenresModel extends Equatable {
  GenresModel.fromJson(Map<String, dynamic> json)
      : genres = json['genres'] == null
            ? <GenreModel>[]
            : (json['genres'] as List<dynamic>)
                .map((dynamic item) =>
                    GenreModel.fromJson(item as Map<String, dynamic>))
                .toList();

  final List<GenreModel> genres;

  @override
  List<Object?> get props => [genres];
}

class GenreModel extends Equatable {
  GenreModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int,
        name = json['name'] as String;

  final int id;
  final String name;

  @override
  List<Object> get props => [id, name];
}
