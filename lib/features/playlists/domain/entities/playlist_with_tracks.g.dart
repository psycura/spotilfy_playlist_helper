// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_with_tracks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaylistTracksResponse _$$_PlaylistTracksResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PlaylistTracksResponse(
      href: json['href'] as String,
      total: json['total'] as int,
      items: (json['items'] as List<dynamic>)
          .map((e) => PlaylistTrack.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] as int? ?? 50,
      offset: json['offset'] as int? ?? 0,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
    );

Map<String, dynamic> _$$_PlaylistTracksResponseToJson(
        _$_PlaylistTracksResponse instance) =>
    <String, dynamic>{
      'href': instance.href,
      'total': instance.total,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
      'offset': instance.offset,
      'next': instance.next,
      'previous': instance.previous,
    };
