import 'package:spotify_playlist_helper/core/data/adapters/album_dto_adapter.dart';
import 'package:spotify_playlist_helper/core/data/adapters/playlist_dto_adapter.dart';
import 'package:spotify_playlist_helper/core/data/models/track/track_with_meta_response.dart';
import 'package:spotify_playlist_helper/core/data/storage/artists/artists_collection.dart';
import 'package:spotify_playlist_helper/core/data/storage/tracks/saved_tracks_collection.dart';
import 'package:spotify_playlist_helper/core/data/storage/tracks/tracks_collection.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/playlist.dart';
import 'package:spotify_playlist_helper/features/tracks/domain/entities/track.dart';
import 'package:spotify_playlist_helper/features/tracks/domain/entities/track_with_meta.dart';

import 'artist_dto_adapter.dart';

typedef SavedTrackDtoRecord = (
  SavedTrackDto savedTracks,
  TrackDto track,
  Iterable<ArtistDto> artists,
  AlbumDtoRecord albumRecord,
);

typedef TrackDtoRecord = (
  TrackDto track,
  Iterable<ArtistDto> artists,
  AlbumDtoRecord albumRecord,
);

class TrackWithMetaDtoAdapter {
  final trackAdapter = TrackDtoAdapter();

  TrackWithMetaEntity entityFromDto(TrackDto track, String addedAt) {
    return TrackWithMetaEntity(
      added_at: addedAt,
      track: trackAdapter.entityFromDto(track),
    );
  }

  SavedTrackDtoRecord responseToDto(TrackWithMetaResponse item) {
    final (track, artists, (album, albumArtists)) =
        trackAdapter.responseToDto(item.track);

    final savedTrack = SavedTrackDto()
      ..addedAt = item.added_at
      ..updatedAt = DateTime.now()
      ..track.value = track;

    return (savedTrack, track, artists, (album, albumArtists));
  }
}

class TrackDtoAdapter {
  final artistAdapter = ArtistDtoAdapter();
  final albumAdapter = AlbumDtoAdapter();
  final playlistAdapter = PlaylistDtoAdapter();

  TrackItemResponse responseFromDto(TrackDto item) {
    final album = albumAdapter.fromDto(item.album.value!);
    final artists = item.artists.map(artistAdapter.fromDto);

    return TrackItemResponse(
      href: item.href,
      id: item.spotifyId,
      name: item.name,
      uri: item.uri,
      album: album,
      artists: artists.toList(),
      duration_ms: item.durationMs,
      popularity: item.popularity,
      track_number: item.trackNumber,
      is_playable: item.isPlayable ?? true,
    );
  }

  TrackEntity entityFromDto(TrackDto item) {
    final album = albumAdapter.fromDto(item.album.value!);
    final artists = item.artists.map(artistAdapter.fromDto);

    final playlists = <PlaylistEntity>{};

    for (var p in item.playlists) {
      playlists.add(playlistAdapter.entityFromDto(p.playlist.value!));
    }

    return TrackEntity(
      href: item.href,
      id: item.spotifyId,
      name: item.name,
      uri: item.uri,
      album: album,
      artists: artists.toList(),
      duration_ms: item.durationMs,
      popularity: item.popularity,
      track_number: item.trackNumber,
      is_playable: item.isPlayable ?? true,
      is_saved: item.saved.isNotEmpty,
      playlists: playlists.toList(),
    );
  }

  TrackDtoRecord responseToDto(TrackItemResponse item) {
    final (album, albumArtists) = albumAdapter.toDto(item.album);

    final artists = item.artists.map(artistAdapter.toDto);

    final track = TrackDto()
      ..artists.addAll(artists)
      ..album.value = album
      ..uri = item.uri
      ..href = item.href
      ..updatedAt = DateTime.now()
      ..name = item.name
      ..spotifyId = item.id
      ..durationMs = item.duration_ms
      ..isPlayable = item.is_playable
      ..popularity = item.popularity
      ..previewUrl = item.preview_url
      ..trackNumber = item.track_number;

    return (track, artists, (album, albumArtists));
  }

  TrackDtoRecord entityToDto(TrackEntity item) {
    final (album, albumArtists) = albumAdapter.toDto(item.album);

    final artists = item.artists.map(artistAdapter.toDto);

    final track = TrackDto()
      ..artists.addAll(artists)
      ..album.value = album
      ..uri = item.uri
      ..updatedAt = DateTime.now()
      ..href = item.href
      ..name = item.name
      ..spotifyId = item.id
      ..durationMs = item.duration_ms
      ..isPlayable = item.is_playable
      ..popularity = item.popularity
      ..previewUrl = item.preview_url
      ..trackNumber = item.track_number;

    return (track, artists, (album, albumArtists));
  }
}
