// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfile _$$_UserProfileFromJson(Map<String, dynamic> json) =>
    _$_UserProfile(
      displayName: json['displayName'] as String,
      email: json['email'] as String,
      id: json['id'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      uri: json['uri'] as String,
    );

Map<String, dynamic> _$$_UserProfileToJson(_$_UserProfile instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'email': instance.email,
      'id': instance.id,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'uri': instance.uri,
    };
