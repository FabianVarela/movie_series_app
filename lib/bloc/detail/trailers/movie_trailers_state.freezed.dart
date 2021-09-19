// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'movie_trailers_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MovieTrailersStateTearOff {
  const _$MovieTrailersStateTearOff();

  MovieTrailersStateInitial initial() {
    return const MovieTrailersStateInitial();
  }

  MovieTrailersStateLoading loading() {
    return const MovieTrailersStateLoading();
  }

  MovieTrailersStateSuccess success(TrailersModel trailers) {
    return MovieTrailersStateSuccess(
      trailers,
    );
  }

  MovieTrailersStateError error(String message) {
    return MovieTrailersStateError(
      message,
    );
  }
}

/// @nodoc
const $MovieTrailersState = _$MovieTrailersStateTearOff();

/// @nodoc
mixin _$MovieTrailersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TrailersModel trailers) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TrailersModel trailers)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieTrailersStateInitial value) initial,
    required TResult Function(MovieTrailersStateLoading value) loading,
    required TResult Function(MovieTrailersStateSuccess value) success,
    required TResult Function(MovieTrailersStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieTrailersStateInitial value)? initial,
    TResult Function(MovieTrailersStateLoading value)? loading,
    TResult Function(MovieTrailersStateSuccess value)? success,
    TResult Function(MovieTrailersStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieTrailersStateCopyWith<$Res> {
  factory $MovieTrailersStateCopyWith(
          MovieTrailersState value, $Res Function(MovieTrailersState) then) =
      _$MovieTrailersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieTrailersStateCopyWithImpl<$Res>
    implements $MovieTrailersStateCopyWith<$Res> {
  _$MovieTrailersStateCopyWithImpl(this._value, this._then);

  final MovieTrailersState _value;
  // ignore: unused_field
  final $Res Function(MovieTrailersState) _then;
}

/// @nodoc
abstract class $MovieTrailersStateInitialCopyWith<$Res> {
  factory $MovieTrailersStateInitialCopyWith(MovieTrailersStateInitial value,
          $Res Function(MovieTrailersStateInitial) then) =
      _$MovieTrailersStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieTrailersStateInitialCopyWithImpl<$Res>
    extends _$MovieTrailersStateCopyWithImpl<$Res>
    implements $MovieTrailersStateInitialCopyWith<$Res> {
  _$MovieTrailersStateInitialCopyWithImpl(MovieTrailersStateInitial _value,
      $Res Function(MovieTrailersStateInitial) _then)
      : super(_value, (v) => _then(v as MovieTrailersStateInitial));

  @override
  MovieTrailersStateInitial get _value =>
      super._value as MovieTrailersStateInitial;
}

/// @nodoc

class _$MovieTrailersStateInitial implements MovieTrailersStateInitial {
  const _$MovieTrailersStateInitial();

  @override
  String toString() {
    return 'MovieTrailersState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MovieTrailersStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TrailersModel trailers) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TrailersModel trailers)? success,
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
    required TResult Function(MovieTrailersStateInitial value) initial,
    required TResult Function(MovieTrailersStateLoading value) loading,
    required TResult Function(MovieTrailersStateSuccess value) success,
    required TResult Function(MovieTrailersStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieTrailersStateInitial value)? initial,
    TResult Function(MovieTrailersStateLoading value)? loading,
    TResult Function(MovieTrailersStateSuccess value)? success,
    TResult Function(MovieTrailersStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MovieTrailersStateInitial implements MovieTrailersState {
  const factory MovieTrailersStateInitial() = _$MovieTrailersStateInitial;
}

/// @nodoc
abstract class $MovieTrailersStateLoadingCopyWith<$Res> {
  factory $MovieTrailersStateLoadingCopyWith(MovieTrailersStateLoading value,
          $Res Function(MovieTrailersStateLoading) then) =
      _$MovieTrailersStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieTrailersStateLoadingCopyWithImpl<$Res>
    extends _$MovieTrailersStateCopyWithImpl<$Res>
    implements $MovieTrailersStateLoadingCopyWith<$Res> {
  _$MovieTrailersStateLoadingCopyWithImpl(MovieTrailersStateLoading _value,
      $Res Function(MovieTrailersStateLoading) _then)
      : super(_value, (v) => _then(v as MovieTrailersStateLoading));

  @override
  MovieTrailersStateLoading get _value =>
      super._value as MovieTrailersStateLoading;
}

/// @nodoc

class _$MovieTrailersStateLoading implements MovieTrailersStateLoading {
  const _$MovieTrailersStateLoading();

  @override
  String toString() {
    return 'MovieTrailersState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MovieTrailersStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TrailersModel trailers) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TrailersModel trailers)? success,
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
    required TResult Function(MovieTrailersStateInitial value) initial,
    required TResult Function(MovieTrailersStateLoading value) loading,
    required TResult Function(MovieTrailersStateSuccess value) success,
    required TResult Function(MovieTrailersStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieTrailersStateInitial value)? initial,
    TResult Function(MovieTrailersStateLoading value)? loading,
    TResult Function(MovieTrailersStateSuccess value)? success,
    TResult Function(MovieTrailersStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MovieTrailersStateLoading implements MovieTrailersState {
  const factory MovieTrailersStateLoading() = _$MovieTrailersStateLoading;
}

/// @nodoc
abstract class $MovieTrailersStateSuccessCopyWith<$Res> {
  factory $MovieTrailersStateSuccessCopyWith(MovieTrailersStateSuccess value,
          $Res Function(MovieTrailersStateSuccess) then) =
      _$MovieTrailersStateSuccessCopyWithImpl<$Res>;
  $Res call({TrailersModel trailers});
}

/// @nodoc
class _$MovieTrailersStateSuccessCopyWithImpl<$Res>
    extends _$MovieTrailersStateCopyWithImpl<$Res>
    implements $MovieTrailersStateSuccessCopyWith<$Res> {
  _$MovieTrailersStateSuccessCopyWithImpl(MovieTrailersStateSuccess _value,
      $Res Function(MovieTrailersStateSuccess) _then)
      : super(_value, (v) => _then(v as MovieTrailersStateSuccess));

  @override
  MovieTrailersStateSuccess get _value =>
      super._value as MovieTrailersStateSuccess;

  @override
  $Res call({
    Object? trailers = freezed,
  }) {
    return _then(MovieTrailersStateSuccess(
      trailers == freezed
          ? _value.trailers
          : trailers // ignore: cast_nullable_to_non_nullable
              as TrailersModel,
    ));
  }
}

/// @nodoc

class _$MovieTrailersStateSuccess implements MovieTrailersStateSuccess {
  const _$MovieTrailersStateSuccess(this.trailers);

  @override
  final TrailersModel trailers;

  @override
  String toString() {
    return 'MovieTrailersState.success(trailers: $trailers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MovieTrailersStateSuccess &&
            (identical(other.trailers, trailers) ||
                const DeepCollectionEquality()
                    .equals(other.trailers, trailers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(trailers);

  @JsonKey(ignore: true)
  @override
  $MovieTrailersStateSuccessCopyWith<MovieTrailersStateSuccess> get copyWith =>
      _$MovieTrailersStateSuccessCopyWithImpl<MovieTrailersStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TrailersModel trailers) success,
    required TResult Function(String message) error,
  }) {
    return success(trailers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TrailersModel trailers)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(trailers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieTrailersStateInitial value) initial,
    required TResult Function(MovieTrailersStateLoading value) loading,
    required TResult Function(MovieTrailersStateSuccess value) success,
    required TResult Function(MovieTrailersStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieTrailersStateInitial value)? initial,
    TResult Function(MovieTrailersStateLoading value)? loading,
    TResult Function(MovieTrailersStateSuccess value)? success,
    TResult Function(MovieTrailersStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class MovieTrailersStateSuccess implements MovieTrailersState {
  const factory MovieTrailersStateSuccess(TrailersModel trailers) =
      _$MovieTrailersStateSuccess;

  TrailersModel get trailers => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieTrailersStateSuccessCopyWith<MovieTrailersStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieTrailersStateErrorCopyWith<$Res> {
  factory $MovieTrailersStateErrorCopyWith(MovieTrailersStateError value,
          $Res Function(MovieTrailersStateError) then) =
      _$MovieTrailersStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$MovieTrailersStateErrorCopyWithImpl<$Res>
    extends _$MovieTrailersStateCopyWithImpl<$Res>
    implements $MovieTrailersStateErrorCopyWith<$Res> {
  _$MovieTrailersStateErrorCopyWithImpl(MovieTrailersStateError _value,
      $Res Function(MovieTrailersStateError) _then)
      : super(_value, (v) => _then(v as MovieTrailersStateError));

  @override
  MovieTrailersStateError get _value => super._value as MovieTrailersStateError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(MovieTrailersStateError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MovieTrailersStateError implements MovieTrailersStateError {
  const _$MovieTrailersStateError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MovieTrailersState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MovieTrailersStateError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $MovieTrailersStateErrorCopyWith<MovieTrailersStateError> get copyWith =>
      _$MovieTrailersStateErrorCopyWithImpl<MovieTrailersStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TrailersModel trailers) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TrailersModel trailers)? success,
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
    required TResult Function(MovieTrailersStateInitial value) initial,
    required TResult Function(MovieTrailersStateLoading value) loading,
    required TResult Function(MovieTrailersStateSuccess value) success,
    required TResult Function(MovieTrailersStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieTrailersStateInitial value)? initial,
    TResult Function(MovieTrailersStateLoading value)? loading,
    TResult Function(MovieTrailersStateSuccess value)? success,
    TResult Function(MovieTrailersStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MovieTrailersStateError implements MovieTrailersState {
  const factory MovieTrailersStateError(String message) =
      _$MovieTrailersStateError;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieTrailersStateErrorCopyWith<MovieTrailersStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
