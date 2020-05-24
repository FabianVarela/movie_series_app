import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_list_bloc/ui/movie_list.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations(
      <DeviceOrientation>[DeviceOrientation.portraitUp]);

  await DotEnv().load('.env');

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie list',
      theme: ThemeData(
        textTheme: GoogleFonts.ubuntuTextTheme(Theme.of(context).textTheme),
      ),
      home: MovieList(),
    );
  }
}
