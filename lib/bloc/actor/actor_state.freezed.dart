// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'actor_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ActorStateTearOff {
  const _$ActorStateTearOff();

  ActorStateInitial initial() {
    return const ActorStateInitial();
  }

  ActorStateLoading loading() {
    return const ActorStateLoading();
  }

  ActorStateSucess success(ActorModel actor) {
    return ActorStateSucess(
      actor,
    );
  }

  ActorStateError error(String message) {
    return ActorStateError(
      message,
    );
  }
}

/// @nodoc
const $ActorState = _$ActorStateTearOff();

/// @nodoc
mixin _$ActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ActorModel actor) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ActorModel actor)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActorStateInitial value) initial,
    required TResult Function(ActorStateLoading value) loading,
    required TResult Function(ActorStateSucess value) success,
    required TResult Function(ActorStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActorStateInitial value)? initial,
    TResult Function(ActorStateLoading value)? loading,
    TResult Function(ActorStateSucess value)? success,
    TResult Function(ActorStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActorStateCopyWith<$Res> {
  factory $ActorStateCopyWith(
          ActorState value, $Res Function(ActorState) then) =
      _$ActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ActorStateCopyWithImpl<$Res> implements $ActorStateCopyWith<$Res> {
  _$ActorStateCopyWithImpl(this._value, this._then);

  final ActorState _value;
  // ignore: unused_field
  final $Res Function(ActorState) _then;
}

/// @nodoc
abstract class $ActorStateInitialCopyWith<$Res> {
  factory $ActorStateInitialCopyWith(
          ActorStateInitial value, $Res Function(ActorStateInitial) then) =
      _$ActorStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$ActorStateInitialCopyWithImpl<$Res>
    extends _$ActorStateCopyWithImpl<$Res>
    implements $ActorStateInitialCopyWith<$Res> {
  _$ActorStateInitialCopyWithImpl(
      ActorStateInitial _value, $Res Function(ActorStateInitial) _then)
      : super(_value, (v) => _then(v as ActorStateInitial));

  @override
  ActorStateInitial get _value => super._value as ActorStateInitial;
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
    return identical(this, other) || (other is ActorStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ActorModel actor) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ActorModel actor)? success,
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
    required TResult Function(ActorStateSucess value) success,
    required TResult Function(ActorStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActorStateInitial value)? initial,
    TResult Function(ActorStateLoading value)? loading,
    TResult Function(ActorStateSucess value)? success,
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
abstract class $ActorStateLoadingCopyWith<$Res> {
  factory $ActorStateLoadingCopyWith(
          ActorStateLoading value, $Res Function(ActorStateLoading) then) =
      _$ActorStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ActorStateLoadingCopyWithImpl<$Res>
    extends _$ActorStateCopyWithImpl<$Res>
    implements $ActorStateLoadingCopyWith<$Res> {
  _$ActorStateLoadingCopyWithImpl(
      ActorStateLoading _value, $Res Function(ActorStateLoading) _then)
      : super(_value, (v) => _then(v as ActorStateLoading));

  @override
  ActorStateLoading get _value => super._value as ActorStateLoading;
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
    return identical(this, other) || (other is ActorStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ActorModel actor) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ActorModel actor)? success,
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
    required TResult Function(ActorStateSucess value) success,
    required TResult Function(ActorStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActorStateInitial value)? initial,
    TResult Function(ActorStateLoading value)? loading,
    TResult Function(ActorStateSucess value)? success,
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
abstract class $ActorStateSucessCopyWith<$Res> {
  factory $ActorStateSucessCopyWith(
          ActorStateSucess value, $Res Function(ActorStateSucess) then) =
      _$ActorStateSucessCopyWithImpl<$Res>;
  $Res call({ActorModel actor});
}

/// @nodoc
class _$ActorStateSucessCopyWithImpl<$Res>
    extends _$ActorStateCopyWithImpl<$Res>
    implements $ActorStateSucessCopyWith<$Res> {
  _$ActorStateSucessCopyWithImpl(
      ActorStateSucess _value, $Res Function(ActorStateSucess) _then)
      : super(_value, (v) => _then(v as ActorStateSucess));

  @override
  ActorStateSucess get _value => super._value as ActorStateSucess;

  @override
  $Res call({
    Object? actor = freezed,
  }) {
    return _then(ActorStateSucess(
      actor == freezed
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as ActorModel,
    ));
  }
}

/// @nodoc

class _$ActorStateSucess implements ActorStateSucess {
  const _$ActorStateSucess(this.actor);

  @override
  final ActorModel actor;

  @override
  String toString() {
    return 'ActorState.success(actor: $actor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ActorStateSucess &&
            (identical(other.actor, actor) ||
                const DeepCollectionEquality().equals(other.actor, actor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(actor);

  @JsonKey(ignore: true)
  @override
  $ActorStateSucessCopyWith<ActorStateSucess> get copyWith =>
      _$ActorStateSucessCopyWithImpl<ActorStateSucess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ActorModel actor) success,
    required TResult Function(String message) error,
  }) {
    return success(actor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ActorModel actor)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(actor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActorStateInitial value) initial,
    required TResult Function(ActorStateLoading value) loading,
    required TResult Function(ActorStateSucess value) success,
    required TResult Function(ActorStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActorStateInitial value)? initial,
    TResult Function(ActorStateLoading value)? loading,
    TResult Function(ActorStateSucess value)? success,
    TResult Function(ActorStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ActorStateSucess implements ActorState {
  const factory ActorStateSucess(ActorModel actor) = _$ActorStateSucess;

  ActorModel get actor => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActorStateSucessCopyWith<ActorStateSucess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActorStateErrorCopyWith<$Res> {
  factory $ActorStateErrorCopyWith(
          ActorStateError value, $Res Function(ActorStateError) then) =
      _$ActorStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ActorStateErrorCopyWithImpl<$Res> extends _$ActorStateCopyWithImpl<$Res>
    implements $ActorStateErrorCopyWith<$Res> {
  _$ActorStateErrorCopyWithImpl(
      ActorStateError _value, $Res Function(ActorStateError) _then)
      : super(_value, (v) => _then(v as ActorStateError));

  @override
  ActorStateError get _value => super._value as ActorStateError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ActorStateError(
      message == freezed
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
        (other is ActorStateError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ActorStateErrorCopyWith<ActorStateError> get copyWith =>
      _$ActorStateErrorCopyWithImpl<ActorStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ActorModel actor) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ActorModel actor)? success,
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
    required TResult Function(ActorStateSucess value) success,
    required TResult Function(ActorStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActorStateInitial value)? initial,
    TResult Function(ActorStateLoading value)? loading,
    TResult Function(ActorStateSucess value)? success,
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
  const factory ActorStateError(String message) = _$ActorStateError;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActorStateErrorCopyWith<ActorStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
