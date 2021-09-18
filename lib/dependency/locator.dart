import 'package:get_it/get_it.dart';
import 'package:http/http.dart';

import 'package:movie_list_bloc/bloc/detail/credits/movie_credits_bloc.dart';
import 'package:movie_list_bloc/bloc/detail/trailers/movie_trailers_bloc.dart';
import 'package:movie_list_bloc/bloc/movie_list/movie_list_bloc.dart';
import 'package:movie_list_bloc/bloc/detail/movie/movie_bloc.dart';

import 'package:movie_list_bloc/client/movie_client.dart';

import 'package:movie_list_bloc/repository/movie_repository.dart';

final locator = GetIt.I;

void setupLocator() {
  locator
    ..registerLazySingleton(() => Client())
    ..registerLazySingleton(() => MovieClient(locator<Client>()))
    ..registerLazySingleton(() => MovieRepository(locator<MovieClient>()))
    ..registerLazySingleton(() => MoviesBloc(locator<MovieRepository>()))
    ..registerLazySingleton(() => MovieBloc(locator<MovieRepository>()))
    ..registerLazySingleton(() => TrailersBloc(locator<MovieRepository>()))
    ..registerLazySingleton(() => CreditsBloc(locator<MovieRepository>()));
}
