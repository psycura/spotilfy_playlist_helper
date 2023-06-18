// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_with_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrackWithMeta _$TrackWithMetaFromJson(Map<String, dynamic> json) {
  return _TrackWithMeta.fromJson(json);
}

/// @nodoc
mixin _$TrackWithMeta {
  String get added_at => throw _privateConstructorUsedError;
  TrackEntity get track => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackWithMetaCopyWith<TrackWithMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackWithMetaCopyWith<$Res> {
  factory $TrackWithMetaCopyWith(
          TrackWithMeta value, $Res Function(TrackWithMeta) then) =
      _$TrackWithMetaCopyWithImpl<$Res, TrackWithMeta>;
  @useResult
  $Res call({String added_at, TrackEntity track});

  $TrackEntityCopyWith<$Res> get track;
}

/// @nodoc
class _$TrackWithMetaCopyWithImpl<$Res, $Val extends TrackWithMeta>
    implements $TrackWithMetaCopyWith<$Res> {
  _$TrackWithMetaCopyWithImpl(this._value, this._then);

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
              as TrackEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TrackEntityCopyWith<$Res> get track {
    return $TrackEntityCopyWith<$Res>(_value.track, (value) {
      return _then(_value.copyWith(track: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TrackWithMetaCopyWith<$Res>
    implements $TrackWithMetaCopyWith<$Res> {
  factory _$$_TrackWithMetaCopyWith(
          _$_TrackWithMeta value, $Res Function(_$_TrackWithMeta) then) =
      __$$_TrackWithMetaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String added_at, TrackEntity track});

  @override
  $TrackEntityCopyWith<$Res> get track;
}

/// @nodoc
class __$$_TrackWithMetaCopyWithImpl<$Res>
    extends _$TrackWithMetaCopyWithImpl<$Res, _$_TrackWithMeta>
    implements _$$_TrackWithMetaCopyWith<$Res> {
  __$$_TrackWithMetaCopyWithImpl(
      _$_TrackWithMeta _value, $Res Function(_$_TrackWithMeta) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? added_at = null,
    Object? track = null,
  }) {
    return _then(_$_TrackWithMeta(
      added_at: null == added_at
          ? _value.added_at
          : added_at // ignore: cast_nullable_to_non_nullable
              as String,
      track: null == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as TrackEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TrackWithMeta implements _TrackWithMeta {
  _$_TrackWithMeta({required this.added_at, required this.track});

  factory _$_TrackWithMeta.fromJson(Map<String, dynamic> json) =>
      _$$_TrackWithMetaFromJson(json);

  @override
  final String added_at;
  @override
  final TrackEntity track;

  @override
  String toString() {
    return 'TrackWithMeta(added_at: $added_at, track: $track)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrackWithMeta &&
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
  _$$_TrackWithMetaCopyWith<_$_TrackWithMeta> get copyWith =>
      __$$_TrackWithMetaCopyWithImpl<_$_TrackWithMeta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrackWithMetaToJson(
      this,
    );
  }
}

abstract class _TrackWithMeta implements TrackWithMeta {
  factory _TrackWithMeta(
      {required final String added_at,
      required final TrackEntity track}) = _$_TrackWithMeta;

  factory _TrackWithMeta.fromJson(Map<String, dynamic> json) =
      _$_TrackWithMeta.fromJson;

  @override
  String get added_at;
  @override
  TrackEntity get track;
  @override
  @JsonKey(ignore: true)
  _$$_TrackWithMetaCopyWith<_$_TrackWithMeta> get copyWith =>
      throw _privateConstructorUsedError;
}
