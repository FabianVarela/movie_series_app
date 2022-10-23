import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_list_bloc/bloc/actor/actor_bloc.dart';
import 'package:movie_list_bloc/bloc/actor/credits/actor_credits_bloc.dart';
import 'package:movie_list_bloc/bloc/detail/credits/movie_credits_bloc.dart';
import 'package:movie_list_bloc/bloc/detail/movie/movie_bloc.dart';
import 'package:movie_list_bloc/bloc/detail/trailers/movie_trailers_bloc.dart';
import 'package:movie_list_bloc/bloc/movie_list/genre/gender_bloc.dart';
import 'package:movie_list_bloc/bloc/movie_list/movie_list_bloc.dart';
import 'package:movie_list_bloc/common/routes.dart';
import 'package:movie_list_bloc/dependency/locator.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => locator<MoviesBloc>()),
        BlocProvider(create: (_) => locator<GenderBloc>()),
        BlocProvider(create: (_) => locator<MovieBloc>()),
        BlocProvider(create: (_) => locator<TrailersBloc>()),
        BlocProvider(create: (_) => locator<CreditsBloc>()),
        BlocProvider(create: (_) => locator<ActorBloc>()),
        BlocProvider(create: (_) => locator<ActorCreditsBloc>()),
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
