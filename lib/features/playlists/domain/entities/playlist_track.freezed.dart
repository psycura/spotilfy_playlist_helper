// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_track.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaylistTrack _$PlaylistTrackFromJson(Map<String, dynamic> json) {
  return _PlaylistTrack.fromJson(json);
}

/// @nodoc
mixin _$PlaylistTrack {
  String get added_at => throw _privateConstructorUsedError;
  Track get track => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaylistTrackCopyWith<PlaylistTrack> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistTrackCopyWith<$Res> {
  factory $PlaylistTrackCopyWith(
          PlaylistTrack value, $Res Function(PlaylistTrack) then) =
      _$PlaylistTrackCopyWithImpl<$Res, PlaylistTrack>;
  @useResult
  $Res call({String added_at, Track track});

  $TrackCopyWith<$Res> get track;
}

/// @nodoc
class _$PlaylistTrackCopyWithImpl<$Res, $Val extends PlaylistTrack>
    implements $PlaylistTrackCopyWith<$Res> {
  _$PlaylistTrackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? added_at = null,
    Object? track = null,
  }) {
    return _then(_value.copyWith(
      added_at: null == added_at
          ? _value.added_at
          : added_at // ignore: cast_nullable_to_non_nullable
              as String,
      track: null == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TrackCopyWith<$Res> get track {
    return $TrackCopyWith<$Res>(_value.track, (value) {
      return _then(_value.copyWith(track: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlaylistTrackCopyWith<$Res>
    implements $PlaylistTrackCopyWith<$Res> {
  factory _$$_PlaylistTrackCopyWith(
          _$_PlaylistTrack value, $Res Function(_$_PlaylistTrack) then) =
      __$$_PlaylistTrackCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String added_at, Track track});

  @override
  $TrackCopyWith<$Res> get track;
}

/// @nodoc
class __$$_PlaylistTrackCopyWithImpl<$Res>
    extends _$PlaylistTrackCopyWithImpl<$Res, _$_PlaylistTrack>
    implements _$$_PlaylistTrackCopyWith<$Res> {
  __$$_PlaylistTrackCopyWithImpl(
      _$_PlaylistTrack _value, $Res Function(_$_PlaylistTrack) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? added_at = null,
    Object? track = null,
  }) {
    return _then(_$_PlaylistTrack(
      added_at: null == added_at
          ? _value.added_at
          : added_at // ignore: cast_nullable_to_non_nullable
              as String,
      track: null == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaylistTrack implements _PlaylistTrack {
  _$_PlaylistTrack({required this.added_at, required this.track});

  factory _$_PlaylistTrack.fromJson(Map<String, dynamic> json) =>
      _$$_PlaylistTrackFromJson(json);

  @override
  final String added_at;
  @override
  final Track track;

  @override
  String toString() {
    return 'PlaylistTrack(added_at: $added_at, track: $track)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaylistTrack &&
            (identical(other.added_at, added_at) ||
                other.added_at == added_at) &&
            (identical(other.track, track) || other.track == track));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, added_at, track);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaylistTrackCopyWith<_$_PlaylistTrack> get copyWith =>
      __$$_PlaylistTrackCopyWithImpl<_$_PlaylistTrack>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaylistTrackToJson(
      this,
    );
  }
}

abstract class _PlaylistTrack implements PlaylistTrack {
  factory _PlaylistTrack(
      {required final String added_at,
      required final Track track}) = _$_PlaylistTrack;

  factory _PlaylistTrack.fromJson(Map<String, dynamic> json) =
      _$_PlaylistTrack.fromJson;

  @override
  String get added_at;
  @override
  Track get track;
  @override
  @JsonKey(ignore: true)
  _$$_PlaylistTrackCopyWith<_$_PlaylistTrack> get copyWith =>
      throw _privateConstructorUsedError;
}
