// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlists_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlaylistsState {
  FetchingState get fetchingState => throw _privateConstructorUsedError;
  Map<String, PlaylistWithState> get playlists =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaylistsStateCopyWith<PlaylistsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistsStateCopyWith<$Res> {
  factory $PlaylistsStateCopyWith(
          PlaylistsState value, $Res Function(PlaylistsState) then) =
      _$PlaylistsStateCopyWithImpl<$Res, PlaylistsState>;
  @useResult
  $Res call(
      {FetchingState fetchingState, Map<String, PlaylistWithState> playlists});
}

/// @nodoc
class _$PlaylistsStateCopyWithImpl<$Res, $Val extends PlaylistsState>
    implements $PlaylistsStateCopyWith<$Res> {
  _$PlaylistsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchingState = null,
    Object? playlists = null,
  }) {
    return _then(_value.copyWith(
      fetchingState: null == fetchingState
          ? _value.fetchingState
          : fetchingState // ignore: cast_nullable_to_non_nullable
              as FetchingState,
      playlists: null == playlists
          ? _value.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as Map<String, PlaylistWithState>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlaylistsStateCopyWith<$Res>
    implements $PlaylistsStateCopyWith<$Res> {
  factory _$$_PlaylistsStateCopyWith(
          _$_PlaylistsState value, $Res Function(_$_PlaylistsState) then) =
      __$$_PlaylistsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FetchingState fetchingState, Map<String, PlaylistWithState> playlists});
}

/// @nodoc
class __$$_PlaylistsStateCopyWithImpl<$Res>
    extends _$PlaylistsStateCopyWithImpl<$Res, _$_PlaylistsState>
    implements _$$_PlaylistsStateCopyWith<$Res> {
  __$$_PlaylistsStateCopyWithImpl(
      _$_PlaylistsState _value, $Res Function(_$_PlaylistsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchingState = null,
    Object? playlists = null,
  }) {
    return _then(_$_PlaylistsState(
      fetchingState: null == fetchingState
          ? _value.fetchingState
          : fetchingState // ignore: cast_nullable_to_non_nullable
              as FetchingState,
      playlists: null == playlists
          ? _value._playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as Map<String, PlaylistWithState>,
    ));
  }
}

/// @nodoc

class _$_PlaylistsState extends _PlaylistsState {
  const _$_PlaylistsState(
      {this.fetchingState = FetchingState.idle,
      final Map<String, PlaylistWithState> playlists =
          const <String, PlaylistWithState>{}})
      : _playlists = playlists,
        super._();

  @override
  @JsonKey()
  final FetchingState fetchingState;
  final Map<String, PlaylistWithState> _playlists;
  @override
  @JsonKey()
  Map<String, PlaylistWithState> get playlists {
    if (_playlists is EqualUnmodifiableMapView) return _playlists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_playlists);
  }

  @override
  String toString() {
    return 'PlaylistsState(fetchingState: $fetchingState, playlists: $playlists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaylistsState &&
            (identical(other.fetchingState, fetchingState) ||
                other.fetchingState == fetchingState) &&
            const DeepCollectionEquality()
                .equals(other._playlists, _playlists));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetchingState,
      const DeepCollectionEquality().hash(_playlists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaylistsStateCopyWith<_$_PlaylistsState> get copyWith =>
      __$$_PlaylistsStateCopyWithImpl<_$_PlaylistsState>(this, _$identity);
}

abstract class _PlaylistsState extends PlaylistsState {
  const factory _PlaylistsState(
      {final FetchingState fetchingState,
      final Map<String, PlaylistWithState> playlists}) = _$_PlaylistsState;
  const _PlaylistsState._() : super._();

  @override
  FetchingState get fetchingState;
  @override
  Map<String, PlaylistWithState> get playlists;
  @override
  @JsonKey(ignore: true)
  _$$_PlaylistsStateCopyWith<_$_PlaylistsState> get copyWith =>
      throw _privateConstructorUsedError;
}
