// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_with_meta_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrackWithMetaResponse _$TrackWithMetaResponseFromJson(
    Map<String, dynamic> json) {
  return _TrackWithMetaResponse.fromJson(json);
}

/// @nodoc
mixin _$TrackWithMetaResponse {
  String get added_at => throw _privateConstructorUsedError;
  TrackItemResponse get track => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackWithMetaResponseCopyWith<TrackWithMetaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackWithMetaResponseCopyWith<$Res> {
  factory $TrackWithMetaResponseCopyWith(TrackWithMetaResponse value,
          $Res Function(TrackWithMetaResponse) then) =
      _$TrackWithMetaResponseCopyWithImpl<$Res, TrackWithMetaResponse>;
  @useResult
  $Res call({String added_at, TrackItemResponse track});

  $TrackItemResponseCopyWith<$Res> get track;
}

/// @nodoc
class _$TrackWithMetaResponseCopyWithImpl<$Res,
        $Val extends TrackWithMetaResponse>
    implements $TrackWithMetaResponseCopyWith<$Res> {
  _$TrackWithMetaResponseCopyWithImpl(this._value, this._then);

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
              as TrackItemResponse,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TrackItemResponseCopyWith<$Res> get track {
    return $TrackItemResponseCopyWith<$Res>(_value.track, (value) {
      return _then(_value.copyWith(track: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TrackWithMetaResponseCopyWith<$Res>
    implements $TrackWithMetaResponseCopyWith<$Res> {
  factory _$$_TrackWithMetaResponseCopyWith(_$_TrackWithMetaResponse value,
          $Res Function(_$_TrackWithMetaResponse) then) =
      __$$_TrackWithMetaResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String added_at, TrackItemResponse track});

  @override
  $TrackItemResponseCopyWith<$Res> get track;
}

/// @nodoc
class __$$_TrackWithMetaResponseCopyWithImpl<$Res>
    extends _$TrackWithMetaResponseCopyWithImpl<$Res, _$_TrackWithMetaResponse>
    implements _$$_TrackWithMetaResponseCopyWith<$Res> {
  __$$_TrackWithMetaResponseCopyWithImpl(_$_TrackWithMetaResponse _value,
      $Res Function(_$_TrackWithMetaResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? added_at = null,
    Object? track = null,
  }) {
    return _then(_$_TrackWithMetaResponse(
      added_at: null == added_at
          ? _value.added_at
          : added_at // ignore: cast_nullable_to_non_nullable
              as String,
      track: null == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as TrackItemResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TrackWithMetaResponse implements _TrackWithMetaResponse {
  _$_TrackWithMetaResponse({required this.added_at, required this.track});

  factory _$_TrackWithMetaResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TrackWithMetaResponseFromJson(json);

  @override
  final String added_at;
  @override
  final TrackItemResponse track;

  @override
  String toString() {
    return 'TrackWithMetaResponse(added_at: $added_at, track: $track)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrackWithMetaResponse &&
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
  _$$_TrackWithMetaResponseCopyWith<_$_TrackWithMetaResponse> get copyWith =>
      __$$_TrackWithMetaResponseCopyWithImpl<_$_TrackWithMetaResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrackWithMetaResponseToJson(
      this,
    );
  }
}

abstract class _TrackWithMetaResponse implements TrackWithMetaResponse {
  factory _TrackWithMetaResponse(
      {required final String added_at,
      required final TrackItemResponse track}) = _$_TrackWithMetaResponse;

  factory _TrackWithMetaResponse.fromJson(Map<String, dynamic> json) =
      _$_TrackWithMetaResponse.fromJson;

  @override
  String get added_at;
  @override
  TrackItemResponse get track;
  @override
  @JsonKey(ignore: true)
  _$$_TrackWithMetaResponseCopyWith<_$_TrackWithMetaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
