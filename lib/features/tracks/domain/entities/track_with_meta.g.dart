// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_with_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrackWithMeta _$$_TrackWithMetaFromJson(Map<String, dynamic> json) =>
    _$_TrackWithMeta(
      added_at: json['added_at'] as String,
      track: TrackEntity.fromJson(json['track'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TrackWithMetaToJson(_$_TrackWithMeta instance) =>
    <String, dynamic>{
      'added_at': instance.added_at,
      'track': instance.track.toJson(),
    };
