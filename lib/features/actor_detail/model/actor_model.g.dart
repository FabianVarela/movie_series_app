// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActorModel _$ActorModelFromJson(Map<String, dynamic> json) => ActorModel(
      id: json['id'] as int,
      name: json['name'] as String,
      birthday: json['birthday'] as String?,
      department: json['known_for_department'] as String,
      deathDay: json['deathday'] as String?,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      biography: json['biography'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      placeBirth: json['place_of_birth'] as String?,
      imagePath: json['profile_path'] as String?,
      isAdult: json['adult'] as bool,
      credits:
          ActorModel._getCredits(json['movie_credits'] as Map<String, dynamic>),
    );

const _$GenderEnumMap = {
  Gender.none: 0,
  Gender.female: 1,
  Gender.male: 2,
  Gender.noBinary: 3,
};

ActorCreditModel _$ActorCreditModelFromJson(Map<String, dynamic> json) =>
    ActorCreditModel(
      id: json['id'] as int,
      character: json['character'] as String?,
      title: json['title'] as String,
      posterPath: json['poster_path'] as String?,
    );
