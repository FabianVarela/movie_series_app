import 'dart:convert';

import 'package:movie_list_bloc/models/item_model.dart';
import 'package:http/http.dart';

class MovieClient {
  Client client = Client();
  final _apiKey = 'ccc1ba91e3751f14805f9a0b47e3d032';

  Future<ItemModel> fetchMovieList() async {
    print("entered");

    final response = await client
        .get("http://api.themoviedb.org/3/movie/popular?api_key=$_apiKey");

    print(response.body.toString());

    if (response.statusCode == 200)
      return ItemModel.fromJson(json.decode(response.body));
    else
      throw Exception('Failed to load post');
  }
}
