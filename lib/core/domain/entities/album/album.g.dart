// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AlbumEntity _$$_AlbumEntityFromJson(Map<String, dynamic> json) =>
    _$_AlbumEntity(
      href: json['href'] as String,
      id: json['id'] as String,
      name: json['name'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AlbumEntityToJson(_$_AlbumEntity instance) =>
    <String, dynamic>{
      'href': instance.href,
      'id': instance.id,
      'name': instance.name,
      'images': instance.images.map((e) => e.toJson()).toList(),
    };
