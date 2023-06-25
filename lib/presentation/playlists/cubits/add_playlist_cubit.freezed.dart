// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_playlist_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddPlaylistState {
  String get name => throw _privateConstructorUsedError;
  FetchingState get fetchingState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddPlaylistStateCopyWith<AddPlaylistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPlaylistStateCopyWith<$Res> {
  factory $AddPlaylistStateCopyWith(
          AddPlaylistState value, $Res Function(AddPlaylistState) then) =
      _$AddPlaylistStateCopyWithImpl<$Res, AddPlaylistState>;
  @useResult
  $Res call({String name, FetchingState fetchingState});
}

/// @nodoc
class _$AddPlaylistStateCopyWithImpl<$Res, $Val extends AddPlaylistState>
    implements $AddPlaylistStateCopyWith<$Res> {
  _$AddPlaylistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fetchingState = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fetchingState: null == fetchingState
          ? _value.fetchingState
          : fetchingState // ignore: cast_nullable_to_non_nullable
              as FetchingState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddPlaylistStateCopyWith<$Res>
    implements $AddPlaylistStateCopyWith<$Res> {
  factory _$$_AddPlaylistStateCopyWith(
          _$_AddPlaylistState value, $Res Function(_$_AddPlaylistState) then) =
      __$$_AddPlaylistStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, FetchingState fetchingState});
}

/// @nodoc
class __$$_AddPlaylistStateCopyWithImpl<$Res>
    extends _$AddPlaylistStateCopyWithImpl<$Res, _$_AddPlaylistState>
    implements _$$_AddPlaylistStateCopyWith<$Res> {
  __$$_AddPlaylistStateCopyWithImpl(
      _$_AddPlaylistState _value, $Res Function(_$_AddPlaylistState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fetchingState = null,
  }) {
    return _then(_$_AddPlaylistState(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fetchingState: null == fetchingState
          ? _value.fetchingState
          : fetchingState // ignore: cast_nullable_to_non_nullable
              as FetchingState,
    ));
  }
}

/// @nodoc

class _$_AddPlaylistState extends _AddPlaylistState {
  const _$_AddPlaylistState(
      {this.name = '', this.fetchingState = FetchingState.idle})
      : super._();

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final FetchingState fetchingState;

  @override
  String toString() {
    return 'AddPlaylistState(name: $name, fetchingState: $fetchingState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddPlaylistState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fetchingState, fetchingState) ||
                other.fetchingState == fetchingState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, fetchingState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddPlaylistStateCopyWith<_$_AddPlaylistState> get copyWith =>
      __$$_AddPlaylistStateCopyWithImpl<_$_AddPlaylistState>(this, _$identity);
}

abstract class _AddPlaylistState extends AddPlaylistState {
  const factory _AddPlaylistState(
      {final String name,
      final FetchingState fetchingState}) = _$_AddPlaylistState;
  const _AddPlaylistState._() : super._();

  @override
  String get name;
  @override
  FetchingState get fetchingState;
  @override
  @JsonKey(ignore: true)
  _$$_AddPlaylistStateCopyWith<_$_AddPlaylistState> get copyWith =>
      throw _privateConstructorUsedError;
}
