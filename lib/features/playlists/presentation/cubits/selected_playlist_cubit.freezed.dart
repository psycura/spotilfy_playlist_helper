// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_playlist_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SelectedPlaylistState {
  SelectedMode get mode => throw _privateConstructorUsedError;
  SimplifiedPlaylist? get playlist => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectedPlaylistStateCopyWith<SelectedPlaylistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedPlaylistStateCopyWith<$Res> {
  factory $SelectedPlaylistStateCopyWith(SelectedPlaylistState value,
          $Res Function(SelectedPlaylistState) then) =
      _$SelectedPlaylistStateCopyWithImpl<$Res, SelectedPlaylistState>;
  @useResult
  $Res call({SelectedMode mode, SimplifiedPlaylist? playlist});

  $SimplifiedPlaylistCopyWith<$Res>? get playlist;
}

/// @nodoc
class _$SelectedPlaylistStateCopyWithImpl<$Res,
        $Val extends SelectedPlaylistState>
    implements $SelectedPlaylistStateCopyWith<$Res> {
  _$SelectedPlaylistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? playlist = freezed,
  }) {
    return _then(_value.copyWith(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as SelectedMode,
      playlist: freezed == playlist
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as SimplifiedPlaylist?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SimplifiedPlaylistCopyWith<$Res>? get playlist {
    if (_value.playlist == null) {
      return null;
    }

    return $SimplifiedPlaylistCopyWith<$Res>(_value.playlist!, (value) {
      return _then(_value.copyWith(playlist: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SelectedPlaylistStateCopyWith<$Res>
    implements $SelectedPlaylistStateCopyWith<$Res> {
  factory _$$_SelectedPlaylistStateCopyWith(_$_SelectedPlaylistState value,
          $Res Function(_$_SelectedPlaylistState) then) =
      __$$_SelectedPlaylistStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SelectedMode mode, SimplifiedPlaylist? playlist});

  @override
  $SimplifiedPlaylistCopyWith<$Res>? get playlist;
}

/// @nodoc
class __$$_SelectedPlaylistStateCopyWithImpl<$Res>
    extends _$SelectedPlaylistStateCopyWithImpl<$Res, _$_SelectedPlaylistState>
    implements _$$_SelectedPlaylistStateCopyWith<$Res> {
  __$$_SelectedPlaylistStateCopyWithImpl(_$_SelectedPlaylistState _value,
      $Res Function(_$_SelectedPlaylistState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? playlist = freezed,
  }) {
    return _then(_$_SelectedPlaylistState(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as SelectedMode,
      playlist: freezed == playlist
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as SimplifiedPlaylist?,
    ));
  }
}

/// @nodoc

class _$_SelectedPlaylistState extends _SelectedPlaylistState {
  const _$_SelectedPlaylistState(
      {this.mode = SelectedMode.favorites, this.playlist})
      : super._();

  @override
  @JsonKey()
  final SelectedMode mode;
  @override
  final SimplifiedPlaylist? playlist;

  @override
  String toString() {
    return 'SelectedPlaylistState(mode: $mode, playlist: $playlist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectedPlaylistState &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.playlist, playlist) ||
                other.playlist == playlist));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode, playlist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectedPlaylistStateCopyWith<_$_SelectedPlaylistState> get copyWith =>
      __$$_SelectedPlaylistStateCopyWithImpl<_$_SelectedPlaylistState>(
          this, _$identity);
}

abstract class _SelectedPlaylistState extends SelectedPlaylistState {
  const factory _SelectedPlaylistState(
      {final SelectedMode mode,
      final SimplifiedPlaylist? playlist}) = _$_SelectedPlaylistState;
  const _SelectedPlaylistState._() : super._();

  @override
  SelectedMode get mode;
  @override
  SimplifiedPlaylist? get playlist;
  @override
  @JsonKey(ignore: true)
  _$$_SelectedPlaylistStateCopyWith<_$_SelectedPlaylistState> get copyWith =>
      throw _privateConstructorUsedError;
}
