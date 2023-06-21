// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_with_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlaylistWithState {
  PlaylistEntity get playlist => throw _privateConstructorUsedError;
  FetchingState get state => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaylistWithStateCopyWith<PlaylistWithState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistWithStateCopyWith<$Res> {
  factory $PlaylistWithStateCopyWith(
          PlaylistWithState value, $Res Function(PlaylistWithState) then) =
      _$PlaylistWithStateCopyWithImpl<$Res, PlaylistWithState>;
  @useResult
  $Res call({PlaylistEntity playlist, FetchingState state});

  $PlaylistEntityCopyWith<$Res> get playlist;
}

/// @nodoc
class _$PlaylistWithStateCopyWithImpl<$Res, $Val extends PlaylistWithState>
    implements $PlaylistWithStateCopyWith<$Res> {
  _$PlaylistWithStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlist = null,
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      playlist: null == playlist
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as PlaylistEntity,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as FetchingState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaylistEntityCopyWith<$Res> get playlist {
    return $PlaylistEntityCopyWith<$Res>(_value.playlist, (value) {
      return _then(_value.copyWith(playlist: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlaylistWithStateCopyWith<$Res>
    implements $PlaylistWithStateCopyWith<$Res> {
  factory _$$_PlaylistWithStateCopyWith(_$_PlaylistWithState value,
          $Res Function(_$_PlaylistWithState) then) =
      __$$_PlaylistWithStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlaylistEntity playlist, FetchingState state});

  @override
  $PlaylistEntityCopyWith<$Res> get playlist;
}

/// @nodoc
class __$$_PlaylistWithStateCopyWithImpl<$Res>
    extends _$PlaylistWithStateCopyWithImpl<$Res, _$_PlaylistWithState>
    implements _$$_PlaylistWithStateCopyWith<$Res> {
  __$$_PlaylistWithStateCopyWithImpl(
      _$_PlaylistWithState _value, $Res Function(_$_PlaylistWithState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlist = null,
    Object? state = null,
  }) {
    return _then(_$_PlaylistWithState(
      playlist: null == playlist
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as PlaylistEntity,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as FetchingState,
    ));
  }
}

/// @nodoc

class _$_PlaylistWithState implements _PlaylistWithState {
  _$_PlaylistWithState(
      {required this.playlist, this.state = FetchingState.idle});

  @override
  final PlaylistEntity playlist;
  @override
  @JsonKey()
  final FetchingState state;

  @override
  String toString() {
    return 'PlaylistWithState(playlist: $playlist, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaylistWithState &&
            (identical(other.playlist, playlist) ||
                other.playlist == playlist) &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playlist, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaylistWithStateCopyWith<_$_PlaylistWithState> get copyWith =>
      __$$_PlaylistWithStateCopyWithImpl<_$_PlaylistWithState>(
          this, _$identity);
}

abstract class _PlaylistWithState implements PlaylistWithState {
  factory _PlaylistWithState(
      {required final PlaylistEntity playlist,
      final FetchingState state}) = _$_PlaylistWithState;

  @override
  PlaylistEntity get playlist;
  @override
  FetchingState get state;
  @override
  @JsonKey(ignore: true)
  _$$_PlaylistWithStateCopyWith<_$_PlaylistWithState> get copyWith =>
      throw _privateConstructorUsedError;
}
