// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlists_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaylistsResponse _$$_PlaylistsResponseFromJson(Map<String, dynamic> json) =>
    _$_PlaylistsResponse(
      href: json['href'] as String,
      limit: json['limit'] as int,
      offset: json['offset'] as int,
      total: json['total'] as int,
      items: (json['items'] as List<dynamic>)
          .map((e) => SimplifiedPlaylist.fromJson(e as Map<String, dynamic>))
          .toList(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
    );

Map<String, dynamic> _$$_PlaylistsResponseToJson(
        _$_PlaylistsResponse instance) =>
    <String, dynamic>{
      'href': instance.href,
      'limit': instance.limit,
      'offset': instance.offset,
      'total': instance.total,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'next': instance.next,
      'previous': instance.previous,
    };
