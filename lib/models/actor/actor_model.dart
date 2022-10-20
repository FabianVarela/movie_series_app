import 'package:json_annotation/json_annotation.dart';

part 'actor_model.g.dart';

enum Gender {
  @JsonValue(1)
  female,
  @JsonValue(2)
  male,
}

@JsonSerializable(createToJson: false)
class ActorModel {
  const ActorModel({
    required this.id,
    required this.name,
    this.birthday,
    required this.department,
    this.deathDay,
    required this.gender,
    required this.biography,
    required this.popularity,
    this.placeBirth,
    this.imagePath,
    required this.isAdult,
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
}

@JsonSerializable(createToJson: false)
class ActorCreditsModel {
  const ActorCreditsModel({required this.id, required this.casts});

  factory ActorCreditsModel.fromJson(Map<String, dynamic> json) =>
      _$ActorCreditsModelFromJson(json);

  final int id;

  @JsonKey(name: 'cast')
  final List<ActorCreditModel> casts;
}

@JsonSerializable(createToJson: false)
class ActorCreditModel {
  const ActorCreditModel({
    required this.id,
    this.character,
    required this.title,
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
