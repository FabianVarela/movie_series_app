// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'gender_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GenderStateTearOff {
  const _$GenderStateTearOff();

  GenderStateInitial initial() {
    return const GenderStateInitial();
  }

  GenderStateLoading loading() {
    return const GenderStateLoading();
  }

  GenderStateSuccess success(GendersModel genres) {
    return GenderStateSuccess(
      genres,
    );
  }

  GenderStateError error(String message) {
    return GenderStateError(
      message,
    );
  }
}

/// @nodoc
const $GenderState = _$GenderStateTearOff();

/// @nodoc
mixin _$GenderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GendersModel genres) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GendersModel genres)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenderStateInitial value) initial,
    required TResult Function(GenderStateLoading value) loading,
    required TResult Function(GenderStateSuccess value) success,
    required TResult Function(GenderStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenderStateInitial value)? initial,
    TResult Function(GenderStateLoading value)? loading,
    TResult Function(GenderStateSuccess value)? success,
    TResult Function(GenderStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenderStateCopyWith<$Res> {
  factory $GenderStateCopyWith(
          GenderState value, $Res Function(GenderState) then) =
      _$GenderStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GenderStateCopyWithImpl<$Res> implements $GenderStateCopyWith<$Res> {
  _$GenderStateCopyWithImpl(this._value, this._then);

  final GenderState _value;
  // ignore: unused_field
  final $Res Function(GenderState) _then;
}

/// @nodoc
abstract class $GenderStateInitialCopyWith<$Res> {
  factory $GenderStateInitialCopyWith(
          GenderStateInitial value, $Res Function(GenderStateInitial) then) =
      _$GenderStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$GenderStateInitialCopyWithImpl<$Res>
    extends _$GenderStateCopyWithImpl<$Res>
    implements $GenderStateInitialCopyWith<$Res> {
  _$GenderStateInitialCopyWithImpl(
      GenderStateInitial _value, $Res Function(GenderStateInitial) _then)
      : super(_value, (v) => _then(v as GenderStateInitial));

  @override
  GenderStateInitial get _value => super._value as GenderStateInitial;
}

/// @nodoc

class _$GenderStateInitial implements GenderStateInitial {
  const _$GenderStateInitial();

  @override
  String toString() {
    return 'GenderState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GenderStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GendersModel genres) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GendersModel genres)? success,
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
    required TResult Function(GenderStateInitial value) initial,
    required TResult Function(GenderStateLoading value) loading,
    required TResult Function(GenderStateSuccess value) success,
    required TResult Function(GenderStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenderStateInitial value)? initial,
    TResult Function(GenderStateLoading value)? loading,
    TResult Function(GenderStateSuccess value)? success,
    TResult Function(GenderStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GenderStateInitial implements GenderState {
  const factory GenderStateInitial() = _$GenderStateInitial;
}

/// @nodoc
abstract class $GenderStateLoadingCopyWith<$Res> {
  factory $GenderStateLoadingCopyWith(
          GenderStateLoading value, $Res Function(GenderStateLoading) then) =
      _$GenderStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$GenderStateLoadingCopyWithImpl<$Res>
    extends _$GenderStateCopyWithImpl<$Res>
    implements $GenderStateLoadingCopyWith<$Res> {
  _$GenderStateLoadingCopyWithImpl(
      GenderStateLoading _value, $Res Function(GenderStateLoading) _then)
      : super(_value, (v) => _then(v as GenderStateLoading));

  @override
  GenderStateLoading get _value => super._value as GenderStateLoading;
}

/// @nodoc

class _$GenderStateLoading implements GenderStateLoading {
  const _$GenderStateLoading();

  @override
  String toString() {
    return 'GenderState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GenderStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GendersModel genres) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GendersModel genres)? success,
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
    required TResult Function(GenderStateInitial value) initial,
    required TResult Function(GenderStateLoading value) loading,
    required TResult Function(GenderStateSuccess value) success,
    required TResult Function(GenderStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenderStateInitial value)? initial,
    TResult Function(GenderStateLoading value)? loading,
    TResult Function(GenderStateSuccess value)? success,
    TResult Function(GenderStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GenderStateLoading implements GenderState {
  const factory GenderStateLoading() = _$GenderStateLoading;
}

/// @nodoc
abstract class $GenderStateSuccessCopyWith<$Res> {
  factory $GenderStateSuccessCopyWith(
          GenderStateSuccess value, $Res Function(GenderStateSuccess) then) =
      _$GenderStateSuccessCopyWithImpl<$Res>;
  $Res call({GendersModel genres});
}

/// @nodoc
class _$GenderStateSuccessCopyWithImpl<$Res>
    extends _$GenderStateCopyWithImpl<$Res>
    implements $GenderStateSuccessCopyWith<$Res> {
  _$GenderStateSuccessCopyWithImpl(
      GenderStateSuccess _value, $Res Function(GenderStateSuccess) _then)
      : super(_value, (v) => _then(v as GenderStateSuccess));

  @override
  GenderStateSuccess get _value => super._value as GenderStateSuccess;

  @override
  $Res call({
    Object? genres = freezed,
  }) {
    return _then(GenderStateSuccess(
      genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as GendersModel,
    ));
  }
}

/// @nodoc

class _$GenderStateSuccess implements GenderStateSuccess {
  const _$GenderStateSuccess(this.genres);

  @override
  final GendersModel genres;

  @override
  String toString() {
    return 'GenderState.success(genres: $genres)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GenderStateSuccess &&
            (identical(other.genres, genres) ||
                const DeepCollectionEquality().equals(other.genres, genres)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(genres);

  @JsonKey(ignore: true)
  @override
  $GenderStateSuccessCopyWith<GenderStateSuccess> get copyWith =>
      _$GenderStateSuccessCopyWithImpl<GenderStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GendersModel genres) success,
    required TResult Function(String message) error,
  }) {
    return success(genres);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GendersModel genres)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(genres);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenderStateInitial value) initial,
    required TResult Function(GenderStateLoading value) loading,
    required TResult Function(GenderStateSuccess value) success,
    required TResult Function(GenderStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenderStateInitial value)? initial,
    TResult Function(GenderStateLoading value)? loading,
    TResult Function(GenderStateSuccess value)? success,
    TResult Function(GenderStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class GenderStateSuccess implements GenderState {
  const factory GenderStateSuccess(GendersModel genres) = _$GenderStateSuccess;

  GendersModel get genres => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenderStateSuccessCopyWith<GenderStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenderStateErrorCopyWith<$Res> {
  factory $GenderStateErrorCopyWith(
          GenderStateError value, $Res Function(GenderStateError) then) =
      _$GenderStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$GenderStateErrorCopyWithImpl<$Res>
    extends _$GenderStateCopyWithImpl<$Res>
    implements $GenderStateErrorCopyWith<$Res> {
  _$GenderStateErrorCopyWithImpl(
      GenderStateError _value, $Res Function(GenderStateError) _then)
      : super(_value, (v) => _then(v as GenderStateError));

  @override
  GenderStateError get _value => super._value as GenderStateError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(GenderStateError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GenderStateError implements GenderStateError {
  const _$GenderStateError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'GenderState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GenderStateError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $GenderStateErrorCopyWith<GenderStateError> get copyWith =>
      _$GenderStateErrorCopyWithImpl<GenderStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GendersModel genres) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GendersModel genres)? success,
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
    required TResult Function(GenderStateInitial value) initial,
    required TResult Function(GenderStateLoading value) loading,
    required TResult Function(GenderStateSuccess value) success,
    required TResult Function(GenderStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenderStateInitial value)? initial,
    TResult Function(GenderStateLoading value)? loading,
    TResult Function(GenderStateSuccess value)? success,
    TResult Function(GenderStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GenderStateError implements GenderState {
  const factory GenderStateError(String message) = _$GenderStateError;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenderStateErrorCopyWith<GenderStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
