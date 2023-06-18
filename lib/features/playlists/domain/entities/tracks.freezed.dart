// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TracksEntity _$TracksEntityFromJson(Map<String, dynamic> json) {
  return _TracksEntity.fromJson(json);
}

/// @nodoc
mixin _$TracksEntity {
  String get href => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TracksEntityCopyWith<TracksEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TracksEntityCopyWith<$Res> {
  factory $TracksEntityCopyWith(
          TracksEntity value, $Res Function(TracksEntity) then) =
      _$TracksEntityCopyWithImpl<$Res, TracksEntity>;
  @useResult
  $Res call({String href, int total});
}

/// @nodoc
class _$TracksEntityCopyWithImpl<$Res, $Val extends TracksEntity>
    implements $TracksEntityCopyWith<$Res> {
  _$TracksEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$_TracksEntityCopyWith<$Res>
    implements $TracksEntityCopyWith<$Res> {
  factory _$$_TracksEntityCopyWith(
          _$_TracksEntity value, $Res Function(_$_TracksEntity) then) =
      __$$_TracksEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String href, int total});
}

/// @nodoc
class __$$_TracksEntityCopyWithImpl<$Res>
    extends _$TracksEntityCopyWithImpl<$Res, _$_TracksEntity>
    implements _$$_TracksEntityCopyWith<$Res> {
  __$$_TracksEntityCopyWithImpl(
      _$_TracksEntity _value, $Res Function(_$_TracksEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
    Object? total = null,
  }) {
    return _then(_$_TracksEntity(
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
class _$_TracksEntity implements _TracksEntity {
  _$_TracksEntity({required this.href, required this.total});

  factory _$_TracksEntity.fromJson(Map<String, dynamic> json) =>
      _$$_TracksEntityFromJson(json);

  @override
  final String href;
  @override
  final int total;

  @override
  String toString() {
    return 'TracksEntity(href: $href, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TracksEntity &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, href, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TracksEntityCopyWith<_$_TracksEntity> get copyWith =>
      __$$_TracksEntityCopyWithImpl<_$_TracksEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TracksEntityToJson(
      this,
    );
  }
}

abstract class _TracksEntity implements TracksEntity {
  factory _TracksEntity(
      {required final String href, required final int total}) = _$_TracksEntity;

  factory _TracksEntity.fromJson(Map<String, dynamic> json) =
      _$_TracksEntity.fromJson;

  @override
  String get href;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$_TracksEntityCopyWith<_$_TracksEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
