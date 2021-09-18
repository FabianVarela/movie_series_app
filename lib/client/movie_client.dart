import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_list_bloc/models/credits_model.dart';
import 'package:movie_list_bloc/models/movie_model.dart';
import 'package:movie_list_bloc/models/movies_model.dart';
import 'package:http/http.dart';
import 'package:movie_list_bloc/models/trailer_model.dart';

class MovieClient {
  MovieClient(this._client) {
    _baseUrl = dotenv.env['API_URL'];
    _apiKey = dotenv.env['API_KEY'];
  }

  late final Client _client;

  late String? _baseUrl;
  late String? _apiKey;

  Future<MoviesModel> fetchMovies() async {
    final response = await _client.get(
      Uri.https(_baseUrl!, '/3/movie/popular', _getApiKeyParam()),
    );

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

  Map<String, dynamic> _getApiKeyParam() =>
      <String, dynamic>{'api_key': _apiKey};
}
