// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'movie_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MovieStateTearOff {
  const _$MovieStateTearOff();

  MovieStateInitial initial() {
    return const MovieStateInitial();
  }

  MovieStateLoading loading() {
    return const MovieStateLoading();
  }

  MovieStateSuccess success(MovieModel movie) {
    return MovieStateSuccess(
      movie,
    );
  }

  MovieStateError error(String message) {
    return MovieStateError(
      message,
    );
  }
}

/// @nodoc
const $MovieState = _$MovieStateTearOff();

/// @nodoc
mixin _$MovieState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MovieModel movie) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MovieModel movie)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieStateInitial value) initial,
    required TResult Function(MovieStateLoading value) loading,
    required TResult Function(MovieStateSuccess value) success,
    required TResult Function(MovieStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieStateInitial value)? initial,
    TResult Function(MovieStateLoading value)? loading,
    TResult Function(MovieStateSuccess value)? success,
    TResult Function(MovieStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieStateCopyWith<$Res> {
  factory $MovieStateCopyWith(
          MovieState value, $Res Function(MovieState) then) =
      _$MovieStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieStateCopyWithImpl<$Res> implements $MovieStateCopyWith<$Res> {
  _$MovieStateCopyWithImpl(this._value, this._then);

  final MovieState _value;
  // ignore: unused_field
  final $Res Function(MovieState) _then;
}

/// @nodoc
abstract class $MovieStateInitialCopyWith<$Res> {
  factory $MovieStateInitialCopyWith(
          MovieStateInitial value, $Res Function(MovieStateInitial) then) =
      _$MovieStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieStateInitialCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res>
    implements $MovieStateInitialCopyWith<$Res> {
  _$MovieStateInitialCopyWithImpl(
      MovieStateInitial _value, $Res Function(MovieStateInitial) _then)
      : super(_value, (v) => _then(v as MovieStateInitial));

  @override
  MovieStateInitial get _value => super._value as MovieStateInitial;
}

/// @nodoc

class _$MovieStateInitial implements MovieStateInitial {
  const _$MovieStateInitial();

  @override
  String toString() {
    return 'MovieState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MovieStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MovieModel movie) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MovieModel movie)? success,
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
    required TResult Function(MovieStateInitial value) initial,
    required TResult Function(MovieStateLoading value) loading,
    required TResult Function(MovieStateSuccess value) success,
    required TResult Function(MovieStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieStateInitial value)? initial,
    TResult Function(MovieStateLoading value)? loading,
    TResult Function(MovieStateSuccess value)? success,
    TResult Function(MovieStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MovieStateInitial implements MovieState {
  const factory MovieStateInitial() = _$MovieStateInitial;
}

/// @nodoc
abstract class $MovieStateLoadingCopyWith<$Res> {
  factory $MovieStateLoadingCopyWith(
          MovieStateLoading value, $Res Function(MovieStateLoading) then) =
      _$MovieStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieStateLoadingCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res>
    implements $MovieStateLoadingCopyWith<$Res> {
  _$MovieStateLoadingCopyWithImpl(
      MovieStateLoading _value, $Res Function(MovieStateLoading) _then)
      : super(_value, (v) => _then(v as MovieStateLoading));

  @override
  MovieStateLoading get _value => super._value as MovieStateLoading;
}

/// @nodoc

class _$MovieStateLoading implements MovieStateLoading {
  const _$MovieStateLoading();

  @override
  String toString() {
    return 'MovieState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MovieStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MovieModel movie) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MovieModel movie)? success,
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
    required TResult Function(MovieStateInitial value) initial,
    required TResult Function(MovieStateLoading value) loading,
    required TResult Function(MovieStateSuccess value) success,
    required TResult Function(MovieStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieStateInitial value)? initial,
    TResult Function(MovieStateLoading value)? loading,
    TResult Function(MovieStateSuccess value)? success,
    TResult Function(MovieStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MovieStateLoading implements MovieState {
  const factory MovieStateLoading() = _$MovieStateLoading;
}

/// @nodoc
abstract class $MovieStateSuccessCopyWith<$Res> {
  factory $MovieStateSuccessCopyWith(
          MovieStateSuccess value, $Res Function(MovieStateSuccess) then) =
      _$MovieStateSuccessCopyWithImpl<$Res>;
  $Res call({MovieModel movie});
}

/// @nodoc
class _$MovieStateSuccessCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res>
    implements $MovieStateSuccessCopyWith<$Res> {
  _$MovieStateSuccessCopyWithImpl(
      MovieStateSuccess _value, $Res Function(MovieStateSuccess) _then)
      : super(_value, (v) => _then(v as MovieStateSuccess));

  @override
  MovieStateSuccess get _value => super._value as MovieStateSuccess;

  @override
  $Res call({
    Object? movie = freezed,
  }) {
    return _then(MovieStateSuccess(
      movie == freezed
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as MovieModel,
    ));
  }
}

/// @nodoc

class _$MovieStateSuccess implements MovieStateSuccess {
  const _$MovieStateSuccess(this.movie);

  @override
  final MovieModel movie;

  @override
  String toString() {
    return 'MovieState.success(movie: $movie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MovieStateSuccess &&
            (identical(other.movie, movie) ||
                const DeepCollectionEquality().equals(other.movie, movie)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movie);

  @JsonKey(ignore: true)
  @override
  $MovieStateSuccessCopyWith<MovieStateSuccess> get copyWith =>
      _$MovieStateSuccessCopyWithImpl<MovieStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MovieModel movie) success,
    required TResult Function(String message) error,
  }) {
    return success(movie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MovieModel movie)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieStateInitial value) initial,
    required TResult Function(MovieStateLoading value) loading,
    required TResult Function(MovieStateSuccess value) success,
    required TResult Function(MovieStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieStateInitial value)? initial,
    TResult Function(MovieStateLoading value)? loading,
    TResult Function(MovieStateSuccess value)? success,
    TResult Function(MovieStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class MovieStateSuccess implements MovieState {
  const factory MovieStateSuccess(MovieModel movie) = _$MovieStateSuccess;

  MovieModel get movie => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieStateSuccessCopyWith<MovieStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieStateErrorCopyWith<$Res> {
  factory $MovieStateErrorCopyWith(
          MovieStateError value, $Res Function(MovieStateError) then) =
      _$MovieStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$MovieStateErrorCopyWithImpl<$Res> extends _$MovieStateCopyWithImpl<$Res>
    implements $MovieStateErrorCopyWith<$Res> {
  _$MovieStateErrorCopyWithImpl(
      MovieStateError _value, $Res Function(MovieStateError) _then)
      : super(_value, (v) => _then(v as MovieStateError));

  @override
  MovieStateError get _value => super._value as MovieStateError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(MovieStateError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MovieStateError implements MovieStateError {
  const _$MovieStateError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MovieState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MovieStateError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $MovieStateErrorCopyWith<MovieStateError> get copyWith =>
      _$MovieStateErrorCopyWithImpl<MovieStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MovieModel movie) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MovieModel movie)? success,
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
    required TResult Function(MovieStateInitial value) initial,
    required TResult Function(MovieStateLoading value) loading,
    required TResult Function(MovieStateSuccess value) success,
    required TResult Function(MovieStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieStateInitial value)? initial,
    TResult Function(MovieStateLoading value)? loading,
    TResult Function(MovieStateSuccess value)? success,
    TResult Function(MovieStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MovieStateError implements MovieState {
  const factory MovieStateError(String message) = _$MovieStateError;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieStateErrorCopyWith<MovieStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
