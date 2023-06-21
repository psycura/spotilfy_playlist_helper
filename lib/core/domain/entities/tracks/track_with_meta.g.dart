// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_with_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrackWithMetaEntity _$$_TrackWithMetaEntityFromJson(
        Map<String, dynamic> json) =>
    _$_TrackWithMetaEntity(
      added_at: json['added_at'] as String,
      track: TrackEntity.fromJson(json['track'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TrackWithMetaEntityToJson(
        _$_TrackWithMetaEntity instance) =>
    <String, dynamic>{
      'added_at': instance.added_at,
      'track': instance.track.toJson(),
    };
