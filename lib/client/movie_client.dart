import 'dart:convert';

import 'package:http/http.dart';
import 'package:movie_list_bloc/models/actor/actor_model.dart';
import 'package:movie_list_bloc/models/credits/credits_model.dart';
import 'package:movie_list_bloc/models/gender/gender_model.dart';
import 'package:movie_list_bloc/models/movies/movies_model.dart';
import 'package:movie_list_bloc/models/trailers/trailer_model.dart';

class MovieClient {
  MovieClient(this._client) {
    _baseUrl = const String.fromEnvironment('TMDB_API_URI');
    _apiKey = const String.fromEnvironment('TMDB_API_KEY');
  }

  late final Client _client;

  late String _baseUrl;
  late String _apiKey;

  Future<GendersModel> fetchGenderList() async {
    final response = await _client.get(
      Uri.https(_baseUrl, '/3/genre/movie/list', _getDefaultParams('es-CO')),
    );

    if (response.statusCode == 200) {
      final jsonMap = json.decode(response.body) as Map<String, dynamic>;
      return GendersModel.fromJson(jsonMap);
    } else {
      throw Exception('Failed to load movie genre list');
    }
  }

  Future<MoviesModel> fetchMovies({int? genreId}) async {
    final url = genreId != null ? '/3/discover/movie' : '/3/movie/popular';
    final params = <String, dynamic>{
      if (genreId != null) 'with_genres': '$genreId',
      ..._getDefaultParams('es-CO')
    };

    final response = await _client.get(Uri.https(_baseUrl, url, params));
    if (response.statusCode == 200) {
      final jsonMap = json.decode(response.body) as Map<String, dynamic>;
      return MoviesModel.fromJson(jsonMap);
    } else {
      throw Exception('Failed to load movies');
    }
  }

  Future<MovieModel> fetchMovie(int movieId) async {
    final response = await _client.get(
      Uri.https(_baseUrl, '/3/movie/$movieId', _getDefaultParams('es-CO')),
    );

    if (response.statusCode == 200) {
      final jsonMap = json.decode(response.body) as Map<String, dynamic>;
      return MovieModel.fromJson(jsonMap);
    } else {
      throw Exception('Failed to load movie with id $movieId');
    }
  }

  Future<CreditsModel> fetchCredits(int movieId) async {
    final queryParams = _getDefaultParams('es-CO');
    final response = await _client.get(
      Uri.https(_baseUrl, '/3/movie/$movieId/credits', queryParams),
    );

    if (response.statusCode == 200) {
      final jsonMap = json.decode(response.body) as Map<String, dynamic>;
      return CreditsModel.fromJson(jsonMap);
    } else {
      throw Exception('Failed to load movie credits');
    }
  }

  Future<TrailersModel> fetchTrailers(int movieId) async {
    final queryParams = _getDefaultParams('es-CO');
    final response = await _client.get(
      Uri.https(_baseUrl, '/3/movie/$movieId/videos', queryParams),
    );

    if (response.statusCode == 200) {
      final jsonMap = json.decode(response.body) as Map<String, dynamic>;
      return TrailersModel.fromJson(jsonMap);
    } else {
      throw Exception('Failed to load movie trailers');
    }
  }

  Future<ActorModel> fetchActor(int personId) async {
    final response = await _client.get(
      Uri.https(_baseUrl, '/3/person/$personId', _getDefaultParams('es-CO')),
    );

    if (response.statusCode == 200) {
      final jsonMap = json.decode(response.body) as Map<String, dynamic>;
      return ActorModel.fromJson(jsonMap);
    } else {
      throw Exception('Failed to load actor data');
    }
  }

  Future<ActorCreditsModel> fetchActorCredits(int actorId) async {
    final queryParams = _getDefaultParams('es-CO');
    final response = await _client.get(
      Uri.https(_baseUrl, '/3/person/$actorId/movie_credits', queryParams),
    );

    if (response.statusCode == 200) {
      final jsonMap = json.decode(response.body) as Map<String, dynamic>;
      return ActorCreditsModel.fromJson(jsonMap);
    } else {
      throw Exception('Failed to load actor credit list');
    }
  }

  Map<String, dynamic> _getDefaultParams(String language) =>
      {'api_key': _apiKey, 'language': language};
}
