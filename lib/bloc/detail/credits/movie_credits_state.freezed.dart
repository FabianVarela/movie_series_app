// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'movie_credits_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MovieCreditsStateTearOff {
  const _$MovieCreditsStateTearOff();

  MovieCreditsStateInitial initial() {
    return const MovieCreditsStateInitial();
  }

  MovieCreditsStateLoading loading() {
    return const MovieCreditsStateLoading();
  }

  MovieCreditsStateSuccess success(CreditsModel credits) {
    return MovieCreditsStateSuccess(
      credits,
    );
  }

  MovieCreditsStateError error(String message) {
    return MovieCreditsStateError(
      message,
    );
  }
}

/// @nodoc
const $MovieCreditsState = _$MovieCreditsStateTearOff();

/// @nodoc
mixin _$MovieCreditsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CreditsModel credits) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreditsModel credits)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieCreditsStateInitial value) initial,
    required TResult Function(MovieCreditsStateLoading value) loading,
    required TResult Function(MovieCreditsStateSuccess value) success,
    required TResult Function(MovieCreditsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieCreditsStateInitial value)? initial,
    TResult Function(MovieCreditsStateLoading value)? loading,
    TResult Function(MovieCreditsStateSuccess value)? success,
    TResult Function(MovieCreditsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCreditsStateCopyWith<$Res> {
  factory $MovieCreditsStateCopyWith(
          MovieCreditsState value, $Res Function(MovieCreditsState) then) =
      _$MovieCreditsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieCreditsStateCopyWithImpl<$Res>
    implements $MovieCreditsStateCopyWith<$Res> {
  _$MovieCreditsStateCopyWithImpl(this._value, this._then);

  final MovieCreditsState _value;
  // ignore: unused_field
  final $Res Function(MovieCreditsState) _then;
}

/// @nodoc
abstract class $MovieCreditsStateInitialCopyWith<$Res> {
  factory $MovieCreditsStateInitialCopyWith(MovieCreditsStateInitial value,
          $Res Function(MovieCreditsStateInitial) then) =
      _$MovieCreditsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieCreditsStateInitialCopyWithImpl<$Res>
    extends _$MovieCreditsStateCopyWithImpl<$Res>
    implements $MovieCreditsStateInitialCopyWith<$Res> {
  _$MovieCreditsStateInitialCopyWithImpl(MovieCreditsStateInitial _value,
      $Res Function(MovieCreditsStateInitial) _then)
      : super(_value, (v) => _then(v as MovieCreditsStateInitial));

  @override
  MovieCreditsStateInitial get _value =>
      super._value as MovieCreditsStateInitial;
}

/// @nodoc

class _$MovieCreditsStateInitial implements MovieCreditsStateInitial {
  const _$MovieCreditsStateInitial();

  @override
  String toString() {
    return 'MovieCreditsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MovieCreditsStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CreditsModel credits) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreditsModel credits)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieCreditsStateInitial value) initial,
    required TResult Function(MovieCreditsStateLoading value) loading,
    required TResult Function(MovieCreditsStateSuccess value) success,
    required TResult Function(MovieCreditsStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieCreditsStateInitial value)? initial,
    TResult Function(MovieCreditsStateLoading value)? loading,
    TResult Function(MovieCreditsStateSuccess value)? success,
    TResult Function(MovieCreditsStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MovieCreditsStateInitial implements MovieCreditsState {
  const factory MovieCreditsStateInitial() = _$MovieCreditsStateInitial;
}

/// @nodoc
abstract class $MovieCreditsStateLoadingCopyWith<$Res> {
  factory $MovieCreditsStateLoadingCopyWith(MovieCreditsStateLoading value,
          $Res Function(MovieCreditsStateLoading) then) =
      _$MovieCreditsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieCreditsStateLoadingCopyWithImpl<$Res>
    extends _$MovieCreditsStateCopyWithImpl<$Res>
    implements $MovieCreditsStateLoadingCopyWith<$Res> {
  _$MovieCreditsStateLoadingCopyWithImpl(MovieCreditsStateLoading _value,
      $Res Function(MovieCreditsStateLoading) _then)
      : super(_value, (v) => _then(v as MovieCreditsStateLoading));

  @override
  MovieCreditsStateLoading get _value =>
      super._value as MovieCreditsStateLoading;
}

/// @nodoc

class _$MovieCreditsStateLoading implements MovieCreditsStateLoading {
  const _$MovieCreditsStateLoading();

  @override
  String toString() {
    return 'MovieCreditsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MovieCreditsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CreditsModel credits) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreditsModel credits)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieCreditsStateInitial value) initial,
    required TResult Function(MovieCreditsStateLoading value) loading,
    required TResult Function(MovieCreditsStateSuccess value) success,
    required TResult Function(MovieCreditsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieCreditsStateInitial value)? initial,
    TResult Function(MovieCreditsStateLoading value)? loading,
    TResult Function(MovieCreditsStateSuccess value)? success,
    TResult Function(MovieCreditsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MovieCreditsStateLoading implements MovieCreditsState {
  const factory MovieCreditsStateLoading() = _$MovieCreditsStateLoading;
}

/// @nodoc
abstract class $MovieCreditsStateSuccessCopyWith<$Res> {
  factory $MovieCreditsStateSuccessCopyWith(MovieCreditsStateSuccess value,
          $Res Function(MovieCreditsStateSuccess) then) =
      _$MovieCreditsStateSuccessCopyWithImpl<$Res>;
  $Res call({CreditsModel credits});
}

/// @nodoc
class _$MovieCreditsStateSuccessCopyWithImpl<$Res>
    extends _$MovieCreditsStateCopyWithImpl<$Res>
    implements $MovieCreditsStateSuccessCopyWith<$Res> {
  _$MovieCreditsStateSuccessCopyWithImpl(MovieCreditsStateSuccess _value,
      $Res Function(MovieCreditsStateSuccess) _then)
      : super(_value, (v) => _then(v as MovieCreditsStateSuccess));

  @override
  MovieCreditsStateSuccess get _value =>
      super._value as MovieCreditsStateSuccess;

  @override
  $Res call({
    Object? credits = freezed,
  }) {
    return _then(MovieCreditsStateSuccess(
      credits == freezed
          ? _value.credits
          : credits // ignore: cast_nullable_to_non_nullable
              as CreditsModel,
    ));
  }
}

/// @nodoc

class _$MovieCreditsStateSuccess implements MovieCreditsStateSuccess {
  const _$MovieCreditsStateSuccess(this.credits);

  @override
  final CreditsModel credits;

  @override
  String toString() {
    return 'MovieCreditsState.success(credits: $credits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MovieCreditsStateSuccess &&
            (identical(other.credits, credits) ||
                const DeepCollectionEquality().equals(other.credits, credits)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(credits);

  @JsonKey(ignore: true)
  @override
  $MovieCreditsStateSuccessCopyWith<MovieCreditsStateSuccess> get copyWith =>
      _$MovieCreditsStateSuccessCopyWithImpl<MovieCreditsStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CreditsModel credits) success,
    required TResult Function(String message) error,
  }) {
    return success(credits);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreditsModel credits)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(credits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieCreditsStateInitial value) initial,
    required TResult Function(MovieCreditsStateLoading value) loading,
    required TResult Function(MovieCreditsStateSuccess value) success,
    required TResult Function(MovieCreditsStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieCreditsStateInitial value)? initial,
    TResult Function(MovieCreditsStateLoading value)? loading,
    TResult Function(MovieCreditsStateSuccess value)? success,
    TResult Function(MovieCreditsStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class MovieCreditsStateSuccess implements MovieCreditsState {
  const factory MovieCreditsStateSuccess(CreditsModel credits) =
      _$MovieCreditsStateSuccess;

  CreditsModel get credits => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCreditsStateSuccessCopyWith<MovieCreditsStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCreditsStateErrorCopyWith<$Res> {
  factory $MovieCreditsStateErrorCopyWith(MovieCreditsStateError value,
          $Res Function(MovieCreditsStateError) then) =
      _$MovieCreditsStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$MovieCreditsStateErrorCopyWithImpl<$Res>
    extends _$MovieCreditsStateCopyWithImpl<$Res>
    implements $MovieCreditsStateErrorCopyWith<$Res> {
  _$MovieCreditsStateErrorCopyWithImpl(MovieCreditsStateError _value,
      $Res Function(MovieCreditsStateError) _then)
      : super(_value, (v) => _then(v as MovieCreditsStateError));

  @override
  MovieCreditsStateError get _value => super._value as MovieCreditsStateError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(MovieCreditsStateError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MovieCreditsStateError implements MovieCreditsStateError {
  const _$MovieCreditsStateError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MovieCreditsState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MovieCreditsStateError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $MovieCreditsStateErrorCopyWith<MovieCreditsStateError> get copyWith =>
      _$MovieCreditsStateErrorCopyWithImpl<MovieCreditsStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CreditsModel credits) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreditsModel credits)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieCreditsStateInitial value) initial,
    required TResult Function(MovieCreditsStateLoading value) loading,
    required TResult Function(MovieCreditsStateSuccess value) success,
    required TResult Function(MovieCreditsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieCreditsStateInitial value)? initial,
    TResult Function(MovieCreditsStateLoading value)? loading,
    TResult Function(MovieCreditsStateSuccess value)? success,
    TResult Function(MovieCreditsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MovieCreditsStateError implements MovieCreditsState {
  const factory MovieCreditsStateError(String message) =
      _$MovieCreditsStateError;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCreditsStateErrorCopyWith<MovieCreditsStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
