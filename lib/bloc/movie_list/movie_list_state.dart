import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:movie_list_bloc/models/movies_model.dart';

@immutable
abstract class MovieListState extends Equatable {
  const MovieListState();

  @override
  List<Object> get props => [];
}

class MovieListInitialState extends MovieListState {}

class MovieListLoadingState extends MovieListState {}

class MovieListSuccessState extends MovieListState {
  const MovieListSuccessState(this.movies);

  final MoviesModel movies;

  @override
  List<Object> get props => [movies];
}

class MovieListErrorState extends MovieListState {
  const MovieListErrorState(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}
