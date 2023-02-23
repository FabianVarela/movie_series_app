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
    required this.credits,
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
  final List<ActorCreditModel> credits;

  static List<ActorCreditModel> _getCredits(Map<String, dynamic> value) {
    final creditMap = value['cast'] as List<dynamic>;
    return [
      for (final item in creditMap)
        ActorCreditModel.fromJson(item as Map<String, dynamic>)
    ];
  }
}

@JsonSerializable(createToJson: false)
class ActorCreditModel {
  const ActorCreditModel({
    required this.id,
    required this.title,
    this.character,
    this.posterPath,
  });

  factory ActorCreditModel.fromJson(Map<String, dynamic> json) =>
      _$ActorCreditModelFromJson(json);

  final int id;
  final String? character;
  final String title;

  @JsonKey(name: 'poster_path')
  final String? posterPath;
}
