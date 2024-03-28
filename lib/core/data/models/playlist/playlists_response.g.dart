// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlists_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaylistsResponse _$PlaylistsResponseFromJson(Map<String, dynamic> json) =>
    PlaylistsResponse(
      href: json['href'] as String,
      limit: json['limit'] as int,
      next: json['next'] as String?,
      offset: json['offset'] as int,
      previous: json['previous'] as String?,
      total: json['total'] as int,
      items: (json['items'] as List<dynamic>)
          .map((e) => PlaylistItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PlaylistsResponseToJson(PlaylistsResponse instance) =>
    <String, dynamic>{
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };
