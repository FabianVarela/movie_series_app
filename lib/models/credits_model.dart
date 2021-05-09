import 'package:equatable/equatable.dart';

class CreditsModel extends Equatable {
  final int id;
  final List<CastModel> casts;

  CreditsModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        casts = (json['cast'] as List<dynamic>)
            .map((dynamic item) => CastModel.fromJson(item))
            .toList();

  @override
  List<Object> get props => [id, casts];
}

class CastModel extends Equatable {
  final int id;
  final int castId;
  final String character;
  final String name;
  final int order;
  final String? profilePath;

  CastModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        castId = json['cast_id'],
        character = json['character'],
        name = json['name'],
        order = json['order'],
        profilePath = json['profile_path'];

  @override
  List<Object?> get props => [id, castId, character, name, order, profilePath];
}
