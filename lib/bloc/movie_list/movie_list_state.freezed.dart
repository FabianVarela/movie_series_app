// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'movie_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MovieListStateTearOff {
  const _$MovieListStateTearOff();

  MovieListStateInitial initial() {
    return const MovieListStateInitial();
  }

  MovieListStateLoading loading() {
    return const MovieListStateLoading();
  }

  MovieListStateSuccess success(MoviesModel movies) {
    return MovieListStateSuccess(
      movies,
    );
  }

  MovieListStateError error(String message) {
    return MovieListStateError(
      message,
    );
  }
}

/// @nodoc
const $MovieListState = _$MovieListStateTearOff();

/// @nodoc
mixin _$MovieListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MoviesModel movies) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MoviesModel movies)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieListStateInitial value) initial,
    required TResult Function(MovieListStateLoading value) loading,
    required TResult Function(MovieListStateSuccess value) success,
    required TResult Function(MovieListStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieListStateInitial value)? initial,
    TResult Function(MovieListStateLoading value)? loading,
    TResult Function(MovieListStateSuccess value)? success,
    TResult Function(MovieListStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieListStateCopyWith<$Res> {
  factory $MovieListStateCopyWith(
          MovieListState value, $Res Function(MovieListState) then) =
      _$MovieListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieListStateCopyWithImpl<$Res>
    implements $MovieListStateCopyWith<$Res> {
  _$MovieListStateCopyWithImpl(this._value, this._then);

  final MovieListState _value;
  // ignore: unused_field
  final $Res Function(MovieListState) _then;
}

/// @nodoc
abstract class $MovieListStateInitialCopyWith<$Res> {
  factory $MovieListStateInitialCopyWith(MovieListStateInitial value,
          $Res Function(MovieListStateInitial) then) =
      _$MovieListStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieListStateInitialCopyWithImpl<$Res>
    extends _$MovieListStateCopyWithImpl<$Res>
    implements $MovieListStateInitialCopyWith<$Res> {
  _$MovieListStateInitialCopyWithImpl(
      MovieListStateInitial _value, $Res Function(MovieListStateInitial) _then)
      : super(_value, (v) => _then(v as MovieListStateInitial));

  @override
  MovieListStateInitial get _value => super._value as MovieListStateInitial;
}

/// @nodoc

class _$MovieListStateInitial implements MovieListStateInitial {
  const _$MovieListStateInitial();

  @override
  String toString() {
    return 'MovieListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MovieListStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MoviesModel movies) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MoviesModel movies)? success,
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
    required TResult Function(MovieListStateInitial value) initial,
    required TResult Function(MovieListStateLoading value) loading,
    required TResult Function(MovieListStateSuccess value) success,
    required TResult Function(MovieListStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieListStateInitial value)? initial,
    TResult Function(MovieListStateLoading value)? loading,
    TResult Function(MovieListStateSuccess value)? success,
    TResult Function(MovieListStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MovieListStateInitial implements MovieListState {
  const factory MovieListStateInitial() = _$MovieListStateInitial;
}

/// @nodoc
abstract class $MovieListStateLoadingCopyWith<$Res> {
  factory $MovieListStateLoadingCopyWith(MovieListStateLoading value,
          $Res Function(MovieListStateLoading) then) =
      _$MovieListStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieListStateLoadingCopyWithImpl<$Res>
    extends _$MovieListStateCopyWithImpl<$Res>
    implements $MovieListStateLoadingCopyWith<$Res> {
  _$MovieListStateLoadingCopyWithImpl(
      MovieListStateLoading _value, $Res Function(MovieListStateLoading) _then)
      : super(_value, (v) => _then(v as MovieListStateLoading));

  @override
  MovieListStateLoading get _value => super._value as MovieListStateLoading;
}

/// @nodoc

class _$MovieListStateLoading implements MovieListStateLoading {
  const _$MovieListStateLoading();

  @override
  String toString() {
    return 'MovieListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MovieListStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MoviesModel movies) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MoviesModel movies)? success,
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
    required TResult Function(MovieListStateInitial value) initial,
    required TResult Function(MovieListStateLoading value) loading,
    required TResult Function(MovieListStateSuccess value) success,
    required TResult Function(MovieListStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieListStateInitial value)? initial,
    TResult Function(MovieListStateLoading value)? loading,
    TResult Function(MovieListStateSuccess value)? success,
    TResult Function(MovieListStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MovieListStateLoading implements MovieListState {
  const factory MovieListStateLoading() = _$MovieListStateLoading;
}

/// @nodoc
abstract class $MovieListStateSuccessCopyWith<$Res> {
  factory $MovieListStateSuccessCopyWith(MovieListStateSuccess value,
          $Res Function(MovieListStateSuccess) then) =
      _$MovieListStateSuccessCopyWithImpl<$Res>;
  $Res call({MoviesModel movies});
}

/// @nodoc
class _$MovieListStateSuccessCopyWithImpl<$Res>
    extends _$MovieListStateCopyWithImpl<$Res>
    implements $MovieListStateSuccessCopyWith<$Res> {
  _$MovieListStateSuccessCopyWithImpl(
      MovieListStateSuccess _value, $Res Function(MovieListStateSuccess) _then)
      : super(_value, (v) => _then(v as MovieListStateSuccess));

  @override
  MovieListStateSuccess get _value => super._value as MovieListStateSuccess;

  @override
  $Res call({
    Object? movies = freezed,
  }) {
    return _then(MovieListStateSuccess(
      movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as MoviesModel,
    ));
  }
}

/// @nodoc

class _$MovieListStateSuccess implements MovieListStateSuccess {
  const _$MovieListStateSuccess(this.movies);

  @override
  final MoviesModel movies;

  @override
  String toString() {
    return 'MovieListState.success(movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MovieListStateSuccess &&
            (identical(other.movies, movies) ||
                const DeepCollectionEquality().equals(other.movies, movies)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movies);

  @JsonKey(ignore: true)
  @override
  $MovieListStateSuccessCopyWith<MovieListStateSuccess> get copyWith =>
      _$MovieListStateSuccessCopyWithImpl<MovieListStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MoviesModel movies) success,
    required TResult Function(String message) error,
  }) {
    return success(movies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MoviesModel movies)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(movies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieListStateInitial value) initial,
    required TResult Function(MovieListStateLoading value) loading,
    required TResult Function(MovieListStateSuccess value) success,
    required TResult Function(MovieListStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieListStateInitial value)? initial,
    TResult Function(MovieListStateLoading value)? loading,
    TResult Function(MovieListStateSuccess value)? success,
    TResult Function(MovieListStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class MovieListStateSuccess implements MovieListState {
  const factory MovieListStateSuccess(MoviesModel movies) =
      _$MovieListStateSuccess;

  MoviesModel get movies => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieListStateSuccessCopyWith<MovieListStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieListStateErrorCopyWith<$Res> {
  factory $MovieListStateErrorCopyWith(
          MovieListStateError value, $Res Function(MovieListStateError) then) =
      _$MovieListStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$MovieListStateErrorCopyWithImpl<$Res>
    extends _$MovieListStateCopyWithImpl<$Res>
    implements $MovieListStateErrorCopyWith<$Res> {
  _$MovieListStateErrorCopyWithImpl(
      MovieListStateError _value, $Res Function(MovieListStateError) _then)
      : super(_value, (v) => _then(v as MovieListStateError));

  @override
  MovieListStateError get _value => super._value as MovieListStateError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(MovieListStateError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MovieListStateError implements MovieListStateError {
  const _$MovieListStateError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MovieListState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MovieListStateError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $MovieListStateErrorCopyWith<MovieListStateError> get copyWith =>
      _$MovieListStateErrorCopyWithImpl<MovieListStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MoviesModel movies) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MoviesModel movies)? success,
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
    required TResult Function(MovieListStateInitial value) initial,
    required TResult Function(MovieListStateLoading value) loading,
    required TResult Function(MovieListStateSuccess value) success,
    required TResult Function(MovieListStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieListStateInitial value)? initial,
    TResult Function(MovieListStateLoading value)? loading,
    TResult Function(MovieListStateSuccess value)? success,
    TResult Function(MovieListStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MovieListStateError implements MovieListState {
  const factory MovieListStateError(String message) = _$MovieListStateError;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieListStateErrorCopyWith<MovieListStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
