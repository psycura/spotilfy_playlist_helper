// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spotify_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpotifyImage _$SpotifyImageFromJson(Map<String, dynamic> json) {
  return _SpotifyImage.fromJson(json);
}

/// @nodoc
mixin _$SpotifyImage {
  String get url => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpotifyImageCopyWith<SpotifyImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotifyImageCopyWith<$Res> {
  factory $SpotifyImageCopyWith(
          SpotifyImage value, $Res Function(SpotifyImage) then) =
      _$SpotifyImageCopyWithImpl<$Res, SpotifyImage>;
  @useResult
  $Res call({String url, int? height, int? width});
}

/// @nodoc
class _$SpotifyImageCopyWithImpl<$Res, $Val extends SpotifyImage>
    implements $SpotifyImageCopyWith<$Res> {
  _$SpotifyImageCopyWithImpl(this._value, this._then);

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
abstract class _$$_SpotifyImageCopyWith<$Res>
    implements $SpotifyImageCopyWith<$Res> {
  factory _$$_SpotifyImageCopyWith(
          _$_SpotifyImage value, $Res Function(_$_SpotifyImage) then) =
      __$$_SpotifyImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, int? height, int? width});
}

/// @nodoc
class __$$_SpotifyImageCopyWithImpl<$Res>
    extends _$SpotifyImageCopyWithImpl<$Res, _$_SpotifyImage>
    implements _$$_SpotifyImageCopyWith<$Res> {
  __$$_SpotifyImageCopyWithImpl(
      _$_SpotifyImage _value, $Res Function(_$_SpotifyImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? height = freezed,
    Object? width = freezed,
  }) {
    return _then(_$_SpotifyImage(
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
class _$_SpotifyImage implements _SpotifyImage {
  _$_SpotifyImage({required this.url, this.height, this.width});

  factory _$_SpotifyImage.fromJson(Map<String, dynamic> json) =>
      _$$_SpotifyImageFromJson(json);

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
            other is _$_SpotifyImage &&
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
  _$$_SpotifyImageCopyWith<_$_SpotifyImage> get copyWith =>
      __$$_SpotifyImageCopyWithImpl<_$_SpotifyImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpotifyImageToJson(
      this,
    );
  }
}

abstract class _SpotifyImage implements SpotifyImage {
  factory _SpotifyImage(
      {required final String url,
      final int? height,
      final int? width}) = _$_SpotifyImage;

  factory _SpotifyImage.fromJson(Map<String, dynamic> json) =
      _$_SpotifyImage.fromJson;

  @override
  String get url;
  @override
  int? get height;
  @override
  int? get width;
  @override
  @JsonKey(ignore: true)
  _$$_SpotifyImageCopyWith<_$_SpotifyImage> get copyWith =>
      throw _privateConstructorUsedError;
}
