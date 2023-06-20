// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'album.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AlbumEntity _$AlbumEntityFromJson(Map<String, dynamic> json) {
  return _AlbumEntity.fromJson(json);
}

/// @nodoc
mixin _$AlbumEntity {
  String get href => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<ImageEntity> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumEntityCopyWith<AlbumEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumEntityCopyWith<$Res> {
  factory $AlbumEntityCopyWith(
          AlbumEntity value, $Res Function(AlbumEntity) then) =
      _$AlbumEntityCopyWithImpl<$Res, AlbumEntity>;
  @useResult
  $Res call({String href, String id, String name, List<ImageEntity> images});
}

/// @nodoc
class _$AlbumEntityCopyWithImpl<$Res, $Val extends AlbumEntity>
    implements $AlbumEntityCopyWith<$Res> {
  _$AlbumEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
    Object? id = null,
    Object? name = null,
    Object? images = null,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AlbumEntityCopyWith<$Res>
    implements $AlbumEntityCopyWith<$Res> {
  factory _$$_AlbumEntityCopyWith(
          _$_AlbumEntity value, $Res Function(_$_AlbumEntity) then) =
      __$$_AlbumEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String href, String id, String name, List<ImageEntity> images});
}

/// @nodoc
class __$$_AlbumEntityCopyWithImpl<$Res>
    extends _$AlbumEntityCopyWithImpl<$Res, _$_AlbumEntity>
    implements _$$_AlbumEntityCopyWith<$Res> {
  __$$_AlbumEntityCopyWithImpl(
      _$_AlbumEntity _value, $Res Function(_$_AlbumEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
    Object? id = null,
    Object? name = null,
    Object? images = null,
  }) {
    return _then(_$_AlbumEntity(
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
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AlbumEntity implements _AlbumEntity {
  _$_AlbumEntity(
      {required this.href,
      required this.id,
      required this.name,
      required final List<ImageEntity> images})
      : _images = images;

  factory _$_AlbumEntity.fromJson(Map<String, dynamic> json) =>
      _$$_AlbumEntityFromJson(json);

  @override
  final String href;
  @override
  final String id;
  @override
  final String name;
  final List<ImageEntity> _images;
  @override
  List<ImageEntity> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'AlbumEntity(href: $href, id: $id, name: $name, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlbumEntity &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, href, id, name,
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AlbumEntityCopyWith<_$_AlbumEntity> get copyWith =>
      __$$_AlbumEntityCopyWithImpl<_$_AlbumEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AlbumEntityToJson(
      this,
    );
  }
}

abstract class _AlbumEntity implements AlbumEntity {
  factory _AlbumEntity(
      {required final String href,
      required final String id,
      required final String name,
      required final List<ImageEntity> images}) = _$_AlbumEntity;

  factory _AlbumEntity.fromJson(Map<String, dynamic> json) =
      _$_AlbumEntity.fromJson;

  @override
  String get href;
  @override
  String get id;
  @override
  String get name;
  @override
  List<ImageEntity> get images;
  @override
  @JsonKey(ignore: true)
  _$$_AlbumEntityCopyWith<_$_AlbumEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
