// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_track.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaylistTrack _$$_PlaylistTrackFromJson(Map<String, dynamic> json) =>
    _$_PlaylistTrack(
      added_at: json['added_at'] as String,
      track: Track.fromJson(json['track'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PlaylistTrackToJson(_$_PlaylistTrack instance) =>
    <String, dynamic>{
      'added_at': instance.added_at,
      'track': instance.track.toJson(),
    };
