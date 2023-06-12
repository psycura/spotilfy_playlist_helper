// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simplified_playlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Playlist _$$_PlaylistFromJson(Map<String, dynamic> json) => _$_Playlist(
      href: json['href'] as String,
      id: json['id'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => SpotifyImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      uri: json['uri'] as String,
      tracks: json['tracks'] == null
          ? null
          : Tracks.fromJson(json['tracks'] as Map<String, dynamic>),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_PlaylistToJson(_$_Playlist instance) =>
    <String, dynamic>{
      'href': instance.href,
      'id': instance.id,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'name': instance.name,
      'uri': instance.uri,
      'tracks': instance.tracks?.toJson(),
      'description': instance.description,
    };
