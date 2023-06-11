// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiRequest {
  String get url => throw _privateConstructorUsedError;
  Options? get options => throw _privateConstructorUsedError;
  Object? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiRequestCopyWith<ApiRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiRequestCopyWith<$Res> {
  factory $ApiRequestCopyWith(
          ApiRequest value, $Res Function(ApiRequest) then) =
      _$ApiRequestCopyWithImpl<$Res, ApiRequest>;
  @useResult
  $Res call({String url, Options? options, Object? data});
}

/// @nodoc
class _$ApiRequestCopyWithImpl<$Res, $Val extends ApiRequest>
    implements $ApiRequestCopyWith<$Res> {
  _$ApiRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? options = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Options?,
      data: freezed == data ? _value.data : data,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiRequestCopyWith<$Res>
    implements $ApiRequestCopyWith<$Res> {
  factory _$$_ApiRequestCopyWith(
          _$_ApiRequest value, $Res Function(_$_ApiRequest) then) =
      __$$_ApiRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, Options? options, Object? data});
}

/// @nodoc
class __$$_ApiRequestCopyWithImpl<$Res>
    extends _$ApiRequestCopyWithImpl<$Res, _$_ApiRequest>
    implements _$$_ApiRequestCopyWith<$Res> {
  __$$_ApiRequestCopyWithImpl(
      _$_ApiRequest _value, $Res Function(_$_ApiRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? options = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ApiRequest(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Options?,
      data: freezed == data ? _value.data : data,
    ));
  }
}

/// @nodoc

class _$_ApiRequest implements _ApiRequest {
  _$_ApiRequest({required this.url, this.options, this.data});

  @override
  final String url;
  @override
  final Options? options;
  @override
  final Object? data;

  @override
  String toString() {
    return 'ApiRequest(url: $url, options: $options, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiRequest &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.options, options) || other.options == options) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, url, options, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiRequestCopyWith<_$_ApiRequest> get copyWith =>
      __$$_ApiRequestCopyWithImpl<_$_ApiRequest>(this, _$identity);
}

abstract class _ApiRequest implements ApiRequest {
  factory _ApiRequest(
      {required final String url,
      final Options? options,
      final Object? data}) = _$_ApiRequest;

  @override
  String get url;
  @override
  Options? get options;
  @override
  Object? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ApiRequestCopyWith<_$_ApiRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
