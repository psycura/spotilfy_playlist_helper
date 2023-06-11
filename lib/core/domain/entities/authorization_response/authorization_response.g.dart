// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorization_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthorizationResponse _$$_AuthorizationResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AuthorizationResponse(
      access_token: json['access_token'] as String,
      token_type: json['token_type'] as String,
      scope: json['scope'] as String,
      expires_in: json['expires_in'] as int,
      refresh_token: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$_AuthorizationResponseToJson(
        _$_AuthorizationResponse instance) =>
    <String, dynamic>{
      'access_token': instance.access_token,
      'token_type': instance.token_type,
      'scope': instance.scope,
      'expires_in': instance.expires_in,
      'refresh_token': instance.refresh_token,
    };
