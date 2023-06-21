// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrackEntity _$TrackEntityFromJson(Map<String, dynamic> json) {
  return _TrackEntity.fromJson(json);
}

/// @nodoc
mixin _$TrackEntity {
  AlbumEntity get album => throw _privateConstructorUsedError;
  List<ArtistEntity> get artists => throw _privateConstructorUsedError;
  int get duration_ms => throw _privateConstructorUsedError;
  String get href => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get popularity => throw _privateConstructorUsedError;
  int get track_number => throw _privateConstructorUsedError;
  String get uri => throw _privateConstructorUsedError;
  String get preview_url => throw _privateConstructorUsedError;
  bool get is_playable => throw _privateConstructorUsedError;
  bool get is_saved => throw _privateConstructorUsedError;
  List<String> get playlists => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackEntityCopyWith<TrackEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackEntityCopyWith<$Res> {
  factory $TrackEntityCopyWith(
          TrackEntity value, $Res Function(TrackEntity) then) =
      _$TrackEntityCopyWithImpl<$Res, TrackEntity>;
  @useResult
  $Res call(
      {AlbumEntity album,
      List<ArtistEntity> artists,
      int duration_ms,
      String href,
      String id,
      String name,
      int popularity,
      int track_number,
      String uri,
      String preview_url,
      bool is_playable,
      bool is_saved,
      List<String> playlists});

  $AlbumEntityCopyWith<$Res> get album;
}

/// @nodoc
class _$TrackEntityCopyWithImpl<$Res, $Val extends TrackEntity>
    implements $TrackEntityCopyWith<$Res> {
  _$TrackEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? album = null,
    Object? artists = null,
    Object? duration_ms = null,
    Object? href = null,
    Object? id = null,
    Object? name = null,
    Object? popularity = null,
    Object? track_number = null,
    Object? uri = null,
    Object? preview_url = null,
    Object? is_playable = null,
    Object? is_saved = null,
    Object? playlists = null,
  }) {
    return _then(_value.copyWith(
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as AlbumEntity,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<ArtistEntity>,
      duration_ms: null == duration_ms
          ? _value.duration_ms
          : duration_ms // ignore: cast_nullable_to_non_nullable
              as int,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int,
      track_number: null == track_number
          ? _value.track_number
          : track_number // ignore: cast_nullable_to_non_nullable
              as int,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      preview_url: null == preview_url
          ? _value.preview_url
          : preview_url // ignore: cast_nullable_to_non_nullable
              as String,
      is_playable: null == is_playable
          ? _value.is_playable
          : is_playable // ignore: cast_nullable_to_non_nullable
              as bool,
      is_saved: null == is_saved
          ? _value.is_saved
          : is_saved // ignore: cast_nullable_to_non_nullable
              as bool,
      playlists: null == playlists
          ? _value.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumEntityCopyWith<$Res> get album {
    return $AlbumEntityCopyWith<$Res>(_value.album, (value) {
      return _then(_value.copyWith(album: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TrackEntityCopyWith<$Res>
    implements $TrackEntityCopyWith<$Res> {
  factory _$$_TrackEntityCopyWith(
          _$_TrackEntity value, $Res Function(_$_TrackEntity) then) =
      __$$_TrackEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AlbumEntity album,
      List<ArtistEntity> artists,
      int duration_ms,
      String href,
      String id,
      String name,
      int popularity,
      int track_number,
      String uri,
      String preview_url,
      bool is_playable,
      bool is_saved,
      List<String> playlists});

  @override
  $AlbumEntityCopyWith<$Res> get album;
}

/// @nodoc
class __$$_TrackEntityCopyWithImpl<$Res>
    extends _$TrackEntityCopyWithImpl<$Res, _$_TrackEntity>
    implements _$$_TrackEntityCopyWith<$Res> {
  __$$_TrackEntityCopyWithImpl(
      _$_TrackEntity _value, $Res Function(_$_TrackEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? album = null,
    Object? artists = null,
    Object? duration_ms = null,
    Object? href = null,
    Object? id = null,
    Object? name = null,
    Object? popularity = null,
    Object? track_number = null,
    Object? uri = null,
    Object? preview_url = null,
    Object? is_playable = null,
    Object? is_saved = null,
    Object? playlists = null,
  }) {
    return _then(_$_TrackEntity(
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as AlbumEntity,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<ArtistEntity>,
      duration_ms: null == duration_ms
          ? _value.duration_ms
          : duration_ms // ignore: cast_nullable_to_non_nullable
              as int,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int,
      track_number: null == track_number
          ? _value.track_number
          : track_number // ignore: cast_nullable_to_non_nullable
              as int,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      preview_url: null == preview_url
          ? _value.preview_url
          : preview_url // ignore: cast_nullable_to_non_nullable
              as String,
      is_playable: null == is_playable
          ? _value.is_playable
          : is_playable // ignore: cast_nullable_to_non_nullable
              as bool,
      is_saved: null == is_saved
          ? _value.is_saved
          : is_saved // ignore: cast_nullable_to_non_nullable
              as bool,
      playlists: null == playlists
          ? _value._playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TrackEntity implements _TrackEntity {
  _$_TrackEntity(
      {required this.album,
      required final List<ArtistEntity> artists,
      required this.duration_ms,
      required this.href,
      required this.id,
      required this.name,
      required this.popularity,
      required this.track_number,
      required this.uri,
      this.preview_url = '',
      this.is_playable = true,
      this.is_saved = false,
      final List<String> playlists = const <String>[]})
      : _artists = artists,
        _playlists = playlists;

  factory _$_TrackEntity.fromJson(Map<String, dynamic> json) =>
      _$$_TrackEntityFromJson(json);

  @override
  final AlbumEntity album;
  final List<ArtistEntity> _artists;
  @override
  List<ArtistEntity> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  final int duration_ms;
  @override
  final String href;
  @override
  final String id;
  @override
  final String name;
  @override
  final int popularity;
  @override
  final int track_number;
  @override
  final String uri;
  @override
  @JsonKey()
  final String preview_url;
  @override
  @JsonKey()
  final bool is_playable;
  @override
  @JsonKey()
  final bool is_saved;
  final List<String> _playlists;
  @override
  @JsonKey()
  List<String> get playlists {
    if (_playlists is EqualUnmodifiableListView) return _playlists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playlists);
  }

  @override
  String toString() {
    return 'TrackEntity(album: $album, artists: $artists, duration_ms: $duration_ms, href: $href, id: $id, name: $name, popularity: $popularity, track_number: $track_number, uri: $uri, preview_url: $preview_url, is_playable: $is_playable, is_saved: $is_saved, playlists: $playlists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrackEntity &&
            (identical(other.album, album) || other.album == album) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            (identical(other.duration_ms, duration_ms) ||
                other.duration_ms == duration_ms) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.track_number, track_number) ||
                other.track_number == track_number) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.preview_url, preview_url) ||
                other.preview_url == preview_url) &&
            (identical(other.is_playable, is_playable) ||
                other.is_playable == is_playable) &&
            (identical(other.is_saved, is_saved) ||
                other.is_saved == is_saved) &&
            const DeepCollectionEquality()
                .equals(other._playlists, _playlists));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      album,
      const DeepCollectionEquality().hash(_artists),
      duration_ms,
      href,
      id,
      name,
      popularity,
      track_number,
      uri,
      preview_url,
      is_playable,
      is_saved,
      const DeepCollectionEquality().hash(_playlists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrackEntityCopyWith<_$_TrackEntity> get copyWith =>
      __$$_TrackEntityCopyWithImpl<_$_TrackEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrackEntityToJson(
      this,
    );
  }
}

abstract class _TrackEntity implements TrackEntity {
  factory _TrackEntity(
      {required final AlbumEntity album,
      required final List<ArtistEntity> artists,
      required final int duration_ms,
      required final String href,
      required final String id,
      required final String name,
      required final int popularity,
      required final int track_number,
      required final String uri,
      final String preview_url,
      final bool is_playable,
      final bool is_saved,
      final List<String> playlists}) = _$_TrackEntity;

  factory _TrackEntity.fromJson(Map<String, dynamic> json) =
      _$_TrackEntity.fromJson;

  @override
  AlbumEntity get album;
  @override
  List<ArtistEntity> get artists;
  @override
  int get duration_ms;
  @override
  String get href;
  @override
  String get id;
  @override
  String get name;
  @override
  int get popularity;
  @override
  int get track_number;
  @override
  String get uri;
  @override
  String get preview_url;
  @override
  bool get is_playable;
  @override
  bool get is_saved;
  @override
  List<String> get playlists;
  @override
  @JsonKey(ignore: true)
  _$$_TrackEntityCopyWith<_$_TrackEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
