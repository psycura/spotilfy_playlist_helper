import 'package:spotify_playlist_helper/core/data/models/track/track_with_meta_response.dart';
import 'package:spotify_playlist_helper/core/data/storage/playlists/playlists_collection.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';
import 'package:spotify_playlist_helper/core/data/models/playlist/playlist_item_response.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/playlist.dart';
import 'package:spotify_playlist_helper/features/tracks/domain/entities/track_with_meta.dart';

import '../storage/tracks/playlist_tracks_collection.dart';
import 'track_dto_adapter.dart';

typedef PlaylistTrackEntityRecord = (
  PlaylistEntity playlist,
  TrackWithMetaEntity track
);

typedef PlaylistTrackResponseRecord = (
  PlaylistItemResponse playlist,
  TrackWithMetaResponse track
);

typedef PlaylistTrackDtoRecord = (
  PlaylistTrackDto playlistTrack,
  TrackDtoRecord trackRecord
);

class PlaylistDtoAdapter {
  PlaylistEntity entityFromDto(PlaylistDto item) {
    final images = item.images.map((e) => ImageEntity(url: e)).toList();

    return PlaylistEntity(
      href: item.href,
      id: item.spotifyId,
      images: images,
      name: item.name,
      uri: item.uri,
    );
  }

  PlaylistDto responseToDto(PlaylistItemResponse item) {
    final images = item.images.map((e) => e.url).toList();

    return PlaylistDto()
      ..images = images
      ..href = item.href
      ..spotifyId = item.id
      ..updatedAt = DateTime.now()
      ..name = item.name
      ..uri = item.uri;
  }

  PlaylistDto entityToDto(PlaylistEntity item) {
    final images = item.images.map((e) => e.url).toList();

    return PlaylistDto()
      ..images = images
      ..href = item.href
      ..updatedAt = DateTime.now()
      ..spotifyId = item.id
      ..name = item.name
      ..uri = item.uri;
  }
}

class PlaylistTrackAdapter {
  final tracksAdapter = TrackDtoAdapter();
  final playlistAdapter = PlaylistDtoAdapter();

  PlaylistTrackResponseRecord responseFromDto(PlaylistTrackDto item) {
    final images =
        item.playlist.value!.images.map((e) => ImageEntity(url: e)).toList();

    final track = TrackWithMetaResponse(
      added_at: item.addedAt,
      track: tracksAdapter.responseFromDto(item.track.value!),
    );

    final playlist = PlaylistItemResponse(
      href: item.playlist.value!.href,
      id: item.playlist.value!.spotifyId,
      images: images,
      name: item.playlist.value!.name,
      uri: item.playlist.value!.uri,
    );

    return (playlist, track);
  }

  PlaylistTrackDtoRecord responseToDto(
    PlaylistItemResponse playlist,
    TrackWithMetaResponse trackWithMeta,
  ) {
    final (track, artists, albumRecord) =
        tracksAdapter.responseToDto(trackWithMeta.track);

    final playlistDto = playlistAdapter.responseToDto(playlist);

    final playlistTrack = PlaylistTrackDto()
      ..addedAt = trackWithMeta.added_at
      ..track.value = track
      ..updatedAt = DateTime.now()
      ..playlist.value = playlistDto;

    return (playlistTrack, (track, artists, albumRecord));
  }
}
