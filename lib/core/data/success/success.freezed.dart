// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SuccessEmpty {}

/// @nodoc
abstract class $SuccessEmptyCopyWith<$Res> {
  factory $SuccessEmptyCopyWith(
          SuccessEmpty value, $Res Function(SuccessEmpty) then) =
      _$SuccessEmptyCopyWithImpl<$Res, SuccessEmpty>;
}

/// @nodoc
class _$SuccessEmptyCopyWithImpl<$Res, $Val extends SuccessEmpty>
    implements $SuccessEmptyCopyWith<$Res> {
  _$SuccessEmptyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SuccessEmptyCopyWith<$Res> {
  factory _$$_SuccessEmptyCopyWith(
          _$_SuccessEmpty value, $Res Function(_$_SuccessEmpty) then) =
      __$$_SuccessEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessEmptyCopyWithImpl<$Res>
    extends _$SuccessEmptyCopyWithImpl<$Res, _$_SuccessEmpty>
    implements _$$_SuccessEmptyCopyWith<$Res> {
  __$$_SuccessEmptyCopyWithImpl(
      _$_SuccessEmpty _value, $Res Function(_$_SuccessEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SuccessEmpty implements _SuccessEmpty {
  const _$_SuccessEmpty();

  @override
  String toString() {
    return 'SuccessEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SuccessEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _SuccessEmpty implements SuccessEmpty {
  const factory _SuccessEmpty() = _$_SuccessEmpty;
}

/// @nodoc
mixin _$SuccessValue<Type> {
  Type get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SuccessValueCopyWith<Type, SuccessValue<Type>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessValueCopyWith<Type, $Res> {
  factory $SuccessValueCopyWith(
          SuccessValue<Type> value, $Res Function(SuccessValue<Type>) then) =
      _$SuccessValueCopyWithImpl<Type, $Res, SuccessValue<Type>>;
  @useResult
  $Res call({Type value});
}

/// @nodoc
class _$SuccessValueCopyWithImpl<Type, $Res, $Val extends SuccessValue<Type>>
    implements $SuccessValueCopyWith<Type, $Res> {
  _$SuccessValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Type,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SuccessValueCopyWith<Type, $Res>
    implements $SuccessValueCopyWith<Type, $Res> {
  factory _$$_SuccessValueCopyWith(_$_SuccessValue<Type> value,
          $Res Function(_$_SuccessValue<Type>) then) =
      __$$_SuccessValueCopyWithImpl<Type, $Res>;
  @override
  @useResult
  $Res call({Type value});
}

/// @nodoc
class __$$_SuccessValueCopyWithImpl<Type, $Res>
    extends _$SuccessValueCopyWithImpl<Type, $Res, _$_SuccessValue<Type>>
    implements _$$_SuccessValueCopyWith<Type, $Res> {
  __$$_SuccessValueCopyWithImpl(
      _$_SuccessValue<Type> _value, $Res Function(_$_SuccessValue<Type>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_SuccessValue<Type>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Type,
    ));
  }
}

/// @nodoc

class _$_SuccessValue<Type> implements _SuccessValue<Type> {
  const _$_SuccessValue(this.value);

  @override
  final Type value;

  @override
  String toString() {
    return 'SuccessValue<$Type>(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessValue<Type> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessValueCopyWith<Type, _$_SuccessValue<Type>> get copyWith =>
      __$$_SuccessValueCopyWithImpl<Type, _$_SuccessValue<Type>>(
          this, _$identity);
}

abstract class _SuccessValue<Type> implements SuccessValue<Type> {
  const factory _SuccessValue(final Type value) = _$_SuccessValue<Type>;

  @override
  Type get value;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessValueCopyWith<Type, _$_SuccessValue<Type>> get copyWith =>
      throw _privateConstructorUsedError;
}
