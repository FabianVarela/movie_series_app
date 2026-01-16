import 'package:json_annotation/json_annotation.dart';

part 'actor_model.g.dart';

enum Gender {
  @JsonValue(0)
  none,
  @JsonValue(1)
  female,
  @JsonValue(2)
  male,
  @JsonValue(3)
  noBinary,
}

@JsonSerializable(createToJson: false)
class ActorModel {
  const ActorModel({
    required this.id,
    required this.name,
    required this.department,
    required this.gender,
    required this.biography,
    required this.popularity,
    required this.isAdult,
    required this.movieCredits,
    required this.seriesCredits,
    this.birthday,
    this.deathDay,
    this.placeBirth,
    this.imagePath,
  });

  factory ActorModel.fromJson(Map<String, dynamic> json) =>
      _$ActorModelFromJson(json);

  final int id;
  final String name;
  final String? birthday;

  @JsonKey(name: 'known_for_department')
  final String department;

  @JsonKey(name: 'deathday')
  final String? deathDay;

  final Gender gender;
  final String biography;
  final double popularity;

  @JsonKey(name: 'place_of_birth')
  final String? placeBirth;

  @JsonKey(name: 'profile_path')
  final String? imagePath;

  @JsonKey(name: 'adult')
  final bool isAdult;

  @JsonKey(name: 'movie_credits', fromJson: _getCredits)
  final List<ActorCreditModel> movieCredits;

  @JsonKey(name: 'tv_credits', fromJson: _getCredits)
  final List<ActorCreditModel> seriesCredits;

  static List<ActorCreditModel> _getCredits(Map<String, dynamic> value) {
    final creditMap = value['cast'] as List<dynamic>;
    return [
      for (final item in creditMap)
        ActorCreditModel.fromJson(item as Map<String, dynamic>),
    ];
  }
}

@JsonSerializable(createToJson: false)
class ActorCreditModel {
  const ActorCreditModel({
    required this.id,
    required this.title,
    required this.releaseDate,
    required this.voteAverage,
    this.character,
    this.posterPath,
  });

  factory ActorCreditModel.fromJson(Map<String, dynamic> json) =>
      _$ActorCreditModelFromJson(json);

  final int id;

  @JsonKey(readValue: _getTitle)
  final String title;

  @JsonKey(name: 'release_date', readValue: _getDate)
  final String releaseDate;

  @JsonKey(name: 'vote_average')
  final double voteAverage;

  @JsonKey(readValue: _getCharacter)
  final String? character;

  @JsonKey(name: 'poster_path')
  final String? posterPath;

  static Object? _getTitle(Map<dynamic, dynamic> json, String field) {
    if (json.containsKey(field)) return json[field] as String;
    if (json.containsKey('name')) return json['name'] as String;
    return null;
  }

  static Object? _getDate(Map<dynamic, dynamic> map, String key) {
    if (map.containsKey(key)) return map[key] as String;
    if (map.containsKey('first_air_date')) {
      return map['first_air_date'] as String;
    }
    return null;
  }

  static Object? _getCharacter(Map<dynamic, dynamic> map, String key) {
    if (map.containsKey(key)) return map[key] as String;
    if (map.containsKey('job')) return map['job'] as String;
    return null;
  }
}
