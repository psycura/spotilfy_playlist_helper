// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageEntity _$ImageEntityFromJson(Map<String, dynamic> json) {
  return _ImageEntity.fromJson(json);
}

/// @nodoc
mixin _$ImageEntity {
  String get url => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageEntityCopyWith<ImageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageEntityCopyWith<$Res> {
  factory $ImageEntityCopyWith(
          ImageEntity value, $Res Function(ImageEntity) then) =
      _$ImageEntityCopyWithImpl<$Res, ImageEntity>;
  @useResult
  $Res call({String url, int? height, int? width});
}

/// @nodoc
class _$ImageEntityCopyWithImpl<$Res, $Val extends ImageEntity>
    implements $ImageEntityCopyWith<$Res> {
  _$ImageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? height = freezed,
    Object? width = freezed,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageEntityCopyWith<$Res>
    implements $ImageEntityCopyWith<$Res> {
  factory _$$_ImageEntityCopyWith(
          _$_ImageEntity value, $Res Function(_$_ImageEntity) then) =
      __$$_ImageEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, int? height, int? width});
}

/// @nodoc
class __$$_ImageEntityCopyWithImpl<$Res>
    extends _$ImageEntityCopyWithImpl<$Res, _$_ImageEntity>
    implements _$$_ImageEntityCopyWith<$Res> {
  __$$_ImageEntityCopyWithImpl(
      _$_ImageEntity _value, $Res Function(_$_ImageEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? height = freezed,
    Object? width = freezed,
  }) {
    return _then(_$_ImageEntity(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageEntity implements _ImageEntity {
  _$_ImageEntity({required this.url, this.height, this.width});

  factory _$_ImageEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ImageEntityFromJson(json);

  @override
  final String url;
  @override
  final int? height;
  @override
  final int? width;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageEntity &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, height, width);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageEntityCopyWith<_$_ImageEntity> get copyWith =>
      __$$_ImageEntityCopyWithImpl<_$_ImageEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageEntityToJson(
      this,
    );
  }
}

abstract class _ImageEntity implements ImageEntity {
  factory _ImageEntity(
      {required final String url,
      final int? height,
      final int? width}) = _$_ImageEntity;

  factory _ImageEntity.fromJson(Map<String, dynamic> json) =
      _$_ImageEntity.fromJson;

  @override
  String get url;
  @override
  int? get height;
  @override
  int? get width;
  @override
  @JsonKey(ignore: true)
  _$$_ImageEntityCopyWith<_$_ImageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
