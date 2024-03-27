// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_with_meta_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackWithMetaResponse _$TrackWithMetaResponseFromJson(
        Map<String, dynamic> json) =>
    TrackWithMetaResponse(
      added_at: json['added_at'] as String,
      track: TrackItemResponse.fromJson(json['track'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TrackWithMetaResponseToJson(
        TrackWithMetaResponse instance) =>
    <String, dynamic>{
      'added_at': instance.added_at,
      'track': instance.track.toJson(),
    };
