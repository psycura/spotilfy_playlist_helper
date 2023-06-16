import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/playlist_track.dart';

part 'playlist_with_tracks.freezed.dart';

part 'playlist_with_tracks.g.dart';

@freezed
class PlaylistWithTracks with _$PlaylistWithTracks {
  factory PlaylistWithTracks({
    required String href,
    required int total,
    required List<PlaylistTrack> items,
    @Default(50) int limit,
    @Default(0) int offset,
    String? next,
    String? previous,
  }) = _PlaylistTracksResponse;

  factory PlaylistWithTracks.fromJson(Map<String, dynamic> json) =>
      _$PlaylistWithTracksFromJson(json);
}
