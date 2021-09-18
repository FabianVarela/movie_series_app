import 'package:equatable/equatable.dart';

class TrailersModel extends Equatable {
  final int id;
  final List<TrailerModel> trailers;

  TrailersModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int,
        trailers = (json['results'] as List<dynamic>)
            .map((dynamic item) =>
                TrailerModel.fromJson(item as Map<String, dynamic>))
            .toList();

  @override
  List<Object> get props => [id, trailers];
}

class TrailerModel extends Equatable {
  final String id;
  final String iso_639_1;
  final String iso_3166_1;
  final String key;
  final String name;
  final String site;
  final int size;
  final String type;

  TrailerModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String,
        iso_639_1 = json['iso_639_1'] as String,
        iso_3166_1 = json['iso_3166_1'] as String,
        key = json['key'] as String,
        name = json['name'] as String,
        site = json['site'] as String,
        size = json['size'] as int,
        type = json['type'] as String;

  @override
  List<Object> get props => [
        id,
        iso_639_1,
        iso_3166_1,
        key,
        name,
        site,
        size,
        type,
      ];
}
