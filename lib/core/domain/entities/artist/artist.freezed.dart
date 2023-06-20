// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArtistEntity _$ArtistEntityFromJson(Map<String, dynamic> json) {
  return _ArtistEntity.fromJson(json);
}

/// @nodoc
mixin _$ArtistEntity {
  String get href => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistEntityCopyWith<ArtistEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistEntityCopyWith<$Res> {
  factory $ArtistEntityCopyWith(
          ArtistEntity value, $Res Function(ArtistEntity) then) =
      _$ArtistEntityCopyWithImpl<$Res, ArtistEntity>;
  @useResult
  $Res call({String href, String id, String name});
}

/// @nodoc
class _$ArtistEntityCopyWithImpl<$Res, $Val extends ArtistEntity>
    implements $ArtistEntityCopyWith<$Res> {
  _$ArtistEntityCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArtistEntityCopyWith<$Res>
    implements $ArtistEntityCopyWith<$Res> {
  factory _$$_ArtistEntityCopyWith(
          _$_ArtistEntity value, $Res Function(_$_ArtistEntity) then) =
      __$$_ArtistEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String href, String id, String name});
}

/// @nodoc
class __$$_ArtistEntityCopyWithImpl<$Res>
    extends _$ArtistEntityCopyWithImpl<$Res, _$_ArtistEntity>
    implements _$$_ArtistEntityCopyWith<$Res> {
  __$$_ArtistEntityCopyWithImpl(
      _$_ArtistEntity _value, $Res Function(_$_ArtistEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_ArtistEntity(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArtistEntity implements _ArtistEntity {
  _$_ArtistEntity({required this.href, required this.id, required this.name});

  factory _$_ArtistEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ArtistEntityFromJson(json);

  @override
  final String href;
  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'ArtistEntity(href: $href, id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArtistEntity &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, href, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArtistEntityCopyWith<_$_ArtistEntity> get copyWith =>
      __$$_ArtistEntityCopyWithImpl<_$_ArtistEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArtistEntityToJson(
      this,
    );
  }
}

abstract class _ArtistEntity implements ArtistEntity {
  factory _ArtistEntity(
      {required final String href,
      required final String id,
      required final String name}) = _$_ArtistEntity;

  factory _ArtistEntity.fromJson(Map<String, dynamic> json) =
      _$_ArtistEntity.fromJson;

  @override
  String get href;
  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ArtistEntityCopyWith<_$_ArtistEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
