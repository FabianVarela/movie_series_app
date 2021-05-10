import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:movie_list_bloc/bloc/movie_list/movie_list_bloc.dart';
import 'package:movie_list_bloc/bloc/movie_detail/movie_details_bloc.dart';
import 'package:movie_list_bloc/client/movie_client.dart';
import 'package:movie_list_bloc/repository/movie_repository.dart';

final locator = GetIt.I;

void setupLocator() {
  locator.registerLazySingleton(() => Client());
  locator.registerLazySingleton(() => MovieClient(locator<Client>()));
  locator.registerLazySingleton(() => MovieRepository(locator<MovieClient>()));

  locator.registerLazySingleton(() => MoviesBloc(locator<MovieRepository>()));
  locator.registerLazySingleton(() => MovieBloc(locator<MovieRepository>()));
  locator.registerLazySingleton(() => TrailersBloc(locator<MovieRepository>()));
  locator.registerLazySingleton(() => CreditsBloc(locator<MovieRepository>()));
}
