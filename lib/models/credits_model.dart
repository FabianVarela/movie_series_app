class CreditsModel {
  final int id;
  final List<CastModel> casts;

  CreditsModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        casts = (json['cast'] as List<dynamic>)
            .map((dynamic item) => CastModel.fromJson(item))
            .toList();
}

class CastModel {
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
}
