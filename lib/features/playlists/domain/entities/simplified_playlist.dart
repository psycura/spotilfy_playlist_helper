import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';

import 'tracks.dart';

part 'simplified_playlist.freezed.dart';

part 'simplified_playlist.g.dart';

@freezed
class SimplifiedPlaylist with _$SimplifiedPlaylist {
  factory SimplifiedPlaylist({
    required String href,
    required String id,
    required List<SpotifyImage> images,
    required String name,
    required String uri,
    Tracks? tracks,
    String? description,
  }) = _Playlist;

  factory SimplifiedPlaylist.fromJson(Map<String, dynamic> json) =>
      _$SimplifiedPlaylistFromJson(json);
}
