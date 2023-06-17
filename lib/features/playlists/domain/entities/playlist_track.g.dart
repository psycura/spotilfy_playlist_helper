// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_track.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaylistTrackEntity _$$_PlaylistTrackEntityFromJson(
        Map<String, dynamic> json) =>
    _$_PlaylistTrackEntity(
      added_at: json['added_at'] as String,
      track: TrackEntity.fromJson(json['track'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PlaylistTrackEntityToJson(
        _$_PlaylistTrackEntity instance) =>
    <String, dynamic>{
      'added_at': instance.added_at,
      'track': instance.track.toJson(),
    };
