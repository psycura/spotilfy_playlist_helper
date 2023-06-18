import 'package:spotify_playlist_helper/core/data/storage/playlists/playlists_collection.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/simplified_playlist.dart';
import 'package:spotify_playlist_helper/features/tracks/domain/entities/track_with_meta.dart';

import '../storage/tracks/playlist_tracks_collection.dart';
import 'track_dto_adapter.dart';

typedef PlaylistTrackRecord = (
  SimplifiedPlaylist playlist,
  TrackWithMeta track
);

typedef PlaylistTrackDtoRecord = (
  PlaylistTracks playlistTrack,
  TrackDtoRecord trackRecord
);

class PlaylistDtoAdapter {
  SimplifiedPlaylist fromDto(Playlists item) {
    final images = item.images.map((e) => ImageEntity(url: e)).toList();

    return SimplifiedPlaylist(
      href: item.href,
      id: item.id!,
      images: images,
      name: item.name,
      uri: item.uri,
    );
  }

  Playlists toDto(SimplifiedPlaylist item) {
    final images = item.images.map((e) => e.url).toList();

    return Playlists()
      ..images = images
      ..href = item.href
      ..id = item.id
      ..name = item.name
      ..uri = item.uri
      ..updatedAt = DateTime.now();
  }
}

class PlaylistTrackAdapter {
  final tracksAdapter = TrackDtoAdapter();
  final playlistAdapter = PlaylistDtoAdapter();

  PlaylistTrackRecord fromDto(PlaylistTracks item) {
    final images =
        item.playlist.value!.images.map((e) => ImageEntity(url: e)).toList();

    final track = TrackWithMeta(
      added_at: item.addedAt,
      track: tracksAdapter.fromDto(item.track.value!),
    );

    final playlist = SimplifiedPlaylist(
      href: item.playlist.value!.href,
      id: item.playlist.value!.id!,
      images: images,
      name: item.playlist.value!.name,
      uri: item.playlist.value!.uri,
    );

    return (playlist, track);
  }

  PlaylistTrackDtoRecord toDto(
    SimplifiedPlaylist playlist,
    TrackWithMeta trackWithMeta,
  ) {
    final (track, artists, albumRecord) =
        tracksAdapter.toDto(trackWithMeta.track);

    final playlistDto = playlistAdapter.toDto(playlist);

    final playlistTrack = PlaylistTracks()
      ..addedAt = trackWithMeta.added_at
      ..track.value = track
      ..playlist.value = playlistDto
      ..updatedAt = DateTime.now();

    return (playlistTrack, (track, artists, albumRecord));
  }
}
