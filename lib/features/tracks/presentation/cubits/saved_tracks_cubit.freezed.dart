// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_tracks_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SavedTracksState {
  FetchingState get fetchingState => throw _privateConstructorUsedError;
  List<TrackEntity> get tracks => throw _privateConstructorUsedError;
  SortBy get sortBy => throw _privateConstructorUsedError;
  SortOrder get order => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SavedTracksStateCopyWith<SavedTracksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedTracksStateCopyWith<$Res> {
  factory $SavedTracksStateCopyWith(
          SavedTracksState value, $Res Function(SavedTracksState) then) =
      _$SavedTracksStateCopyWithImpl<$Res, SavedTracksState>;
  @useResult
  $Res call(
      {FetchingState fetchingState,
      List<TrackEntity> tracks,
      SortBy sortBy,
      SortOrder order});
}

/// @nodoc
class _$SavedTracksStateCopyWithImpl<$Res, $Val extends SavedTracksState>
    implements $SavedTracksStateCopyWith<$Res> {
  _$SavedTracksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchingState = null,
    Object? tracks = null,
    Object? sortBy = null,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      fetchingState: null == fetchingState
          ? _value.fetchingState
          : fetchingState // ignore: cast_nullable_to_non_nullable
              as FetchingState,
      tracks: null == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<TrackEntity>,
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortBy,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SortOrder,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SavedTracksStateCopyWith<$Res>
    implements $SavedTracksStateCopyWith<$Res> {
  factory _$$_SavedTracksStateCopyWith(
          _$_SavedTracksState value, $Res Function(_$_SavedTracksState) then) =
      __$$_SavedTracksStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FetchingState fetchingState,
      List<TrackEntity> tracks,
      SortBy sortBy,
      SortOrder order});
}

/// @nodoc
class __$$_SavedTracksStateCopyWithImpl<$Res>
    extends _$SavedTracksStateCopyWithImpl<$Res, _$_SavedTracksState>
    implements _$$_SavedTracksStateCopyWith<$Res> {
  __$$_SavedTracksStateCopyWithImpl(
      _$_SavedTracksState _value, $Res Function(_$_SavedTracksState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchingState = null,
    Object? tracks = null,
    Object? sortBy = null,
    Object? order = null,
  }) {
    return _then(_$_SavedTracksState(
      fetchingState: null == fetchingState
          ? _value.fetchingState
          : fetchingState // ignore: cast_nullable_to_non_nullable
              as FetchingState,
      tracks: null == tracks
          ? _value._tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<TrackEntity>,
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortBy,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SortOrder,
    ));
  }
}

/// @nodoc

class _$_SavedTracksState extends _SavedTracksState {
  const _$_SavedTracksState(
      {this.fetchingState = FetchingState.idle,
      final List<TrackEntity> tracks = const <TrackEntity>[],
      this.sortBy = SortBy.name,
      this.order = SortOrder.asc})
      : _tracks = tracks,
        super._();

  @override
  @JsonKey()
  final FetchingState fetchingState;
  final List<TrackEntity> _tracks;
  @override
  @JsonKey()
  List<TrackEntity> get tracks {
    if (_tracks is EqualUnmodifiableListView) return _tracks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tracks);
  }

  @override
  @JsonKey()
  final SortBy sortBy;
  @override
  @JsonKey()
  final SortOrder order;

  @override
  String toString() {
    return 'SavedTracksState(fetchingState: $fetchingState, tracks: $tracks, sortBy: $sortBy, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavedTracksState &&
            (identical(other.fetchingState, fetchingState) ||
                other.fetchingState == fetchingState) &&
            const DeepCollectionEquality().equals(other._tracks, _tracks) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetchingState,
      const DeepCollectionEquality().hash(_tracks), sortBy, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SavedTracksStateCopyWith<_$_SavedTracksState> get copyWith =>
      __$$_SavedTracksStateCopyWithImpl<_$_SavedTracksState>(this, _$identity);
}

abstract class _SavedTracksState extends SavedTracksState {
  const factory _SavedTracksState(
      {final FetchingState fetchingState,
      final List<TrackEntity> tracks,
      final SortBy sortBy,
      final SortOrder order}) = _$_SavedTracksState;
  const _SavedTracksState._() : super._();

  @override
  FetchingState get fetchingState;
  @override
  List<TrackEntity> get tracks;
  @override
  SortBy get sortBy;
  @override
  SortOrder get order;
  @override
  @JsonKey(ignore: true)
  _$$_SavedTracksStateCopyWith<_$_SavedTracksState> get copyWith =>
      throw _privateConstructorUsedError;
}
