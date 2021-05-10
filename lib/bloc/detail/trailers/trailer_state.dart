import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:movie_list_bloc/models/trailer_model.dart';

@immutable
abstract class TrailersState extends Equatable {
  const TrailersState();

  @override
  List<Object> get props => [];
}

class TrailersInitialState extends TrailersState {}

class TrailersLoadingState extends TrailersState {}

class TrailersSuccessState extends TrailersState {
  const TrailersSuccessState(this.trailers);

  final TrailersModel trailers;

  @override
  List<Object> get props => [trailers];
}

class TrailersErrorState extends TrailersState {
  const TrailersErrorState(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}
