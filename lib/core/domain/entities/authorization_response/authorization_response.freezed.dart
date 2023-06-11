// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authorization_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthorizationResponse _$AuthorizationResponseFromJson(
    Map<String, dynamic> json) {
  return _AuthorizationResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthorizationResponse {
  String get access_token => throw _privateConstructorUsedError;
  String get token_type => throw _privateConstructorUsedError;
  String get scope => throw _privateConstructorUsedError;
  int get expires_in => throw _privateConstructorUsedError;
  String get refresh_token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorizationResponseCopyWith<AuthorizationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationResponseCopyWith<$Res> {
  factory $AuthorizationResponseCopyWith(AuthorizationResponse value,
          $Res Function(AuthorizationResponse) then) =
      _$AuthorizationResponseCopyWithImpl<$Res, AuthorizationResponse>;
  @useResult
  $Res call(
      {String access_token,
      String token_type,
      String scope,
      int expires_in,
      String refresh_token});
}

/// @nodoc
class _$AuthorizationResponseCopyWithImpl<$Res,
        $Val extends AuthorizationResponse>
    implements $AuthorizationResponseCopyWith<$Res> {
  _$AuthorizationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access_token = null,
    Object? token_type = null,
    Object? scope = null,
    Object? expires_in = null,
    Object? refresh_token = null,
  }) {
    return _then(_value.copyWith(
      access_token: null == access_token
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
      token_type: null == token_type
          ? _value.token_type
          : token_type // ignore: cast_nullable_to_non_nullable
              as String,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      expires_in: null == expires_in
          ? _value.expires_in
          : expires_in // ignore: cast_nullable_to_non_nullable
              as int,
      refresh_token: null == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthorizationResponseCopyWith<$Res>
    implements $AuthorizationResponseCopyWith<$Res> {
  factory _$$_AuthorizationResponseCopyWith(_$_AuthorizationResponse value,
          $Res Function(_$_AuthorizationResponse) then) =
      __$$_AuthorizationResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String access_token,
      String token_type,
      String scope,
      int expires_in,
      String refresh_token});
}

/// @nodoc
class __$$_AuthorizationResponseCopyWithImpl<$Res>
    extends _$AuthorizationResponseCopyWithImpl<$Res, _$_AuthorizationResponse>
    implements _$$_AuthorizationResponseCopyWith<$Res> {
  __$$_AuthorizationResponseCopyWithImpl(_$_AuthorizationResponse _value,
      $Res Function(_$_AuthorizationResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access_token = null,
    Object? token_type = null,
    Object? scope = null,
    Object? expires_in = null,
    Object? refresh_token = null,
  }) {
    return _then(_$_AuthorizationResponse(
      access_token: null == access_token
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
      token_type: null == token_type
          ? _value.token_type
          : token_type // ignore: cast_nullable_to_non_nullable
              as String,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      expires_in: null == expires_in
          ? _value.expires_in
          : expires_in // ignore: cast_nullable_to_non_nullable
              as int,
      refresh_token: null == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthorizationResponse implements _AuthorizationResponse {
  const _$_AuthorizationResponse(
      {required this.access_token,
      required this.token_type,
      required this.scope,
      required this.expires_in,
      required this.refresh_token});

  factory _$_AuthorizationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AuthorizationResponseFromJson(json);

  @override
  final String access_token;
  @override
  final String token_type;
  @override
  final String scope;
  @override
  final int expires_in;
  @override
  final String refresh_token;

  @override
  String toString() {
    return 'AuthorizationResponse(access_token: $access_token, token_type: $token_type, scope: $scope, expires_in: $expires_in, refresh_token: $refresh_token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthorizationResponse &&
            (identical(other.access_token, access_token) ||
                other.access_token == access_token) &&
            (identical(other.token_type, token_type) ||
                other.token_type == token_type) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.expires_in, expires_in) ||
                other.expires_in == expires_in) &&
            (identical(other.refresh_token, refresh_token) ||
                other.refresh_token == refresh_token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, access_token, token_type, scope, expires_in, refresh_token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthorizationResponseCopyWith<_$_AuthorizationResponse> get copyWith =>
      __$$_AuthorizationResponseCopyWithImpl<_$_AuthorizationResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthorizationResponseToJson(
      this,
    );
  }
}

abstract class _AuthorizationResponse implements AuthorizationResponse {
  const factory _AuthorizationResponse(
      {required final String access_token,
      required final String token_type,
      required final String scope,
      required final int expires_in,
      required final String refresh_token}) = _$_AuthorizationResponse;

  factory _AuthorizationResponse.fromJson(Map<String, dynamic> json) =
      _$_AuthorizationResponse.fromJson;

  @override
  String get access_token;
  @override
  String get token_type;
  @override
  String get scope;
  @override
  int get expires_in;
  @override
  String get refresh_token;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorizationResponseCopyWith<_$_AuthorizationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
