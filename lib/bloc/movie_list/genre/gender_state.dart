import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_list_bloc/models/genre_model.dart';

part 'gender_state.freezed.dart';

@freezed
class GenderState with _$GenderState {
  const factory GenderState.initial() = GenderStateInitial;

  const factory GenderState.loading() = GenderStateLoading;

  const factory GenderState.success(GenresModel genres) = GenderStateSuccess;

  const factory GenderState.error(String message) = GenderStateError;
}
