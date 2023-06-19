import 'package:freezed_annotation/freezed_annotation.dart';

import 'track.dart';

part 'track_with_meta.freezed.dart';

part 'track_with_meta.g.dart';

@freezed
class TrackWithMetaEntity with _$TrackWithMetaEntity {
  factory TrackWithMetaEntity({
    required String added_at,
    required TrackEntity track,
  }) = _TrackWithMetaEntity;

  factory TrackWithMetaEntity.fromJson(Map<String, dynamic> json) =>
      _$TrackWithMetaEntityFromJson(json);
}
