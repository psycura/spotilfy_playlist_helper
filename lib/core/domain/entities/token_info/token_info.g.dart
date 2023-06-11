// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenInfo _$$_TokenInfoFromJson(Map<String, dynamic> json) => _$_TokenInfo(
      accessToken: json['accessToken'] as String,
      tokenType: json['tokenType'] as String,
      validUntil: json['validUntil'] as int,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$_TokenInfoToJson(_$_TokenInfo instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'tokenType': instance.tokenType,
      'validUntil': instance.validUntil,
      'refreshToken': instance.refreshToken,
    };
