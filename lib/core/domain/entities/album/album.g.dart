// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AlbumEntity _$$_AlbumEntityFromJson(Map<String, dynamic> json) =>
    _$_AlbumEntity(
      album_type: json['album_type'] as String,
      total_tracks: json['total_tracks'] as int,
      href: json['href'] as String,
      id: json['id'] as String,
      name: json['name'] as String,
      release_date: json['release_date'] as String,
      release_date_precision: json['release_date_precision'] as String,
      uri: json['uri'] as String,
      images: json['images'] as List<dynamic>,
      artists: (json['artists'] as List<dynamic>)
          .map((e) => ArtistEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AlbumEntityToJson(_$_AlbumEntity instance) =>
    <String, dynamic>{
      'album_type': instance.album_type,
      'total_tracks': instance.total_tracks,
      'href': instance.href,
      'id': instance.id,
      'name': instance.name,
      'release_date': instance.release_date,
      'release_date_precision': instance.release_date_precision,
      'uri': instance.uri,
      'images': instance.images,
      'artists': instance.artists.map((e) => e.toJson()).toList(),
    };
