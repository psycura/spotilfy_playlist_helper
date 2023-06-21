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

TrackWithMetaEntity _$TrackWithMetaEntityFromJson(Map<String, dynamic> json) {
  return _TrackWithMetaEntity.fromJson(json);
}

/// @nodoc
mixin _$TrackWithMetaEntity {
  String get added_at => throw _privateConstructorUsedError;
  TrackEntity get track => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackWithMetaEntityCopyWith<TrackWithMetaEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackWithMetaEntityCopyWith<$Res> {
  factory $TrackWithMetaEntityCopyWith(
          TrackWithMetaEntity value, $Res Function(TrackWithMetaEntity) then) =
      _$TrackWithMetaEntityCopyWithImpl<$Res, TrackWithMetaEntity>;
  @useResult
  $Res call({String added_at, TrackEntity track});

  $TrackEntityCopyWith<$Res> get track;
}

/// @nodoc
class _$TrackWithMetaEntityCopyWithImpl<$Res, $Val extends TrackWithMetaEntity>
    implements $TrackWithMetaEntityCopyWith<$Res> {
  _$TrackWithMetaEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$_TrackWithMetaEntityCopyWith<$Res>
    implements $TrackWithMetaEntityCopyWith<$Res> {
  factory _$$_TrackWithMetaEntityCopyWith(_$_TrackWithMetaEntity value,
          $Res Function(_$_TrackWithMetaEntity) then) =
      __$$_TrackWithMetaEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String added_at, TrackEntity track});

  @override
  $TrackEntityCopyWith<$Res> get track;
}

/// @nodoc
class __$$_TrackWithMetaEntityCopyWithImpl<$Res>
    extends _$TrackWithMetaEntityCopyWithImpl<$Res, _$_TrackWithMetaEntity>
    implements _$$_TrackWithMetaEntityCopyWith<$Res> {
  __$$_TrackWithMetaEntityCopyWithImpl(_$_TrackWithMetaEntity _value,
      $Res Function(_$_TrackWithMetaEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? added_at = null,
    Object? track = null,
  }) {
    return _then(_$_TrackWithMetaEntity(
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
class _$_TrackWithMetaEntity implements _TrackWithMetaEntity {
  _$_TrackWithMetaEntity({required this.added_at, required this.track});

  factory _$_TrackWithMetaEntity.fromJson(Map<String, dynamic> json) =>
      _$$_TrackWithMetaEntityFromJson(json);

  @override
  final String added_at;
  @override
  final TrackEntity track;

  @override
  String toString() {
    return 'TrackWithMetaEntity(added_at: $added_at, track: $track)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrackWithMetaEntity &&
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
  _$$_TrackWithMetaEntityCopyWith<_$_TrackWithMetaEntity> get copyWith =>
      __$$_TrackWithMetaEntityCopyWithImpl<_$_TrackWithMetaEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrackWithMetaEntityToJson(
      this,
    );
  }
}

abstract class _TrackWithMetaEntity implements TrackWithMetaEntity {
  factory _TrackWithMetaEntity(
      {required final String added_at,
      required final TrackEntity track}) = _$_TrackWithMetaEntity;

  factory _TrackWithMetaEntity.fromJson(Map<String, dynamic> json) =
      _$_TrackWithMetaEntity.fromJson;

  @override
  String get added_at;
  @override
  TrackEntity get track;
  @override
  @JsonKey(ignore: true)
  _$$_TrackWithMetaEntityCopyWith<_$_TrackWithMetaEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
