// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_playlists_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrackPlaylistsState {
  Map<String, PlaylistWithSelectionState> get playlists =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrackPlaylistsStateCopyWith<TrackPlaylistsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackPlaylistsStateCopyWith<$Res> {
  factory $TrackPlaylistsStateCopyWith(
          TrackPlaylistsState value, $Res Function(TrackPlaylistsState) then) =
      _$TrackPlaylistsStateCopyWithImpl<$Res, TrackPlaylistsState>;
  @useResult
  $Res call({Map<String, PlaylistWithSelectionState> playlists});
}

/// @nodoc
class _$TrackPlaylistsStateCopyWithImpl<$Res, $Val extends TrackPlaylistsState>
    implements $TrackPlaylistsStateCopyWith<$Res> {
  _$TrackPlaylistsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlists = null,
  }) {
    return _then(_value.copyWith(
      playlists: null == playlists
          ? _value.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as Map<String, PlaylistWithSelectionState>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TrackPlaylistsStateCopyWith<$Res>
    implements $TrackPlaylistsStateCopyWith<$Res> {
  factory _$$_TrackPlaylistsStateCopyWith(_$_TrackPlaylistsState value,
          $Res Function(_$_TrackPlaylistsState) then) =
      __$$_TrackPlaylistsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, PlaylistWithSelectionState> playlists});
}

/// @nodoc
class __$$_TrackPlaylistsStateCopyWithImpl<$Res>
    extends _$TrackPlaylistsStateCopyWithImpl<$Res, _$_TrackPlaylistsState>
    implements _$$_TrackPlaylistsStateCopyWith<$Res> {
  __$$_TrackPlaylistsStateCopyWithImpl(_$_TrackPlaylistsState _value,
      $Res Function(_$_TrackPlaylistsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlists = null,
  }) {
    return _then(_$_TrackPlaylistsState(
      playlists: null == playlists
          ? _value._playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as Map<String, PlaylistWithSelectionState>,
    ));
  }
}

/// @nodoc

class _$_TrackPlaylistsState extends _TrackPlaylistsState {
  const _$_TrackPlaylistsState(
      {final Map<String, PlaylistWithSelectionState> playlists =
          const <String, PlaylistWithSelectionState>{}})
      : _playlists = playlists,
        super._();

  final Map<String, PlaylistWithSelectionState> _playlists;
  @override
  @JsonKey()
  Map<String, PlaylistWithSelectionState> get playlists {
    if (_playlists is EqualUnmodifiableMapView) return _playlists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_playlists);
  }

  @override
  String toString() {
    return 'TrackPlaylistsState(playlists: $playlists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrackPlaylistsState &&
            const DeepCollectionEquality()
                .equals(other._playlists, _playlists));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_playlists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrackPlaylistsStateCopyWith<_$_TrackPlaylistsState> get copyWith =>
      __$$_TrackPlaylistsStateCopyWithImpl<_$_TrackPlaylistsState>(
          this, _$identity);
}

abstract class _TrackPlaylistsState extends TrackPlaylistsState {
  const factory _TrackPlaylistsState(
          {final Map<String, PlaylistWithSelectionState> playlists}) =
      _$_TrackPlaylistsState;
  const _TrackPlaylistsState._() : super._();

  @override
  Map<String, PlaylistWithSelectionState> get playlists;
  @override
  @JsonKey(ignore: true)
  _$$_TrackPlaylistsStateCopyWith<_$_TrackPlaylistsState> get copyWith =>
      throw _privateConstructorUsedError;
}
