// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaylistEntity _$PlaylistEntityFromJson(Map<String, dynamic> json) =>
    PlaylistEntity(
      href: json['href'] as String,
      id: json['id'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      uri: json['uri'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$PlaylistEntityToJson(PlaylistEntity instance) =>
    <String, dynamic>{
      'href': instance.href,
      'id': instance.id,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'name': instance.name,
      'uri': instance.uri,
      'description': instance.description,
    };
