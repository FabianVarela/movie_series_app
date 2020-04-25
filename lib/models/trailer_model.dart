class TrailersModel {
  final int id;
  final List<TrailerModel> trailers;

  TrailersModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        trailers = (json['results'] as List<dynamic>)
            .map((dynamic item) => TrailerModel.fromJson(item))
            .toList();
}

class TrailerModel {
  final String id;
  final String iso_639_1;
  final String iso_3166_1;
  final String key;
  final String name;
  final String site;
  final int size;
  final String type;

  TrailerModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        iso_639_1 = json['iso_639_1'],
        iso_3166_1 = json['iso_3166_1'],
        key = json['key'],
        name = json['name'],
        site = json['site'],
        size = json['size'],
        type = json['type'];
}
