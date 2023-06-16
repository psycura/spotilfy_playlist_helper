// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlaylistState {
  FetchingState get fetchingState => throw _privateConstructorUsedError;
  List<PlaylistTrack> get tracks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaylistStateCopyWith<PlaylistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistStateCopyWith<$Res> {
  factory $PlaylistStateCopyWith(
          PlaylistState value, $Res Function(PlaylistState) then) =
      _$PlaylistStateCopyWithImpl<$Res, PlaylistState>;
  @useResult
  $Res call({FetchingState fetchingState, List<PlaylistTrack> tracks});
}

/// @nodoc
class _$PlaylistStateCopyWithImpl<$Res, $Val extends PlaylistState>
    implements $PlaylistStateCopyWith<$Res> {
  _$PlaylistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchingState = null,
    Object? tracks = null,
  }) {
    return _then(_value.copyWith(
      fetchingState: null == fetchingState
          ? _value.fetchingState
          : fetchingState // ignore: cast_nullable_to_non_nullable
              as FetchingState,
      tracks: null == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<PlaylistTrack>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlaylistStateCopyWith<$Res>
    implements $PlaylistStateCopyWith<$Res> {
  factory _$$_PlaylistStateCopyWith(
          _$_PlaylistState value, $Res Function(_$_PlaylistState) then) =
      __$$_PlaylistStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FetchingState fetchingState, List<PlaylistTrack> tracks});
}

/// @nodoc
class __$$_PlaylistStateCopyWithImpl<$Res>
    extends _$PlaylistStateCopyWithImpl<$Res, _$_PlaylistState>
    implements _$$_PlaylistStateCopyWith<$Res> {
  __$$_PlaylistStateCopyWithImpl(
      _$_PlaylistState _value, $Res Function(_$_PlaylistState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchingState = null,
    Object? tracks = null,
  }) {
    return _then(_$_PlaylistState(
      fetchingState: null == fetchingState
          ? _value.fetchingState
          : fetchingState // ignore: cast_nullable_to_non_nullable
              as FetchingState,
      tracks: null == tracks
          ? _value._tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<PlaylistTrack>,
    ));
  }
}

/// @nodoc

class _$_PlaylistState extends _PlaylistState {
  const _$_PlaylistState(
      {this.fetchingState = FetchingState.idle,
      final List<PlaylistTrack> tracks = const <PlaylistTrack>[]})
      : _tracks = tracks,
        super._();

  @override
  @JsonKey()
  final FetchingState fetchingState;
  final List<PlaylistTrack> _tracks;
  @override
  @JsonKey()
  List<PlaylistTrack> get tracks {
    if (_tracks is EqualUnmodifiableListView) return _tracks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tracks);
  }

  @override
  String toString() {
    return 'PlaylistState(fetchingState: $fetchingState, tracks: $tracks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaylistState &&
            (identical(other.fetchingState, fetchingState) ||
                other.fetchingState == fetchingState) &&
            const DeepCollectionEquality().equals(other._tracks, _tracks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, fetchingState, const DeepCollectionEquality().hash(_tracks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaylistStateCopyWith<_$_PlaylistState> get copyWith =>
      __$$_PlaylistStateCopyWithImpl<_$_PlaylistState>(this, _$identity);
}

abstract class _PlaylistState extends PlaylistState {
  const factory _PlaylistState(
      {final FetchingState fetchingState,
      final List<PlaylistTrack> tracks}) = _$_PlaylistState;
  const _PlaylistState._() : super._();

  @override
  FetchingState get fetchingState;
  @override
  List<PlaylistTrack> get tracks;
  @override
  @JsonKey(ignore: true)
  _$$_PlaylistStateCopyWith<_$_PlaylistState> get copyWith =>
      throw _privateConstructorUsedError;
}
