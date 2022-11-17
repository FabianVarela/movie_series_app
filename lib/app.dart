import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:movie_list_bloc/client/movie_client.dart';
import 'package:movie_list_bloc/common/routes.dart';
import 'package:movie_list_bloc/repository/movie_repository.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (_) => MovieClient(Client()),
        ),
        RepositoryProvider(
          create: (ctx) => MovieRepository(ctx.read<MovieClient>()),
        ),
      ],
      child: MaterialApp.router(
        title: 'Movie list',
        routerConfig: movieRouter,
        theme: ThemeData(
          textTheme: GoogleFonts.ubuntuTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
      ),
    );
  }
}
