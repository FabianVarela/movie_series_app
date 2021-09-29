import 'package:equatable/equatable.dart';

enum Gender { male, female, other }

class ActorModel extends Equatable {
  ActorModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int,
        name = json['name'] as String,
        birthday = json['birthday'] as String?,
        department = json['known_for_department'] as String,
        deathDay = json['deathday'] as String?,
        gender = json['gender'] as int,
        biography = json['biography'] as String,
        popularity = (json['popularity'] as num).toDouble(),
        placeBirth = json['place_of_birth'] as String?,
        imagePath = json['profile_path'] as String?,
        isAdult = json['adult'] as bool;

  final int id;
  final String name;
  final String? birthday;
  final String department;
  final String? deathDay;
  final int gender;
  final String biography;
  final double popularity;
  final String? placeBirth;
  final String? imagePath;
  final bool isAdult;

  Gender get getGender => gender == 1
      ? Gender.female
      : gender == 2
          ? Gender.male
          : Gender.other;

  @override
  List<Object?> get props => [
        id,
        name,
        birthday,
        department,
        deathDay,
        gender,
        biography,
        popularity,
        placeBirth,
        imagePath,
        isAdult,
      ];
}

class ActorCreditsModel extends Equatable {
  ActorCreditsModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int,
        casts = (json['cast'] as List<dynamic>)
            .map((dynamic item) =>
                ActorCreditModel.fromJson(item as Map<String, dynamic>))
            .toList();

  final int id;
  final List<ActorCreditModel> casts;

  @override
  List<Object?> get props => [id, casts];
}

class ActorCreditModel extends Equatable {
  ActorCreditModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int,
        character = json['character'] as String?,
        title = json['title'] as String,
        posterPath = json['poster_path'] as String?;

  final int id;
  final String? character;
  final String title;
  final String? posterPath;

  @override
  List<Object?> get props => [id, character, title, posterPath];
}
