// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_with_meta_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrackWithMetaResponse _$$_TrackWithMetaResponseFromJson(
        Map<String, dynamic> json) =>
    _$_TrackWithMetaResponse(
      added_at: json['added_at'] as String,
      track: TrackItemResponse.fromJson(json['track'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TrackWithMetaResponseToJson(
        _$_TrackWithMetaResponse instance) =>
    <String, dynamic>{
      'added_at': instance.added_at,
      'track': instance.track.toJson(),
    };
