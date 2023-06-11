// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authorizing,
    required TResult Function() authorized,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authorizing,
    TResult? Function()? authorized,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authorizing,
    TResult Function()? authorized,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_AuthorizingState value) authorizing,
    required TResult Function(_AuthorizedState value) authorized,
    required TResult Function(_FailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_AuthorizingState value)? authorizing,
    TResult? Function(_AuthorizedState value)? authorized,
    TResult? Function(_FailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_AuthorizingState value)? authorizing,
    TResult Function(_AuthorizedState value)? authorized,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialStateCopyWith<$Res> {
  factory _$$_InitialStateCopyWith(
          _$_InitialState value, $Res Function(_$_InitialState) then) =
      __$$_InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_InitialState>
    implements _$$_InitialStateCopyWith<$Res> {
  __$$_InitialStateCopyWithImpl(
      _$_InitialState _value, $Res Function(_$_InitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialState extends _InitialState {
  const _$_InitialState() : super._();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authorizing,
    required TResult Function() authorized,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authorizing,
    TResult? Function()? authorized,
    TResult? Function()? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authorizing,
    TResult Function()? authorized,
    TResult Function()? failure,
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
    required TResult Function(_InitialState value) initial,
    required TResult Function(_AuthorizingState value) authorizing,
    required TResult Function(_AuthorizedState value) authorized,
    required TResult Function(_FailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_AuthorizingState value)? authorizing,
    TResult? Function(_AuthorizedState value)? authorized,
    TResult? Function(_FailureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_AuthorizingState value)? authorizing,
    TResult Function(_AuthorizedState value)? authorized,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState extends LoginState {
  const factory _InitialState() = _$_InitialState;
  const _InitialState._() : super._();
}

/// @nodoc
abstract class _$$_AuthorizingStateCopyWith<$Res> {
  factory _$$_AuthorizingStateCopyWith(
          _$_AuthorizingState value, $Res Function(_$_AuthorizingState) then) =
      __$$_AuthorizingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthorizingStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_AuthorizingState>
    implements _$$_AuthorizingStateCopyWith<$Res> {
  __$$_AuthorizingStateCopyWithImpl(
      _$_AuthorizingState _value, $Res Function(_$_AuthorizingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthorizingState extends _AuthorizingState {
  const _$_AuthorizingState() : super._();

  @override
  String toString() {
    return 'LoginState.authorizing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthorizingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authorizing,
    required TResult Function() authorized,
    required TResult Function() failure,
  }) {
    return authorizing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authorizing,
    TResult? Function()? authorized,
    TResult? Function()? failure,
  }) {
    return authorizing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authorizing,
    TResult Function()? authorized,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (authorizing != null) {
      return authorizing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_AuthorizingState value) authorizing,
    required TResult Function(_AuthorizedState value) authorized,
    required TResult Function(_FailureState value) failure,
  }) {
    return authorizing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_AuthorizingState value)? authorizing,
    TResult? Function(_AuthorizedState value)? authorized,
    TResult? Function(_FailureState value)? failure,
  }) {
    return authorizing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_AuthorizingState value)? authorizing,
    TResult Function(_AuthorizedState value)? authorized,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (authorizing != null) {
      return authorizing(this);
    }
    return orElse();
  }
}

abstract class _AuthorizingState extends LoginState {
  const factory _AuthorizingState() = _$_AuthorizingState;
  const _AuthorizingState._() : super._();
}

/// @nodoc
abstract class _$$_AuthorizedStateCopyWith<$Res> {
  factory _$$_AuthorizedStateCopyWith(
          _$_AuthorizedState value, $Res Function(_$_AuthorizedState) then) =
      __$$_AuthorizedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthorizedStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_AuthorizedState>
    implements _$$_AuthorizedStateCopyWith<$Res> {
  __$$_AuthorizedStateCopyWithImpl(
      _$_AuthorizedState _value, $Res Function(_$_AuthorizedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthorizedState extends _AuthorizedState {
  const _$_AuthorizedState() : super._();

  @override
  String toString() {
    return 'LoginState.authorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthorizedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authorizing,
    required TResult Function() authorized,
    required TResult Function() failure,
  }) {
    return authorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authorizing,
    TResult? Function()? authorized,
    TResult? Function()? failure,
  }) {
    return authorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authorizing,
    TResult Function()? authorized,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_AuthorizingState value) authorizing,
    required TResult Function(_AuthorizedState value) authorized,
    required TResult Function(_FailureState value) failure,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_AuthorizingState value)? authorizing,
    TResult? Function(_AuthorizedState value)? authorized,
    TResult? Function(_FailureState value)? failure,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_AuthorizingState value)? authorizing,
    TResult Function(_AuthorizedState value)? authorized,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class _AuthorizedState extends LoginState {
  const factory _AuthorizedState() = _$_AuthorizedState;
  const _AuthorizedState._() : super._();
}

/// @nodoc
abstract class _$$_FailureStateCopyWith<$Res> {
  factory _$$_FailureStateCopyWith(
          _$_FailureState value, $Res Function(_$_FailureState) then) =
      __$$_FailureStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailureStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_FailureState>
    implements _$$_FailureStateCopyWith<$Res> {
  __$$_FailureStateCopyWithImpl(
      _$_FailureState _value, $Res Function(_$_FailureState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FailureState extends _FailureState {
  const _$_FailureState() : super._();

  @override
  String toString() {
    return 'LoginState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FailureState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authorizing,
    required TResult Function() authorized,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authorizing,
    TResult? Function()? authorized,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authorizing,
    TResult Function()? authorized,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_AuthorizingState value) authorizing,
    required TResult Function(_AuthorizedState value) authorized,
    required TResult Function(_FailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_AuthorizingState value)? authorizing,
    TResult? Function(_AuthorizedState value)? authorized,
    TResult? Function(_FailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_AuthorizingState value)? authorizing,
    TResult Function(_AuthorizedState value)? authorized,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureState extends LoginState {
  const factory _FailureState() = _$_FailureState;
  const _FailureState._() : super._();
}
