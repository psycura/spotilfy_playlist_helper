// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) => UserProfile(
      display_name: json['display_name'] as String,
      email: json['email'] as String,
      id: json['id'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      uri: json['uri'] as String,
    );

Map<String, dynamic> _$UserProfileToJson(UserProfile instance) =>
    <String, dynamic>{
      'display_name': instance.display_name,
      'email': instance.email,
      'id': instance.id,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'uri': instance.uri,
    };
