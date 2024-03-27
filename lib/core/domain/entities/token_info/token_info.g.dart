// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenInfo _$TokenInfoFromJson(Map<String, dynamic> json) => TokenInfo(
      accessToken: json['accessToken'] as String,
      tokenType: json['tokenType'] as String,
      validUntil: json['validUntil'] as int,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$TokenInfoToJson(TokenInfo instance) => <String, dynamic>{
      'accessToken': instance.accessToken,
      'tokenType': instance.tokenType,
      'validUntil': instance.validUntil,
      'refreshToken': instance.refreshToken,
    };
