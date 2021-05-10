import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:movie_list_bloc/models/credits_model.dart';

@immutable
abstract class CreditsState extends Equatable {
  const CreditsState();

  @override
  List<Object> get props => [];
}

class CreditsInitialState extends CreditsState {}

class CreditsLoadingState extends CreditsState {}

class CreditsSuccessState extends CreditsState {
  const CreditsSuccessState(this.credits);

  final CreditsModel credits;

  @override
  List<Object> get props => [credits];
}

class CreditsErrorState extends CreditsState {
  const CreditsErrorState(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}
