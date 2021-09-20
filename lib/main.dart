import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_list_bloc/app.dart';
import 'package:movie_list_bloc/dependency/locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations(
    <DeviceOrientation>[DeviceOrientation.portraitUp],
  );

  setupLocator();
  runApp(const App());
}
