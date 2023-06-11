// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RefreshTokenResponse _$$_RefreshTokenResponseFromJson(
        Map<String, dynamic> json) =>
    _$_RefreshTokenResponse(
      access_token: json['access_token'] as String,
      token_type: json['token_type'] as String,
      scope: json['scope'] as String,
      expires_in: json['expires_in'] as int,
    );

Map<String, dynamic> _$$_RefreshTokenResponseToJson(
        _$_RefreshTokenResponse instance) =>
    <String, dynamic>{
      'access_token': instance.access_token,
      'token_type': instance.token_type,
      'scope': instance.scope,
      'expires_in': instance.expires_in,
    };
