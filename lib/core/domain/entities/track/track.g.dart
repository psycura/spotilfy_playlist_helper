// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Track _$$_TrackFromJson(Map<String, dynamic> json) => _$_Track(
      album: Album.fromJson(json['album'] as Map<String, dynamic>),
      artists: (json['artists'] as List<dynamic>)
          .map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
      duration_ms: json['duration_ms'] as int,
      href: json['href'] as String,
      id: json['id'] as String,
      name: json['name'] as String,
      popularity: json['popularity'] as int,
      track_number: json['track_number'] as int,
      uri: json['uri'] as String,
      preview_url: json['preview_url'] as String? ?? '',
      is_playable: json['is_playable'] as bool? ?? true,
      is_saved: json['is_saved'] as bool? ?? false,
    );

Map<String, dynamic> _$$_TrackToJson(_$_Track instance) => <String, dynamic>{
      'album': instance.album.toJson(),
      'artists': instance.artists.map((e) => e.toJson()).toList(),
      'duration_ms': instance.duration_ms,
      'href': instance.href,
      'id': instance.id,
      'name': instance.name,
      'popularity': instance.popularity,
      'track_number': instance.track_number,
      'uri': instance.uri,
      'preview_url': instance.preview_url,
      'is_playable': instance.is_playable,
      'is_saved': instance.is_saved,
    };
