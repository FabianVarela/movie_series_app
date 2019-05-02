import 'package:flutter/material.dart';
import 'package:movie_list_bloc/ui/movie_list.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MovieList();
  }
}
