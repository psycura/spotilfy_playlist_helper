import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';

part 'playlist_track.freezed.dart';

part 'playlist_track.g.dart';

@freezed
class PlaylistTrack with _$PlaylistTrack {
  factory PlaylistTrack({
    required String added_at,
    required Track track,
  }) = _PlaylistTrack;

  factory PlaylistTrack.fromJson(Map<String, dynamic> json) =>
      _$PlaylistTrackFromJson(json);
}
