import 'dart:convert';

import 'package:http/http.dart';
import 'package:movie_list_bloc/models/actor/actor_model.dart';

class MovieClient {
  MovieClient(this._client) {
    _baseUrl = const String.fromEnvironment('TMDB_API_URI');
    _apiKey = const String.fromEnvironment('TMDB_API_KEY');
  }

  late final Client _client;

  late String _baseUrl;
  late String _apiKey;

  Future<ActorModel> fetchActor(int personId, String language) async {
    final response = await _client.get(
      Uri.https(_baseUrl, '/3/person/$personId', _getDefaultParams(language)),
    );

    if (response.statusCode == 200) {
      final jsonMap = json.decode(response.body) as Map<String, dynamic>;
      return ActorModel.fromJson(jsonMap);
    } else {
      throw Exception('Failed to load actor data');
    }
  }

  Future<ActorCreditsModel> fetchActorCredits(
    int actorId,
    String language,
  ) async {
    final queryParams = _getDefaultParams(language);
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
