// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'actor_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ActorModel actor, ActorCreditsModel credits)
        success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ActorModel actor, ActorCreditsModel credits)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ActorModel actor, ActorCreditsModel credits)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActorStateInitial value) initial,
    required TResult Function(ActorStateLoading value) loading,
    required TResult Function(ActorStateSuccess value) success,
    required TResult Function(ActorStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ActorStateInitial value)? initial,
    TResult? Function(ActorStateLoading value)? loading,
    TResult? Function(ActorStateSuccess value)? success,
    TResult? Function(ActorStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActorStateInitial value)? initial,
    TResult Function(ActorStateLoading value)? loading,
    TResult Function(ActorStateSuccess value)? success,
    TResult Function(ActorStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActorStateCopyWith<$Res> {
  factory $ActorStateCopyWith(
          ActorState value, $Res Function(ActorState) then) =
      _$ActorStateCopyWithImpl<$Res, ActorState>;
}

/// @nodoc
class _$ActorStateCopyWithImpl<$Res, $Val extends ActorState>
    implements $ActorStateCopyWith<$Res> {
  _$ActorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ActorStateInitialCopyWith<$Res> {
  factory _$$ActorStateInitialCopyWith(
          _$ActorStateInitial value, $Res Function(_$ActorStateInitial) then) =
      __$$ActorStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActorStateInitialCopyWithImpl<$Res>
    extends _$ActorStateCopyWithImpl<$Res, _$ActorStateInitial>
    implements _$$ActorStateInitialCopyWith<$Res> {
  __$$ActorStateInitialCopyWithImpl(
      _$ActorStateInitial _value, $Res Function(_$ActorStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActorStateInitial implements ActorStateInitial {
  const _$ActorStateInitial();

  @override
  String toString() {
    return 'ActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ActorStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ActorModel actor, ActorCreditsModel credits)
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
    TResult? Function(ActorModel actor, ActorCreditsModel credits)? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ActorModel actor, ActorCreditsModel credits)? success,
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
    required TResult Function(ActorStateInitial value) initial,
    required TResult Function(ActorStateLoading value) loading,
    required TResult Function(ActorStateSuccess value) success,
    required TResult Function(ActorStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ActorStateInitial value)? initial,
    TResult? Function(ActorStateLoading value)? loading,
    TResult? Function(ActorStateSuccess value)? success,
    TResult? Function(ActorStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActorStateInitial value)? initial,
    TResult Function(ActorStateLoading value)? loading,
    TResult Function(ActorStateSuccess value)? success,
    TResult Function(ActorStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ActorStateInitial implements ActorState {
  const factory ActorStateInitial() = _$ActorStateInitial;
}

/// @nodoc
abstract class _$$ActorStateLoadingCopyWith<$Res> {
  factory _$$ActorStateLoadingCopyWith(
          _$ActorStateLoading value, $Res Function(_$ActorStateLoading) then) =
      __$$ActorStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActorStateLoadingCopyWithImpl<$Res>
    extends _$ActorStateCopyWithImpl<$Res, _$ActorStateLoading>
    implements _$$ActorStateLoadingCopyWith<$Res> {
  __$$ActorStateLoadingCopyWithImpl(
      _$ActorStateLoading _value, $Res Function(_$ActorStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActorStateLoading implements ActorStateLoading {
  const _$ActorStateLoading();

  @override
  String toString() {
    return 'ActorState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ActorStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ActorModel actor, ActorCreditsModel credits)
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
    TResult? Function(ActorModel actor, ActorCreditsModel credits)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ActorModel actor, ActorCreditsModel credits)? success,
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
    required TResult Function(ActorStateInitial value) initial,
    required TResult Function(ActorStateLoading value) loading,
    required TResult Function(ActorStateSuccess value) success,
    required TResult Function(ActorStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ActorStateInitial value)? initial,
    TResult? Function(ActorStateLoading value)? loading,
    TResult? Function(ActorStateSuccess value)? success,
    TResult? Function(ActorStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActorStateInitial value)? initial,
    TResult Function(ActorStateLoading value)? loading,
    TResult Function(ActorStateSuccess value)? success,
    TResult Function(ActorStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ActorStateLoading implements ActorState {
  const factory ActorStateLoading() = _$ActorStateLoading;
}

/// @nodoc
abstract class _$$ActorStateSuccessCopyWith<$Res> {
  factory _$$ActorStateSuccessCopyWith(
          _$ActorStateSuccess value, $Res Function(_$ActorStateSuccess) then) =
      __$$ActorStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({ActorModel actor, ActorCreditsModel credits});
}

/// @nodoc
class __$$ActorStateSuccessCopyWithImpl<$Res>
    extends _$ActorStateCopyWithImpl<$Res, _$ActorStateSuccess>
    implements _$$ActorStateSuccessCopyWith<$Res> {
  __$$ActorStateSuccessCopyWithImpl(
      _$ActorStateSuccess _value, $Res Function(_$ActorStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actor = null,
    Object? credits = null,
  }) {
    return _then(_$ActorStateSuccess(
      actor: null == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as ActorModel,
      credits: null == credits
          ? _value.credits
          : credits // ignore: cast_nullable_to_non_nullable
              as ActorCreditsModel,
    ));
  }
}

/// @nodoc

class _$ActorStateSuccess implements ActorStateSuccess {
  const _$ActorStateSuccess({required this.actor, required this.credits});

  @override
  final ActorModel actor;
  @override
  final ActorCreditsModel credits;

  @override
  String toString() {
    return 'ActorState.success(actor: $actor, credits: $credits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActorStateSuccess &&
            (identical(other.actor, actor) || other.actor == actor) &&
            (identical(other.credits, credits) || other.credits == credits));
  }

  @override
  int get hashCode => Object.hash(runtimeType, actor, credits);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActorStateSuccessCopyWith<_$ActorStateSuccess> get copyWith =>
      __$$ActorStateSuccessCopyWithImpl<_$ActorStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ActorModel actor, ActorCreditsModel credits)
        success,
    required TResult Function(String message) error,
  }) {
    return success(actor, credits);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ActorModel actor, ActorCreditsModel credits)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(actor, credits);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ActorModel actor, ActorCreditsModel credits)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(actor, credits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActorStateInitial value) initial,
    required TResult Function(ActorStateLoading value) loading,
    required TResult Function(ActorStateSuccess value) success,
    required TResult Function(ActorStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ActorStateInitial value)? initial,
    TResult? Function(ActorStateLoading value)? loading,
    TResult? Function(ActorStateSuccess value)? success,
    TResult? Function(ActorStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActorStateInitial value)? initial,
    TResult Function(ActorStateLoading value)? loading,
    TResult Function(ActorStateSuccess value)? success,
    TResult Function(ActorStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ActorStateSuccess implements ActorState {
  const factory ActorStateSuccess(
      {required final ActorModel actor,
      required final ActorCreditsModel credits}) = _$ActorStateSuccess;

  ActorModel get actor;
  ActorCreditsModel get credits;
  @JsonKey(ignore: true)
  _$$ActorStateSuccessCopyWith<_$ActorStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActorStateErrorCopyWith<$Res> {
  factory _$$ActorStateErrorCopyWith(
          _$ActorStateError value, $Res Function(_$ActorStateError) then) =
      __$$ActorStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ActorStateErrorCopyWithImpl<$Res>
    extends _$ActorStateCopyWithImpl<$Res, _$ActorStateError>
    implements _$$ActorStateErrorCopyWith<$Res> {
  __$$ActorStateErrorCopyWithImpl(
      _$ActorStateError _value, $Res Function(_$ActorStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ActorStateError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ActorStateError implements ActorStateError {
  const _$ActorStateError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ActorState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActorStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActorStateErrorCopyWith<_$ActorStateError> get copyWith =>
      __$$ActorStateErrorCopyWithImpl<_$ActorStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ActorModel actor, ActorCreditsModel credits)
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
    TResult? Function(ActorModel actor, ActorCreditsModel credits)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ActorModel actor, ActorCreditsModel credits)? success,
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
    required TResult Function(ActorStateInitial value) initial,
    required TResult Function(ActorStateLoading value) loading,
    required TResult Function(ActorStateSuccess value) success,
    required TResult Function(ActorStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ActorStateInitial value)? initial,
    TResult? Function(ActorStateLoading value)? loading,
    TResult? Function(ActorStateSuccess value)? success,
    TResult? Function(ActorStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActorStateInitial value)? initial,
    TResult Function(ActorStateLoading value)? loading,
    TResult Function(ActorStateSuccess value)? success,
    TResult Function(ActorStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ActorStateError implements ActorState {
  const factory ActorStateError(final String message) = _$ActorStateError;

  String get message;
  @JsonKey(ignore: true)
  _$$ActorStateErrorCopyWith<_$ActorStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
