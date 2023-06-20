// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaylistItemResponse _$PlaylistItemResponseFromJson(Map<String, dynamic> json) {
  return _PlaylistItemResponse.fromJson(json);
}

/// @nodoc
mixin _$PlaylistItemResponse {
  String get href => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  List<ImageEntity> get images => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get uri => throw _privateConstructorUsedError;
  PlaylistTracksResponse? get tracks => throw _privateConstructorUsedError;
  Owner? get owner => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaylistItemResponseCopyWith<PlaylistItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistItemResponseCopyWith<$Res> {
  factory $PlaylistItemResponseCopyWith(PlaylistItemResponse value,
          $Res Function(PlaylistItemResponse) then) =
      _$PlaylistItemResponseCopyWithImpl<$Res, PlaylistItemResponse>;
  @useResult
  $Res call(
      {String href,
      String id,
      List<ImageEntity> images,
      String name,
      String uri,
      PlaylistTracksResponse? tracks,
      Owner? owner,
      String? description});

  $PlaylistTracksResponseCopyWith<$Res>? get tracks;
  $OwnerCopyWith<$Res>? get owner;
}

/// @nodoc
class _$PlaylistItemResponseCopyWithImpl<$Res,
        $Val extends PlaylistItemResponse>
    implements $PlaylistItemResponseCopyWith<$Res> {
  _$PlaylistItemResponseCopyWithImpl(this._value, this._then);

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
    Object? owner = freezed,
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
              as List<ImageEntity>,
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
              as PlaylistTracksResponse?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaylistTracksResponseCopyWith<$Res>? get tracks {
    if (_value.tracks == null) {
      return null;
    }

    return $PlaylistTracksResponseCopyWith<$Res>(_value.tracks!, (value) {
      return _then(_value.copyWith(tracks: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OwnerCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $OwnerCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlaylistItemResponseCopyWith<$Res>
    implements $PlaylistItemResponseCopyWith<$Res> {
  factory _$$_PlaylistItemResponseCopyWith(_$_PlaylistItemResponse value,
          $Res Function(_$_PlaylistItemResponse) then) =
      __$$_PlaylistItemResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String href,
      String id,
      List<ImageEntity> images,
      String name,
      String uri,
      PlaylistTracksResponse? tracks,
      Owner? owner,
      String? description});

  @override
  $PlaylistTracksResponseCopyWith<$Res>? get tracks;
  @override
  $OwnerCopyWith<$Res>? get owner;
}

/// @nodoc
class __$$_PlaylistItemResponseCopyWithImpl<$Res>
    extends _$PlaylistItemResponseCopyWithImpl<$Res, _$_PlaylistItemResponse>
    implements _$$_PlaylistItemResponseCopyWith<$Res> {
  __$$_PlaylistItemResponseCopyWithImpl(_$_PlaylistItemResponse _value,
      $Res Function(_$_PlaylistItemResponse) _then)
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
    Object? owner = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_PlaylistItemResponse(
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
              as List<ImageEntity>,
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
              as PlaylistTracksResponse?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaylistItemResponse implements _PlaylistItemResponse {
  _$_PlaylistItemResponse(
      {required this.href,
      required this.id,
      required final List<ImageEntity> images,
      required this.name,
      required this.uri,
      this.tracks,
      this.owner,
      this.description})
      : _images = images;

  factory _$_PlaylistItemResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PlaylistItemResponseFromJson(json);

  @override
  final String href;
  @override
  final String id;
  final List<ImageEntity> _images;
  @override
  List<ImageEntity> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String name;
  @override
  final String uri;
  @override
  final PlaylistTracksResponse? tracks;
  @override
  final Owner? owner;
  @override
  final String? description;

  @override
  String toString() {
    return 'PlaylistItemResponse(href: $href, id: $id, images: $images, name: $name, uri: $uri, tracks: $tracks, owner: $owner, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaylistItemResponse &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.tracks, tracks) || other.tracks == tracks) &&
            (identical(other.owner, owner) || other.owner == owner) &&
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
      owner,
      description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaylistItemResponseCopyWith<_$_PlaylistItemResponse> get copyWith =>
      __$$_PlaylistItemResponseCopyWithImpl<_$_PlaylistItemResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaylistItemResponseToJson(
      this,
    );
  }
}

abstract class _PlaylistItemResponse implements PlaylistItemResponse {
  factory _PlaylistItemResponse(
      {required final String href,
      required final String id,
      required final List<ImageEntity> images,
      required final String name,
      required final String uri,
      final PlaylistTracksResponse? tracks,
      final Owner? owner,
      final String? description}) = _$_PlaylistItemResponse;

  factory _PlaylistItemResponse.fromJson(Map<String, dynamic> json) =
      _$_PlaylistItemResponse.fromJson;

  @override
  String get href;
  @override
  String get id;
  @override
  List<ImageEntity> get images;
  @override
  String get name;
  @override
  String get uri;
  @override
  PlaylistTracksResponse? get tracks;
  @override
  Owner? get owner;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_PlaylistItemResponseCopyWith<_$_PlaylistItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
