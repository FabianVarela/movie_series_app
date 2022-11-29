// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            MovieModel movie, CreditsModel credits, TrailersModel trailers)
        success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            MovieModel movie, CreditsModel credits, TrailersModel trailers)?
        success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            MovieModel movie, CreditsModel credits, TrailersModel trailers)?
        success,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieStateInitial value)? initial,
    TResult? Function(MovieStateLoading value)? loading,
    TResult? Function(MovieStateSuccess value)? success,
    TResult? Function(MovieStateError value)? error,
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
      _$MovieStateCopyWithImpl<$Res, MovieState>;
}

/// @nodoc
class _$MovieStateCopyWithImpl<$Res, $Val extends MovieState>
    implements $MovieStateCopyWith<$Res> {
  _$MovieStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MovieStateInitialCopyWith<$Res> {
  factory _$$MovieStateInitialCopyWith(
          _$MovieStateInitial value, $Res Function(_$MovieStateInitial) then) =
      __$$MovieStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MovieStateInitialCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$MovieStateInitial>
    implements _$$MovieStateInitialCopyWith<$Res> {
  __$$MovieStateInitialCopyWithImpl(
      _$MovieStateInitial _value, $Res Function(_$MovieStateInitial) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MovieStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            MovieModel movie, CreditsModel credits, TrailersModel trailers)
        success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            MovieModel movie, CreditsModel credits, TrailersModel trailers)?
        success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            MovieModel movie, CreditsModel credits, TrailersModel trailers)?
        success,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieStateInitial value)? initial,
    TResult? Function(MovieStateLoading value)? loading,
    TResult? Function(MovieStateSuccess value)? success,
    TResult? Function(MovieStateError value)? error,
  }) {
    return initial?.call(this);
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
abstract class _$$MovieStateLoadingCopyWith<$Res> {
  factory _$$MovieStateLoadingCopyWith(
          _$MovieStateLoading value, $Res Function(_$MovieStateLoading) then) =
      __$$MovieStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MovieStateLoadingCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$MovieStateLoading>
    implements _$$MovieStateLoadingCopyWith<$Res> {
  __$$MovieStateLoadingCopyWithImpl(
      _$MovieStateLoading _value, $Res Function(_$MovieStateLoading) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MovieStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            MovieModel movie, CreditsModel credits, TrailersModel trailers)
        success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            MovieModel movie, CreditsModel credits, TrailersModel trailers)?
        success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            MovieModel movie, CreditsModel credits, TrailersModel trailers)?
        success,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieStateInitial value)? initial,
    TResult? Function(MovieStateLoading value)? loading,
    TResult? Function(MovieStateSuccess value)? success,
    TResult? Function(MovieStateError value)? error,
  }) {
    return loading?.call(this);
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
abstract class _$$MovieStateSuccessCopyWith<$Res> {
  factory _$$MovieStateSuccessCopyWith(
          _$MovieStateSuccess value, $Res Function(_$MovieStateSuccess) then) =
      __$$MovieStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({MovieModel movie, CreditsModel credits, TrailersModel trailers});
}

/// @nodoc
class __$$MovieStateSuccessCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$MovieStateSuccess>
    implements _$$MovieStateSuccessCopyWith<$Res> {
  __$$MovieStateSuccessCopyWithImpl(
      _$MovieStateSuccess _value, $Res Function(_$MovieStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
    Object? credits = null,
    Object? trailers = null,
  }) {
    return _then(_$MovieStateSuccess(
      movie: null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as MovieModel,
      credits: null == credits
          ? _value.credits
          : credits // ignore: cast_nullable_to_non_nullable
              as CreditsModel,
      trailers: null == trailers
          ? _value.trailers
          : trailers // ignore: cast_nullable_to_non_nullable
              as TrailersModel,
    ));
  }
}

/// @nodoc

class _$MovieStateSuccess implements MovieStateSuccess {
  const _$MovieStateSuccess(
      {required this.movie, required this.credits, required this.trailers});

  @override
  final MovieModel movie;
  @override
  final CreditsModel credits;
  @override
  final TrailersModel trailers;

  @override
  String toString() {
    return 'MovieState.success(movie: $movie, credits: $credits, trailers: $trailers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieStateSuccess &&
            (identical(other.movie, movie) || other.movie == movie) &&
            (identical(other.credits, credits) || other.credits == credits) &&
            (identical(other.trailers, trailers) ||
                other.trailers == trailers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movie, credits, trailers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieStateSuccessCopyWith<_$MovieStateSuccess> get copyWith =>
      __$$MovieStateSuccessCopyWithImpl<_$MovieStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            MovieModel movie, CreditsModel credits, TrailersModel trailers)
        success,
    required TResult Function(String message) error,
  }) {
    return success(movie, credits, trailers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            MovieModel movie, CreditsModel credits, TrailersModel trailers)?
        success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(movie, credits, trailers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            MovieModel movie, CreditsModel credits, TrailersModel trailers)?
        success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(movie, credits, trailers);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieStateInitial value)? initial,
    TResult? Function(MovieStateLoading value)? loading,
    TResult? Function(MovieStateSuccess value)? success,
    TResult? Function(MovieStateError value)? error,
  }) {
    return success?.call(this);
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
  const factory MovieStateSuccess(
      {required final MovieModel movie,
      required final CreditsModel credits,
      required final TrailersModel trailers}) = _$MovieStateSuccess;

  MovieModel get movie;
  CreditsModel get credits;
  TrailersModel get trailers;
  @JsonKey(ignore: true)
  _$$MovieStateSuccessCopyWith<_$MovieStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MovieStateErrorCopyWith<$Res> {
  factory _$$MovieStateErrorCopyWith(
          _$MovieStateError value, $Res Function(_$MovieStateError) then) =
      __$$MovieStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MovieStateErrorCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$MovieStateError>
    implements _$$MovieStateErrorCopyWith<$Res> {
  __$$MovieStateErrorCopyWithImpl(
      _$MovieStateError _value, $Res Function(_$MovieStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MovieStateError(
      null == message
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
        (other.runtimeType == runtimeType &&
            other is _$MovieStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieStateErrorCopyWith<_$MovieStateError> get copyWith =>
      __$$MovieStateErrorCopyWithImpl<_$MovieStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            MovieModel movie, CreditsModel credits, TrailersModel trailers)
        success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            MovieModel movie, CreditsModel credits, TrailersModel trailers)?
        success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            MovieModel movie, CreditsModel credits, TrailersModel trailers)?
        success,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieStateInitial value)? initial,
    TResult? Function(MovieStateLoading value)? loading,
    TResult? Function(MovieStateSuccess value)? success,
    TResult? Function(MovieStateError value)? error,
  }) {
    return error?.call(this);
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
  const factory MovieStateError(final String message) = _$MovieStateError;

  String get message;
  @JsonKey(ignore: true)
  _$$MovieStateErrorCopyWith<_$MovieStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
