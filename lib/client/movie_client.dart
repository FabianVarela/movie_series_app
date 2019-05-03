import 'dart:convert';

import 'package:movie_list_bloc/models/item_model.dart';
import 'package:http/http.dart';
import 'package:movie_list_bloc/models/trailer_model.dart';

class MovieClient {
  Client client = Client();
  final _apiKey = 'ccc1ba91e3751f14805f9a0b47e3d032';
  final _baseUrl = "http://api.themoviedb.org/3/movie";

  Future<ItemModel> fetchMovieList() async {
    print("entered");

    final response = await client.get("$_baseUrl/popular?api_key=$_apiKey");

    print(response.body.toString());

    if (response.statusCode == 200)
      return ItemModel.fromJson(json.decode(response.body));
    else
      throw Exception('Failed to load post');
  }

  Future<TrailerModel> fetchTrailer(int movieId) async {
    final response =
        await client.get("$_baseUrl/$movieId/videos?api_key=$_apiKey");

    if (response.statusCode == 200)
      return TrailerModel.fromJson(json.decode(response.body));
    else
      throw Exception('Failed to load trailers');
  }
}
