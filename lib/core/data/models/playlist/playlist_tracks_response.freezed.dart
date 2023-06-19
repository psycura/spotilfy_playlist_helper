// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_tracks_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaylistTracksResponse _$PlaylistTracksResponseFromJson(
    Map<String, dynamic> json) {
  return _PlaylistTracksResponse.fromJson(json);
}

/// @nodoc
mixin _$PlaylistTracksResponse {
  String get href => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaylistTracksResponseCopyWith<PlaylistTracksResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistTracksResponseCopyWith<$Res> {
  factory $PlaylistTracksResponseCopyWith(PlaylistTracksResponse value,
          $Res Function(PlaylistTracksResponse) then) =
      _$PlaylistTracksResponseCopyWithImpl<$Res, PlaylistTracksResponse>;
  @useResult
  $Res call({String href, int total});
}

/// @nodoc
class _$PlaylistTracksResponseCopyWithImpl<$Res,
        $Val extends PlaylistTracksResponse>
    implements $PlaylistTracksResponseCopyWith<$Res> {
  _$PlaylistTracksResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlaylistTracksResponseCopyWith<$Res>
    implements $PlaylistTracksResponseCopyWith<$Res> {
  factory _$$_PlaylistTracksResponseCopyWith(_$_PlaylistTracksResponse value,
          $Res Function(_$_PlaylistTracksResponse) then) =
      __$$_PlaylistTracksResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String href, int total});
}

/// @nodoc
class __$$_PlaylistTracksResponseCopyWithImpl<$Res>
    extends _$PlaylistTracksResponseCopyWithImpl<$Res,
        _$_PlaylistTracksResponse>
    implements _$$_PlaylistTracksResponseCopyWith<$Res> {
  __$$_PlaylistTracksResponseCopyWithImpl(_$_PlaylistTracksResponse _value,
      $Res Function(_$_PlaylistTracksResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
    Object? total = null,
  }) {
    return _then(_$_PlaylistTracksResponse(
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaylistTracksResponse implements _PlaylistTracksResponse {
  _$_PlaylistTracksResponse({required this.href, required this.total});

  factory _$_PlaylistTracksResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PlaylistTracksResponseFromJson(json);

  @override
  final String href;
  @override
  final int total;

  @override
  String toString() {
    return 'PlaylistTracksResponse(href: $href, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaylistTracksResponse &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, href, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaylistTracksResponseCopyWith<_$_PlaylistTracksResponse> get copyWith =>
      __$$_PlaylistTracksResponseCopyWithImpl<_$_PlaylistTracksResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaylistTracksResponseToJson(
      this,
    );
  }
}

abstract class _PlaylistTracksResponse implements PlaylistTracksResponse {
  factory _PlaylistTracksResponse(
      {required final String href,
      required final int total}) = _$_PlaylistTracksResponse;

  factory _PlaylistTracksResponse.fromJson(Map<String, dynamic> json) =
      _$_PlaylistTracksResponse.fromJson;

  @override
  String get href;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$_PlaylistTracksResponseCopyWith<_$_PlaylistTracksResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
