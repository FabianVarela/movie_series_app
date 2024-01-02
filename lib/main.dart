import 'package:flutter/material.dart';
import 'package:movie_list_bloc/app.dart';
import 'package:movie_list_bloc/bootstrap.dart';

Future<void> main() async {
  await bootstrap(() => const App());
}
