// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_with_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackWithMetaEntity _$TrackWithMetaEntityFromJson(Map<String, dynamic> json) =>
    TrackWithMetaEntity(
      added_at: json['added_at'] as String,
      track: TrackEntity.fromJson(json['track'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TrackWithMetaEntityToJson(
        TrackWithMetaEntity instance) =>
    <String, dynamic>{
      'added_at': instance.added_at,
      'track': instance.track.toJson(),
    };
