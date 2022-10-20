// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_credits_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreditsModel credits)? success,
    TResult? Function(String message)? error,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieCreditsStateInitial value)? initial,
    TResult? Function(MovieCreditsStateLoading value)? loading,
    TResult? Function(MovieCreditsStateSuccess value)? success,
    TResult? Function(MovieCreditsStateError value)? error,
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
      _$MovieCreditsStateCopyWithImpl<$Res, MovieCreditsState>;
}

/// @nodoc
class _$MovieCreditsStateCopyWithImpl<$Res, $Val extends MovieCreditsState>
    implements $MovieCreditsStateCopyWith<$Res> {
  _$MovieCreditsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MovieCreditsStateInitialCopyWith<$Res> {
  factory _$$MovieCreditsStateInitialCopyWith(_$MovieCreditsStateInitial value,
          $Res Function(_$MovieCreditsStateInitial) then) =
      __$$MovieCreditsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MovieCreditsStateInitialCopyWithImpl<$Res>
    extends _$MovieCreditsStateCopyWithImpl<$Res, _$MovieCreditsStateInitial>
    implements _$$MovieCreditsStateInitialCopyWith<$Res> {
  __$$MovieCreditsStateInitialCopyWithImpl(_$MovieCreditsStateInitial _value,
      $Res Function(_$MovieCreditsStateInitial) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieCreditsStateInitial);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreditsModel credits)? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieCreditsStateInitial value)? initial,
    TResult? Function(MovieCreditsStateLoading value)? loading,
    TResult? Function(MovieCreditsStateSuccess value)? success,
    TResult? Function(MovieCreditsStateError value)? error,
  }) {
    return initial?.call(this);
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
abstract class _$$MovieCreditsStateLoadingCopyWith<$Res> {
  factory _$$MovieCreditsStateLoadingCopyWith(_$MovieCreditsStateLoading value,
          $Res Function(_$MovieCreditsStateLoading) then) =
      __$$MovieCreditsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MovieCreditsStateLoadingCopyWithImpl<$Res>
    extends _$MovieCreditsStateCopyWithImpl<$Res, _$MovieCreditsStateLoading>
    implements _$$MovieCreditsStateLoadingCopyWith<$Res> {
  __$$MovieCreditsStateLoadingCopyWithImpl(_$MovieCreditsStateLoading _value,
      $Res Function(_$MovieCreditsStateLoading) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieCreditsStateLoading);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreditsModel credits)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieCreditsStateInitial value)? initial,
    TResult? Function(MovieCreditsStateLoading value)? loading,
    TResult? Function(MovieCreditsStateSuccess value)? success,
    TResult? Function(MovieCreditsStateError value)? error,
  }) {
    return loading?.call(this);
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
abstract class _$$MovieCreditsStateSuccessCopyWith<$Res> {
  factory _$$MovieCreditsStateSuccessCopyWith(_$MovieCreditsStateSuccess value,
          $Res Function(_$MovieCreditsStateSuccess) then) =
      __$$MovieCreditsStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({CreditsModel credits});
}

/// @nodoc
class __$$MovieCreditsStateSuccessCopyWithImpl<$Res>
    extends _$MovieCreditsStateCopyWithImpl<$Res, _$MovieCreditsStateSuccess>
    implements _$$MovieCreditsStateSuccessCopyWith<$Res> {
  __$$MovieCreditsStateSuccessCopyWithImpl(_$MovieCreditsStateSuccess _value,
      $Res Function(_$MovieCreditsStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credits = null,
  }) {
    return _then(_$MovieCreditsStateSuccess(
      null == credits
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
        (other.runtimeType == runtimeType &&
            other is _$MovieCreditsStateSuccess &&
            (identical(other.credits, credits) || other.credits == credits));
  }

  @override
  int get hashCode => Object.hash(runtimeType, credits);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieCreditsStateSuccessCopyWith<_$MovieCreditsStateSuccess>
      get copyWith =>
          __$$MovieCreditsStateSuccessCopyWithImpl<_$MovieCreditsStateSuccess>(
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreditsModel credits)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(credits);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieCreditsStateInitial value)? initial,
    TResult? Function(MovieCreditsStateLoading value)? loading,
    TResult? Function(MovieCreditsStateSuccess value)? success,
    TResult? Function(MovieCreditsStateError value)? error,
  }) {
    return success?.call(this);
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
  const factory MovieCreditsStateSuccess(final CreditsModel credits) =
      _$MovieCreditsStateSuccess;

  CreditsModel get credits;
  @JsonKey(ignore: true)
  _$$MovieCreditsStateSuccessCopyWith<_$MovieCreditsStateSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MovieCreditsStateErrorCopyWith<$Res> {
  factory _$$MovieCreditsStateErrorCopyWith(_$MovieCreditsStateError value,
          $Res Function(_$MovieCreditsStateError) then) =
      __$$MovieCreditsStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MovieCreditsStateErrorCopyWithImpl<$Res>
    extends _$MovieCreditsStateCopyWithImpl<$Res, _$MovieCreditsStateError>
    implements _$$MovieCreditsStateErrorCopyWith<$Res> {
  __$$MovieCreditsStateErrorCopyWithImpl(_$MovieCreditsStateError _value,
      $Res Function(_$MovieCreditsStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MovieCreditsStateError(
      null == message
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
        (other.runtimeType == runtimeType &&
            other is _$MovieCreditsStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieCreditsStateErrorCopyWith<_$MovieCreditsStateError> get copyWith =>
      __$$MovieCreditsStateErrorCopyWithImpl<_$MovieCreditsStateError>(
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreditsModel credits)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieCreditsStateInitial value)? initial,
    TResult? Function(MovieCreditsStateLoading value)? loading,
    TResult? Function(MovieCreditsStateSuccess value)? success,
    TResult? Function(MovieCreditsStateError value)? error,
  }) {
    return error?.call(this);
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
  const factory MovieCreditsStateError(final String message) =
      _$MovieCreditsStateError;

  String get message;
  @JsonKey(ignore: true)
  _$$MovieCreditsStateErrorCopyWith<_$MovieCreditsStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
