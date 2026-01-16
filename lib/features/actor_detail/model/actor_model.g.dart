// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActorModel _$ActorModelFromJson(Map<String, dynamic> json) => ActorModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  department: json['known_for_department'] as String,
  gender: $enumDecode(_$GenderEnumMap, json['gender']),
  biography: json['biography'] as String,
  popularity: (json['popularity'] as num).toDouble(),
  isAdult: json['adult'] as bool,
  movieCredits: ActorModel._getCredits(
    json['movie_credits'] as Map<String, dynamic>,
  ),
  seriesCredits: ActorModel._getCredits(
    json['tv_credits'] as Map<String, dynamic>,
  ),
  birthday: json['birthday'] as String?,
  deathDay: json['deathday'] as String?,
  placeBirth: json['place_of_birth'] as String?,
  imagePath: json['profile_path'] as String?,
);

const _$GenderEnumMap = {
  Gender.none: 0,
  Gender.female: 1,
  Gender.male: 2,
  Gender.noBinary: 3,
};

ActorCreditModel _$ActorCreditModelFromJson(Map<String, dynamic> json) =>
    ActorCreditModel(
      id: (json['id'] as num).toInt(),
      title: ActorCreditModel._getTitle(json, 'title') as String,
      releaseDate: ActorCreditModel._getDate(json, 'release_date') as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
      character: ActorCreditModel._getCharacter(json, 'character') as String?,
      posterPath: json['poster_path'] as String?,
    );
