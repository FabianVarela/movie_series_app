// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gender_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GendersModel genres)? success,
    TResult? Function(String message)? error,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenderStateInitial value)? initial,
    TResult? Function(GenderStateLoading value)? loading,
    TResult? Function(GenderStateSuccess value)? success,
    TResult? Function(GenderStateError value)? error,
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
      _$GenderStateCopyWithImpl<$Res, GenderState>;
}

/// @nodoc
class _$GenderStateCopyWithImpl<$Res, $Val extends GenderState>
    implements $GenderStateCopyWith<$Res> {
  _$GenderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GenderStateInitialCopyWith<$Res> {
  factory _$$GenderStateInitialCopyWith(_$GenderStateInitial value,
          $Res Function(_$GenderStateInitial) then) =
      __$$GenderStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GenderStateInitialCopyWithImpl<$Res>
    extends _$GenderStateCopyWithImpl<$Res, _$GenderStateInitial>
    implements _$$GenderStateInitialCopyWith<$Res> {
  __$$GenderStateInitialCopyWithImpl(
      _$GenderStateInitial _value, $Res Function(_$GenderStateInitial) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GenderStateInitial);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GendersModel genres)? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenderStateInitial value)? initial,
    TResult? Function(GenderStateLoading value)? loading,
    TResult? Function(GenderStateSuccess value)? success,
    TResult? Function(GenderStateError value)? error,
  }) {
    return initial?.call(this);
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
abstract class _$$GenderStateLoadingCopyWith<$Res> {
  factory _$$GenderStateLoadingCopyWith(_$GenderStateLoading value,
          $Res Function(_$GenderStateLoading) then) =
      __$$GenderStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GenderStateLoadingCopyWithImpl<$Res>
    extends _$GenderStateCopyWithImpl<$Res, _$GenderStateLoading>
    implements _$$GenderStateLoadingCopyWith<$Res> {
  __$$GenderStateLoadingCopyWithImpl(
      _$GenderStateLoading _value, $Res Function(_$GenderStateLoading) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GenderStateLoading);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GendersModel genres)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenderStateInitial value)? initial,
    TResult? Function(GenderStateLoading value)? loading,
    TResult? Function(GenderStateSuccess value)? success,
    TResult? Function(GenderStateError value)? error,
  }) {
    return loading?.call(this);
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
abstract class _$$GenderStateSuccessCopyWith<$Res> {
  factory _$$GenderStateSuccessCopyWith(_$GenderStateSuccess value,
          $Res Function(_$GenderStateSuccess) then) =
      __$$GenderStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({GendersModel genres});
}

/// @nodoc
class __$$GenderStateSuccessCopyWithImpl<$Res>
    extends _$GenderStateCopyWithImpl<$Res, _$GenderStateSuccess>
    implements _$$GenderStateSuccessCopyWith<$Res> {
  __$$GenderStateSuccessCopyWithImpl(
      _$GenderStateSuccess _value, $Res Function(_$GenderStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genres = null,
  }) {
    return _then(_$GenderStateSuccess(
      null == genres
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
        (other.runtimeType == runtimeType &&
            other is _$GenderStateSuccess &&
            (identical(other.genres, genres) || other.genres == genres));
  }

  @override
  int get hashCode => Object.hash(runtimeType, genres);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenderStateSuccessCopyWith<_$GenderStateSuccess> get copyWith =>
      __$$GenderStateSuccessCopyWithImpl<_$GenderStateSuccess>(
          this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GendersModel genres)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(genres);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenderStateInitial value)? initial,
    TResult? Function(GenderStateLoading value)? loading,
    TResult? Function(GenderStateSuccess value)? success,
    TResult? Function(GenderStateError value)? error,
  }) {
    return success?.call(this);
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
  const factory GenderStateSuccess(final GendersModel genres) =
      _$GenderStateSuccess;

  GendersModel get genres;
  @JsonKey(ignore: true)
  _$$GenderStateSuccessCopyWith<_$GenderStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenderStateErrorCopyWith<$Res> {
  factory _$$GenderStateErrorCopyWith(
          _$GenderStateError value, $Res Function(_$GenderStateError) then) =
      __$$GenderStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$GenderStateErrorCopyWithImpl<$Res>
    extends _$GenderStateCopyWithImpl<$Res, _$GenderStateError>
    implements _$$GenderStateErrorCopyWith<$Res> {
  __$$GenderStateErrorCopyWithImpl(
      _$GenderStateError _value, $Res Function(_$GenderStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$GenderStateError(
      null == message
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
        (other.runtimeType == runtimeType &&
            other is _$GenderStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenderStateErrorCopyWith<_$GenderStateError> get copyWith =>
      __$$GenderStateErrorCopyWithImpl<_$GenderStateError>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GendersModel genres)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenderStateInitial value)? initial,
    TResult? Function(GenderStateLoading value)? loading,
    TResult? Function(GenderStateSuccess value)? success,
    TResult? Function(GenderStateError value)? error,
  }) {
    return error?.call(this);
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
  const factory GenderStateError(final String message) = _$GenderStateError;

  String get message;
  @JsonKey(ignore: true)
  _$$GenderStateErrorCopyWith<_$GenderStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
