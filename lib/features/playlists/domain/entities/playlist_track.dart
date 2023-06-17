import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';

part 'playlist_track.freezed.dart';

part 'playlist_track.g.dart';

@freezed
class PlaylistTrackEntity with _$PlaylistTrackEntity {
  factory PlaylistTrackEntity({
    required String added_at,
    required TrackEntity track,
  }) = _PlaylistTrackEntity;

  factory PlaylistTrackEntity.fromJson(Map<String, dynamic> json) =>
      _$PlaylistTrackEntityFromJson(json);
}
