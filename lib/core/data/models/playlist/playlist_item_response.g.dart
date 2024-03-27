// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaylistItemResponse _$PlaylistItemResponseFromJson(
        Map<String, dynamic> json) =>
    PlaylistItemResponse(
      href: json['href'] as String,
      id: json['id'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      uri: json['uri'] as String,
      tracks: json['tracks'] == null
          ? null
          : PlaylistTracksResponse.fromJson(
              json['tracks'] as Map<String, dynamic>),
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$PlaylistItemResponseToJson(
        PlaylistItemResponse instance) =>
    <String, dynamic>{
      'href': instance.href,
      'id': instance.id,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'name': instance.name,
      'uri': instance.uri,
      'tracks': instance.tracks?.toJson(),
      'owner': instance.owner?.toJson(),
      'description': instance.description,
    };
