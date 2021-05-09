import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_list_bloc/bloc/movie_bloc.dart';
import 'package:movie_list_bloc/bloc/movie_details_bloc.dart';
import 'package:movie_list_bloc/dependency/locator.dart';
import 'package:movie_list_bloc/ui/movie_list.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => locator<MoviesBloc>()),
        BlocProvider(create: (_) => locator<MovieBloc>()),
        BlocProvider(create: (_) => locator<TrailersBloc>()),
        BlocProvider(create: (_) => locator<CreditsBloc>()),
      ],
      child: MaterialApp(
        title: 'Movie list',
        theme: ThemeData(
          textTheme: GoogleFonts.ubuntuTextTheme(Theme.of(context).textTheme),
        ),
        home: MovieList(),
      ),
    );
  }
}
