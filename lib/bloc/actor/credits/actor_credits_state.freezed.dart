// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'actor_credits_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ActorCreditsStateTearOff {
  const _$ActorCreditsStateTearOff();

  ActorCreditsStateInitial initial() {
    return const ActorCreditsStateInitial();
  }

  ActorCreditsStateLoading loading() {
    return const ActorCreditsStateLoading();
  }

  ActorCreditsStateSuccess success(ActorCreditsModel credits) {
    return ActorCreditsStateSuccess(
      credits,
    );
  }

  ActorCreditsStateError error(String message) {
    return ActorCreditsStateError(
      message,
    );
  }
}

/// @nodoc
const $ActorCreditsState = _$ActorCreditsStateTearOff();

/// @nodoc
mixin _$ActorCreditsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ActorCreditsModel credits) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ActorCreditsModel credits)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActorCreditsStateInitial value) initial,
    required TResult Function(ActorCreditsStateLoading value) loading,
    required TResult Function(ActorCreditsStateSuccess value) success,
    required TResult Function(ActorCreditsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActorCreditsStateInitial value)? initial,
    TResult Function(ActorCreditsStateLoading value)? loading,
    TResult Function(ActorCreditsStateSuccess value)? success,
    TResult Function(ActorCreditsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActorCreditsStateCopyWith<$Res> {
  factory $ActorCreditsStateCopyWith(
          ActorCreditsState value, $Res Function(ActorCreditsState) then) =
      _$ActorCreditsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ActorCreditsStateCopyWithImpl<$Res>
    implements $ActorCreditsStateCopyWith<$Res> {
  _$ActorCreditsStateCopyWithImpl(this._value, this._then);

  final ActorCreditsState _value;
  // ignore: unused_field
  final $Res Function(ActorCreditsState) _then;
}

/// @nodoc
abstract class $ActorCreditsStateInitialCopyWith<$Res> {
  factory $ActorCreditsStateInitialCopyWith(ActorCreditsStateInitial value,
          $Res Function(ActorCreditsStateInitial) then) =
      _$ActorCreditsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$ActorCreditsStateInitialCopyWithImpl<$Res>
    extends _$ActorCreditsStateCopyWithImpl<$Res>
    implements $ActorCreditsStateInitialCopyWith<$Res> {
  _$ActorCreditsStateInitialCopyWithImpl(ActorCreditsStateInitial _value,
      $Res Function(ActorCreditsStateInitial) _then)
      : super(_value, (v) => _then(v as ActorCreditsStateInitial));

  @override
  ActorCreditsStateInitial get _value =>
      super._value as ActorCreditsStateInitial;
}

/// @nodoc

class _$ActorCreditsStateInitial implements ActorCreditsStateInitial {
  const _$ActorCreditsStateInitial();

  @override
  String toString() {
    return 'ActorCreditsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ActorCreditsStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ActorCreditsModel credits) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ActorCreditsModel credits)? success,
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
    required TResult Function(ActorCreditsStateInitial value) initial,
    required TResult Function(ActorCreditsStateLoading value) loading,
    required TResult Function(ActorCreditsStateSuccess value) success,
    required TResult Function(ActorCreditsStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActorCreditsStateInitial value)? initial,
    TResult Function(ActorCreditsStateLoading value)? loading,
    TResult Function(ActorCreditsStateSuccess value)? success,
    TResult Function(ActorCreditsStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ActorCreditsStateInitial implements ActorCreditsState {
  const factory ActorCreditsStateInitial() = _$ActorCreditsStateInitial;
}

/// @nodoc
abstract class $ActorCreditsStateLoadingCopyWith<$Res> {
  factory $ActorCreditsStateLoadingCopyWith(ActorCreditsStateLoading value,
          $Res Function(ActorCreditsStateLoading) then) =
      _$ActorCreditsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ActorCreditsStateLoadingCopyWithImpl<$Res>
    extends _$ActorCreditsStateCopyWithImpl<$Res>
    implements $ActorCreditsStateLoadingCopyWith<$Res> {
  _$ActorCreditsStateLoadingCopyWithImpl(ActorCreditsStateLoading _value,
      $Res Function(ActorCreditsStateLoading) _then)
      : super(_value, (v) => _then(v as ActorCreditsStateLoading));

  @override
  ActorCreditsStateLoading get _value =>
      super._value as ActorCreditsStateLoading;
}

/// @nodoc

class _$ActorCreditsStateLoading implements ActorCreditsStateLoading {
  const _$ActorCreditsStateLoading();

  @override
  String toString() {
    return 'ActorCreditsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ActorCreditsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ActorCreditsModel credits) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ActorCreditsModel credits)? success,
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
    required TResult Function(ActorCreditsStateInitial value) initial,
    required TResult Function(ActorCreditsStateLoading value) loading,
    required TResult Function(ActorCreditsStateSuccess value) success,
    required TResult Function(ActorCreditsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActorCreditsStateInitial value)? initial,
    TResult Function(ActorCreditsStateLoading value)? loading,
    TResult Function(ActorCreditsStateSuccess value)? success,
    TResult Function(ActorCreditsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ActorCreditsStateLoading implements ActorCreditsState {
  const factory ActorCreditsStateLoading() = _$ActorCreditsStateLoading;
}

/// @nodoc
abstract class $ActorCreditsStateSuccessCopyWith<$Res> {
  factory $ActorCreditsStateSuccessCopyWith(ActorCreditsStateSuccess value,
          $Res Function(ActorCreditsStateSuccess) then) =
      _$ActorCreditsStateSuccessCopyWithImpl<$Res>;
  $Res call({ActorCreditsModel credits});
}

/// @nodoc
class _$ActorCreditsStateSuccessCopyWithImpl<$Res>
    extends _$ActorCreditsStateCopyWithImpl<$Res>
    implements $ActorCreditsStateSuccessCopyWith<$Res> {
  _$ActorCreditsStateSuccessCopyWithImpl(ActorCreditsStateSuccess _value,
      $Res Function(ActorCreditsStateSuccess) _then)
      : super(_value, (v) => _then(v as ActorCreditsStateSuccess));

  @override
  ActorCreditsStateSuccess get _value =>
      super._value as ActorCreditsStateSuccess;

  @override
  $Res call({
    Object? credits = freezed,
  }) {
    return _then(ActorCreditsStateSuccess(
      credits == freezed
          ? _value.credits
          : credits // ignore: cast_nullable_to_non_nullable
              as ActorCreditsModel,
    ));
  }
}

/// @nodoc

class _$ActorCreditsStateSuccess implements ActorCreditsStateSuccess {
  const _$ActorCreditsStateSuccess(this.credits);

  @override
  final ActorCreditsModel credits;

  @override
  String toString() {
    return 'ActorCreditsState.success(credits: $credits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ActorCreditsStateSuccess &&
            (identical(other.credits, credits) ||
                const DeepCollectionEquality().equals(other.credits, credits)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(credits);

  @JsonKey(ignore: true)
  @override
  $ActorCreditsStateSuccessCopyWith<ActorCreditsStateSuccess> get copyWith =>
      _$ActorCreditsStateSuccessCopyWithImpl<ActorCreditsStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ActorCreditsModel credits) success,
    required TResult Function(String message) error,
  }) {
    return success(credits);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ActorCreditsModel credits)? success,
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
    required TResult Function(ActorCreditsStateInitial value) initial,
    required TResult Function(ActorCreditsStateLoading value) loading,
    required TResult Function(ActorCreditsStateSuccess value) success,
    required TResult Function(ActorCreditsStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActorCreditsStateInitial value)? initial,
    TResult Function(ActorCreditsStateLoading value)? loading,
    TResult Function(ActorCreditsStateSuccess value)? success,
    TResult Function(ActorCreditsStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ActorCreditsStateSuccess implements ActorCreditsState {
  const factory ActorCreditsStateSuccess(ActorCreditsModel credits) =
      _$ActorCreditsStateSuccess;

  ActorCreditsModel get credits => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActorCreditsStateSuccessCopyWith<ActorCreditsStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActorCreditsStateErrorCopyWith<$Res> {
  factory $ActorCreditsStateErrorCopyWith(ActorCreditsStateError value,
          $Res Function(ActorCreditsStateError) then) =
      _$ActorCreditsStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ActorCreditsStateErrorCopyWithImpl<$Res>
    extends _$ActorCreditsStateCopyWithImpl<$Res>
    implements $ActorCreditsStateErrorCopyWith<$Res> {
  _$ActorCreditsStateErrorCopyWithImpl(ActorCreditsStateError _value,
      $Res Function(ActorCreditsStateError) _then)
      : super(_value, (v) => _then(v as ActorCreditsStateError));

  @override
  ActorCreditsStateError get _value => super._value as ActorCreditsStateError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ActorCreditsStateError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ActorCreditsStateError implements ActorCreditsStateError {
  const _$ActorCreditsStateError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ActorCreditsState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ActorCreditsStateError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ActorCreditsStateErrorCopyWith<ActorCreditsStateError> get copyWith =>
      _$ActorCreditsStateErrorCopyWithImpl<ActorCreditsStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ActorCreditsModel credits) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ActorCreditsModel credits)? success,
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
    required TResult Function(ActorCreditsStateInitial value) initial,
    required TResult Function(ActorCreditsStateLoading value) loading,
    required TResult Function(ActorCreditsStateSuccess value) success,
    required TResult Function(ActorCreditsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActorCreditsStateInitial value)? initial,
    TResult Function(ActorCreditsStateLoading value)? loading,
    TResult Function(ActorCreditsStateSuccess value)? success,
    TResult Function(ActorCreditsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ActorCreditsStateError implements ActorCreditsState {
  const factory ActorCreditsStateError(String message) =
      _$ActorCreditsStateError;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActorCreditsStateErrorCopyWith<ActorCreditsStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
