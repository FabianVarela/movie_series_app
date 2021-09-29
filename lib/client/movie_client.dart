import 'dart:convert';

import 'package:movie_list_bloc/models/actor_model.dart';
import 'package:movie_list_bloc/models/credits_model.dart';
import 'package:movie_list_bloc/models/gender_model.dart';
import 'package:movie_list_bloc/models/movies_model.dart';
import 'package:http/http.dart';
import 'package:movie_list_bloc/models/trailer_model.dart';

class MovieClient {
  MovieClient(this._client) {
    _baseUrl = 'api.themoviedb.org';
    _apiKey = const String.fromEnvironment('API_KEY');
  }

  late final Client _client;

  late String? _baseUrl;
  late String? _apiKey;

  Future<GendersModel> fetchGenderList() async {
    final response = await _client.get(
      Uri.https(_baseUrl!, '/3/genre/movie/list', _getApiKeyParam()),
    );

    print(response.body);

    if (response.statusCode == 200) {
      final jsonMap = json.decode(response.body) as Map<String, dynamic>;
      return GendersModel.fromJson(jsonMap);
    } else {
      throw Exception('Failed to load movie genre list');
    }
  }

  Future<MoviesModel> fetchMovies({int? genreId}) async {
    final url = genreId != null ? '/3/discover/movie' : '/3/movie/popular';
    final params = genreId != null
        ? <String, dynamic>{..._getApiKeyParam(), 'with_genres': '$genreId'}
        : _getApiKeyParam();

    final response = await _client.get(Uri.https(_baseUrl!, url, params));

    print(response.body);

    if (response.statusCode == 200) {
      final jsonMap = json.decode(response.body) as Map<String, dynamic>;
      return MoviesModel.fromJson(jsonMap);
    } else {
      throw Exception('Failed to load movies');
    }
  }

  Future<MovieModel> fetchMovie(int movieId) async {
    final response = await _client.get(
      Uri.https(_baseUrl!, '/3/movie/$movieId', _getApiKeyParam()),
    );

    print(response.body);

    if (response.statusCode == 200) {
      final jsonMap = json.decode(response.body) as Map<String, dynamic>;
      return MovieModel.fromJson(jsonMap);
    } else {
      throw Exception('Failed to load movie with id $movieId');
    }
  }

  Future<CreditsModel> fetchCredits(int movieId) async {
    final response = await _client.get(
      Uri.https(_baseUrl!, '/3/movie/$movieId/credits', _getApiKeyParam()),
    );

    print(response.body);

    if (response.statusCode == 200) {
      final jsonMap = json.decode(response.body) as Map<String, dynamic>;
      return CreditsModel.fromJson(jsonMap);
    } else {
      throw Exception('Failed to load movie credits');
    }
  }

  Future<TrailersModel> fetchTrailers(int movieId) async {
    final response = await _client.get(
      Uri.https(_baseUrl!, '/3/movie/$movieId/videos', _getApiKeyParam()),
    );

    print(response.body);

    if (response.statusCode == 200) {
      final jsonMap = json.decode(response.body) as Map<String, dynamic>;
      return TrailersModel.fromJson(jsonMap);
    } else {
      throw Exception('Failed to load movie trailers');
    }
  }

  Future<ActorModel> fetchActor(int personId) async {
    final response = await _client.get(
      Uri.https(_baseUrl!, '/3/person/$personId', _getApiKeyParam()),
    );

    print(response.body);

    if (response.statusCode == 200) {
      final jsonMap = json.decode(response.body) as Map<String, dynamic>;
      return ActorModel.fromJson(jsonMap);
    } else {
      throw Exception('Failed to load actor data');
    }
  }

  Future<ActorCreditsModel> fetchActorCredits(int personId) async {
    final params = _getApiKeyParam();
    final response = await _client.get(
      Uri.https(_baseUrl!, '/3/person/$personId/movie_credits', params),
    );

    print(response.body);

    if (response.statusCode == 200) {
      final jsonMap = json.decode(response.body) as Map<String, dynamic>;
      return ActorCreditsModel.fromJson(jsonMap);
    } else {
      throw Exception('Failed to load actor credit list');
    }
  }

  Map<String, dynamic> _getApiKeyParam() =>
      <String, dynamic>{'api_key': _apiKey};
}
