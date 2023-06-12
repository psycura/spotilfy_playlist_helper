// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simplified_playlist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SimplifiedPlaylist _$SimplifiedPlaylistFromJson(Map<String, dynamic> json) {
  return _Playlist.fromJson(json);
}

/// @nodoc
mixin _$SimplifiedPlaylist {
  String get href => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  List<SpotifyImage> get images => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get uri => throw _privateConstructorUsedError;
  Tracks? get tracks => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SimplifiedPlaylistCopyWith<SimplifiedPlaylist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimplifiedPlaylistCopyWith<$Res> {
  factory $SimplifiedPlaylistCopyWith(
          SimplifiedPlaylist value, $Res Function(SimplifiedPlaylist) then) =
      _$SimplifiedPlaylistCopyWithImpl<$Res, SimplifiedPlaylist>;
  @useResult
  $Res call(
      {String href,
      String id,
      List<SpotifyImage> images,
      String name,
      String uri,
      Tracks? tracks,
      String? description});

  $TracksCopyWith<$Res>? get tracks;
}

/// @nodoc
class _$SimplifiedPlaylistCopyWithImpl<$Res, $Val extends SimplifiedPlaylist>
    implements $SimplifiedPlaylistCopyWith<$Res> {
  _$SimplifiedPlaylistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
    Object? id = null,
    Object? images = null,
    Object? name = null,
    Object? uri = null,
    Object? tracks = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SpotifyImage>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      tracks: freezed == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as Tracks?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TracksCopyWith<$Res>? get tracks {
    if (_value.tracks == null) {
      return null;
    }

    return $TracksCopyWith<$Res>(_value.tracks!, (value) {
      return _then(_value.copyWith(tracks: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlaylistCopyWith<$Res>
    implements $SimplifiedPlaylistCopyWith<$Res> {
  factory _$$_PlaylistCopyWith(
          _$_Playlist value, $Res Function(_$_Playlist) then) =
      __$$_PlaylistCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String href,
      String id,
      List<SpotifyImage> images,
      String name,
      String uri,
      Tracks? tracks,
      String? description});

  @override
  $TracksCopyWith<$Res>? get tracks;
}

/// @nodoc
class __$$_PlaylistCopyWithImpl<$Res>
    extends _$SimplifiedPlaylistCopyWithImpl<$Res, _$_Playlist>
    implements _$$_PlaylistCopyWith<$Res> {
  __$$_PlaylistCopyWithImpl(
      _$_Playlist _value, $Res Function(_$_Playlist) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
    Object? id = null,
    Object? images = null,
    Object? name = null,
    Object? uri = null,
    Object? tracks = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_Playlist(
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SpotifyImage>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      tracks: freezed == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as Tracks?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Playlist implements _Playlist {
  _$_Playlist(
      {required this.href,
      required this.id,
      required final List<SpotifyImage> images,
      required this.name,
      required this.uri,
      this.tracks,
      this.description})
      : _images = images;

  factory _$_Playlist.fromJson(Map<String, dynamic> json) =>
      _$$_PlaylistFromJson(json);

  @override
  final String href;
  @override
  final String id;
  final List<SpotifyImage> _images;
  @override
  List<SpotifyImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String name;
  @override
  final String uri;
  @override
  final Tracks? tracks;
  @override
  final String? description;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Playlist &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.tracks, tracks) || other.tracks == tracks) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      href,
      id,
      const DeepCollectionEquality().hash(_images),
      name,
      uri,
      tracks,
      description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaylistCopyWith<_$_Playlist> get copyWith =>
      __$$_PlaylistCopyWithImpl<_$_Playlist>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaylistToJson(
      this,
    );
  }
}

abstract class _Playlist implements SimplifiedPlaylist {
  factory _Playlist(
      {required final String href,
      required final String id,
      required final List<SpotifyImage> images,
      required final String name,
      required final String uri,
      final Tracks? tracks,
      final String? description}) = _$_Playlist;

  factory _Playlist.fromJson(Map<String, dynamic> json) = _$_Playlist.fromJson;

  @override
  String get href;
  @override
  String get id;
  @override
  List<SpotifyImage> get images;
  @override
  String get name;
  @override
  String get uri;
  @override
  Tracks? get tracks;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_PlaylistCopyWith<_$_Playlist> get copyWith =>
      throw _privateConstructorUsedError;
}
