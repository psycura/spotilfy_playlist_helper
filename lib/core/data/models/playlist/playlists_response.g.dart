// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlists_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaylistsResponse _$PlaylistsResponseFromJson(Map<String, dynamic> json) =>
    PlaylistsResponse(
      href: json['href'] as String,
      limit: json['limit'] as int,
      offset: json['offset'] as int,
      total: json['total'] as int,
      items: (json['items'] as List<dynamic>)
          .map((e) => PlaylistItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
    );

Map<String, dynamic> _$PlaylistsResponseToJson(PlaylistsResponse instance) =>
    <String, dynamic>{
      'href': instance.href,
      'limit': instance.limit,
      'offset': instance.offset,
      'total': instance.total,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'next': instance.next,
      'previous': instance.previous,
    };
