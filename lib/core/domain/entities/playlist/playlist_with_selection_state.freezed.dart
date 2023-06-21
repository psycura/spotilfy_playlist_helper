// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_with_selection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlaylistWithSelectionState {
  PlaylistEntity get playlist => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaylistWithSelectionStateCopyWith<PlaylistWithSelectionState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistWithSelectionStateCopyWith<$Res> {
  factory $PlaylistWithSelectionStateCopyWith(PlaylistWithSelectionState value,
          $Res Function(PlaylistWithSelectionState) then) =
      _$PlaylistWithSelectionStateCopyWithImpl<$Res,
          PlaylistWithSelectionState>;
  @useResult
  $Res call({PlaylistEntity playlist, bool selected});

  $PlaylistEntityCopyWith<$Res> get playlist;
}

/// @nodoc
class _$PlaylistWithSelectionStateCopyWithImpl<$Res,
        $Val extends PlaylistWithSelectionState>
    implements $PlaylistWithSelectionStateCopyWith<$Res> {
  _$PlaylistWithSelectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlist = null,
    Object? selected = null,
  }) {
    return _then(_value.copyWith(
      playlist: null == playlist
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as PlaylistEntity,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_PlaylistWithSelectionStateCopyWith<$Res>
    implements $PlaylistWithSelectionStateCopyWith<$Res> {
  factory _$$_PlaylistWithSelectionStateCopyWith(
          _$_PlaylistWithSelectionState value,
          $Res Function(_$_PlaylistWithSelectionState) then) =
      __$$_PlaylistWithSelectionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlaylistEntity playlist, bool selected});

  @override
  $PlaylistEntityCopyWith<$Res> get playlist;
}

/// @nodoc
class __$$_PlaylistWithSelectionStateCopyWithImpl<$Res>
    extends _$PlaylistWithSelectionStateCopyWithImpl<$Res,
        _$_PlaylistWithSelectionState>
    implements _$$_PlaylistWithSelectionStateCopyWith<$Res> {
  __$$_PlaylistWithSelectionStateCopyWithImpl(
      _$_PlaylistWithSelectionState _value,
      $Res Function(_$_PlaylistWithSelectionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlist = null,
    Object? selected = null,
  }) {
    return _then(_$_PlaylistWithSelectionState(
      playlist: null == playlist
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as PlaylistEntity,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PlaylistWithSelectionState implements _PlaylistWithSelectionState {
  _$_PlaylistWithSelectionState(
      {required this.playlist, this.selected = false});

  @override
  final PlaylistEntity playlist;
  @override
  @JsonKey()
  final bool selected;

  @override
  String toString() {
    return 'PlaylistWithSelectionState(playlist: $playlist, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaylistWithSelectionState &&
            (identical(other.playlist, playlist) ||
                other.playlist == playlist) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playlist, selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaylistWithSelectionStateCopyWith<_$_PlaylistWithSelectionState>
      get copyWith => __$$_PlaylistWithSelectionStateCopyWithImpl<
          _$_PlaylistWithSelectionState>(this, _$identity);
}

abstract class _PlaylistWithSelectionState
    implements PlaylistWithSelectionState {
  factory _PlaylistWithSelectionState(
      {required final PlaylistEntity playlist,
      final bool selected}) = _$_PlaylistWithSelectionState;

  @override
  PlaylistEntity get playlist;
  @override
  bool get selected;
  @override
  @JsonKey(ignore: true)
  _$$_PlaylistWithSelectionStateCopyWith<_$_PlaylistWithSelectionState>
      get copyWith => throw _privateConstructorUsedError;
}
