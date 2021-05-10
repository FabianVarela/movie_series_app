import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:movie_list_bloc/models/movie_model.dart';

@immutable
abstract class MovieState extends Equatable {
  const MovieState();

  @override
  List<Object> get props => [];
}

class MovieInitialState extends MovieState {}

class MovieLoadingState extends MovieState {}

class MovieSuccessState extends MovieState {
  const MovieSuccessState(this.movie);

  final MovieModel movie;

  @override
  List<Object> get props => [movie];
}

class MovieErrorState extends MovieState {
  const MovieErrorState(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}
