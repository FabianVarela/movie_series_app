import 'package:equatable/equatable.dart';

class CreditsModel extends Equatable {
  CreditsModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int,
        casts = (json['cast'] as List<dynamic>)
            .map((dynamic item) =>
                CastModel.fromJson(item as Map<String, dynamic>))
            .toList();

  final int id;
  final List<CastModel> casts;

  @override
  List<Object> get props => [id, casts];
}

class CastModel extends Equatable {
  CastModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int,
        castId = json['cast_id'] as int,
        character = json['character'] as String,
        name = json['name'] as String,
        order = json['order'] as int,
        profilePath = json['profile_path'] as String?;

  final int id;
  final int castId;
  final String character;
  final String name;
  final int order;
  final String? profilePath;

  @override
  List<Object?> get props => [id, castId, character, name, order, profilePath];
}
