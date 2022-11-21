// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MoviesModel movies, GendersModel genres) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MoviesModel movies, GendersModel genres)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MoviesModel movies, GendersModel genres)? success,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieListStateInitial value)? initial,
    TResult? Function(MovieListStateLoading value)? loading,
    TResult? Function(MovieListStateSuccess value)? success,
    TResult? Function(MovieListStateError value)? error,
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
      _$MovieListStateCopyWithImpl<$Res, MovieListState>;
}

/// @nodoc
class _$MovieListStateCopyWithImpl<$Res, $Val extends MovieListState>
    implements $MovieListStateCopyWith<$Res> {
  _$MovieListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MovieListStateInitialCopyWith<$Res> {
  factory _$$MovieListStateInitialCopyWith(_$MovieListStateInitial value,
          $Res Function(_$MovieListStateInitial) then) =
      __$$MovieListStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MovieListStateInitialCopyWithImpl<$Res>
    extends _$MovieListStateCopyWithImpl<$Res, _$MovieListStateInitial>
    implements _$$MovieListStateInitialCopyWith<$Res> {
  __$$MovieListStateInitialCopyWithImpl(_$MovieListStateInitial _value,
      $Res Function(_$MovieListStateInitial) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MovieListStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MoviesModel movies, GendersModel genres) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MoviesModel movies, GendersModel genres)? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MoviesModel movies, GendersModel genres)? success,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieListStateInitial value)? initial,
    TResult? Function(MovieListStateLoading value)? loading,
    TResult? Function(MovieListStateSuccess value)? success,
    TResult? Function(MovieListStateError value)? error,
  }) {
    return initial?.call(this);
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
abstract class _$$MovieListStateLoadingCopyWith<$Res> {
  factory _$$MovieListStateLoadingCopyWith(_$MovieListStateLoading value,
          $Res Function(_$MovieListStateLoading) then) =
      __$$MovieListStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MovieListStateLoadingCopyWithImpl<$Res>
    extends _$MovieListStateCopyWithImpl<$Res, _$MovieListStateLoading>
    implements _$$MovieListStateLoadingCopyWith<$Res> {
  __$$MovieListStateLoadingCopyWithImpl(_$MovieListStateLoading _value,
      $Res Function(_$MovieListStateLoading) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MovieListStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MoviesModel movies, GendersModel genres) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MoviesModel movies, GendersModel genres)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MoviesModel movies, GendersModel genres)? success,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieListStateInitial value)? initial,
    TResult? Function(MovieListStateLoading value)? loading,
    TResult? Function(MovieListStateSuccess value)? success,
    TResult? Function(MovieListStateError value)? error,
  }) {
    return loading?.call(this);
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
abstract class _$$MovieListStateSuccessCopyWith<$Res> {
  factory _$$MovieListStateSuccessCopyWith(_$MovieListStateSuccess value,
          $Res Function(_$MovieListStateSuccess) then) =
      __$$MovieListStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({MoviesModel movies, GendersModel genres});
}

/// @nodoc
class __$$MovieListStateSuccessCopyWithImpl<$Res>
    extends _$MovieListStateCopyWithImpl<$Res, _$MovieListStateSuccess>
    implements _$$MovieListStateSuccessCopyWith<$Res> {
  __$$MovieListStateSuccessCopyWithImpl(_$MovieListStateSuccess _value,
      $Res Function(_$MovieListStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movies = null,
    Object? genres = null,
  }) {
    return _then(_$MovieListStateSuccess(
      movies: null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as MoviesModel,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as GendersModel,
    ));
  }
}

/// @nodoc

class _$MovieListStateSuccess implements MovieListStateSuccess {
  const _$MovieListStateSuccess({required this.movies, required this.genres});

  @override
  final MoviesModel movies;
  @override
  final GendersModel genres;

  @override
  String toString() {
    return 'MovieListState.success(movies: $movies, genres: $genres)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieListStateSuccess &&
            (identical(other.movies, movies) || other.movies == movies) &&
            (identical(other.genres, genres) || other.genres == genres));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movies, genres);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieListStateSuccessCopyWith<_$MovieListStateSuccess> get copyWith =>
      __$$MovieListStateSuccessCopyWithImpl<_$MovieListStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MoviesModel movies, GendersModel genres) success,
    required TResult Function(String message) error,
  }) {
    return success(movies, genres);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MoviesModel movies, GendersModel genres)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(movies, genres);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MoviesModel movies, GendersModel genres)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(movies, genres);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieListStateInitial value)? initial,
    TResult? Function(MovieListStateLoading value)? loading,
    TResult? Function(MovieListStateSuccess value)? success,
    TResult? Function(MovieListStateError value)? error,
  }) {
    return success?.call(this);
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
  const factory MovieListStateSuccess(
      {required final MoviesModel movies,
      required final GendersModel genres}) = _$MovieListStateSuccess;

  MoviesModel get movies;
  GendersModel get genres;
  @JsonKey(ignore: true)
  _$$MovieListStateSuccessCopyWith<_$MovieListStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MovieListStateErrorCopyWith<$Res> {
  factory _$$MovieListStateErrorCopyWith(_$MovieListStateError value,
          $Res Function(_$MovieListStateError) then) =
      __$$MovieListStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MovieListStateErrorCopyWithImpl<$Res>
    extends _$MovieListStateCopyWithImpl<$Res, _$MovieListStateError>
    implements _$$MovieListStateErrorCopyWith<$Res> {
  __$$MovieListStateErrorCopyWithImpl(
      _$MovieListStateError _value, $Res Function(_$MovieListStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MovieListStateError(
      null == message
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
        (other.runtimeType == runtimeType &&
            other is _$MovieListStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieListStateErrorCopyWith<_$MovieListStateError> get copyWith =>
      __$$MovieListStateErrorCopyWithImpl<_$MovieListStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MoviesModel movies, GendersModel genres) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MoviesModel movies, GendersModel genres)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MoviesModel movies, GendersModel genres)? success,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieListStateInitial value)? initial,
    TResult? Function(MovieListStateLoading value)? loading,
    TResult? Function(MovieListStateSuccess value)? success,
    TResult? Function(MovieListStateError value)? error,
  }) {
    return error?.call(this);
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
  const factory MovieListStateError(final String message) =
      _$MovieListStateError;

  String get message;
  @JsonKey(ignore: true)
  _$$MovieListStateErrorCopyWith<_$MovieListStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
