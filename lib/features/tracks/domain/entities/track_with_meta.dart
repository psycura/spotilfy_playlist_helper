import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';

part 'track_with_meta.freezed.dart';

part 'track_with_meta.g.dart';

@freezed
class TrackWithMeta with _$TrackWithMeta {
  factory TrackWithMeta({
    required String added_at,
    required TrackEntity track,
  }) = _TrackWithMeta;

  factory TrackWithMeta.fromJson(Map<String, dynamic> json) =>
      _$TrackWithMetaFromJson(json);
}
