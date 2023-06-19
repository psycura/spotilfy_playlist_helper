// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaylistEntity _$PlaylistEntityFromJson(Map<String, dynamic> json) {
  return _PlaylistEntity.fromJson(json);
}

/// @nodoc
mixin _$PlaylistEntity {
  String get href => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  List<ImageEntity> get images => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get uri => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaylistEntityCopyWith<PlaylistEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistEntityCopyWith<$Res> {
  factory $PlaylistEntityCopyWith(
          PlaylistEntity value, $Res Function(PlaylistEntity) then) =
      _$PlaylistEntityCopyWithImpl<$Res, PlaylistEntity>;
  @useResult
  $Res call(
      {String href,
      String id,
      List<ImageEntity> images,
      String name,
      String uri,
      String? description});
}

/// @nodoc
class _$PlaylistEntityCopyWithImpl<$Res, $Val extends PlaylistEntity>
    implements $PlaylistEntityCopyWith<$Res> {
  _$PlaylistEntityCopyWithImpl(this._value, this._then);

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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlaylistEntityCopyWith<$Res>
    implements $PlaylistEntityCopyWith<$Res> {
  factory _$$_PlaylistEntityCopyWith(
          _$_PlaylistEntity value, $Res Function(_$_PlaylistEntity) then) =
      __$$_PlaylistEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String href,
      String id,
      List<ImageEntity> images,
      String name,
      String uri,
      String? description});
}

/// @nodoc
class __$$_PlaylistEntityCopyWithImpl<$Res>
    extends _$PlaylistEntityCopyWithImpl<$Res, _$_PlaylistEntity>
    implements _$$_PlaylistEntityCopyWith<$Res> {
  __$$_PlaylistEntityCopyWithImpl(
      _$_PlaylistEntity _value, $Res Function(_$_PlaylistEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
    Object? id = null,
    Object? images = null,
    Object? name = null,
    Object? uri = null,
    Object? description = freezed,
  }) {
    return _then(_$_PlaylistEntity(
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaylistEntity implements _PlaylistEntity {
  _$_PlaylistEntity(
      {required this.href,
      required this.id,
      required final List<ImageEntity> images,
      required this.name,
      required this.uri,
      this.description})
      : _images = images;

  factory _$_PlaylistEntity.fromJson(Map<String, dynamic> json) =>
      _$$_PlaylistEntityFromJson(json);

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
  final String? description;

  @override
  String toString() {
    return 'PlaylistEntity(href: $href, id: $id, images: $images, name: $name, uri: $uri, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaylistEntity &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, href, id,
      const DeepCollectionEquality().hash(_images), name, uri, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaylistEntityCopyWith<_$_PlaylistEntity> get copyWith =>
      __$$_PlaylistEntityCopyWithImpl<_$_PlaylistEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaylistEntityToJson(
      this,
    );
  }
}

abstract class _PlaylistEntity implements PlaylistEntity {
  factory _PlaylistEntity(
      {required final String href,
      required final String id,
      required final List<ImageEntity> images,
      required final String name,
      required final String uri,
      final String? description}) = _$_PlaylistEntity;

  factory _PlaylistEntity.fromJson(Map<String, dynamic> json) =
      _$_PlaylistEntity.fromJson;

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
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_PlaylistEntityCopyWith<_$_PlaylistEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
