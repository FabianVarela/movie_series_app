import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_list_bloc/models/credits_model.dart';
import 'package:movie_list_bloc/models/movie_model.dart';
import 'package:movie_list_bloc/models/movies_model.dart';
import 'package:http/http.dart';
import 'package:movie_list_bloc/models/trailer_model.dart';

class MovieClient {
  final Client _client = Client();

  String _baseUrl;
  String _apiKey;

  MovieClient() {
    _baseUrl = DotEnv().env['API_URL'];
    _apiKey = DotEnv().env['API_KEY'];
  }

  Future<MoviesModel> fetchMovies() async {
    final Response response =
        await _client.get('$_baseUrl/3/movie/popular?api_key=$_apiKey');

    print(response.body);

    if (response.statusCode == 200)
      return MoviesModel.fromJson(json.decode(response.body));
    else
      throw Exception('Failed to load movies');
  }

  Future<MovieModel> fetchMovie(int movieId) async {
    final Response response =
        await _client.get('$_baseUrl/3/movie/$movieId?api_key=$_apiKey');

    print(response.body);

    if (response.statusCode == 200)
      return MovieModel.fromJson(json.decode(response.body));
    else
      throw Exception('Failed to load movie with id $movieId');
  }

  Future<TrailersModel> fetchMovieTrailer(int movieId) async {
    final Response response =
        await _client.get('$_baseUrl/3/movie/$movieId/videos?api_key=$_apiKey');

    print(response.body);

    if (response.statusCode == 200)
      return TrailersModel.fromJson(json.decode(response.body));
    else
      throw Exception('Failed to load movie trailers');
  }

  Future<CreditsModel> fetchCredits(int movieId) async {
    final Response response = await _client
        .get('$_baseUrl/3/movie/$movieId/credits?api_key=$_apiKey');

    print(response.body);

    if (response.statusCode == 200)
      return CreditsModel.fromJson(json.decode(response.body));
    else
      throw Exception('Failed to load movie credits');
  }
}
