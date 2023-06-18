import 'package:spotify_playlist_helper/core/data/adapters/album_dto_adapter.dart';
import 'package:spotify_playlist_helper/core/data/storage/artists/artists_collection.dart';
import 'package:spotify_playlist_helper/core/data/storage/tracks/saved_tracks_collection.dart';
import 'package:spotify_playlist_helper/core/data/storage/tracks/tracks_collection.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';
import 'package:spotify_playlist_helper/features/tracks/domain/entities/track_with_meta.dart';

import 'artist_dto_adapter.dart';

typedef SavedTrackDtoRecord = (
  SavedTracks savedTracks,
  Tracks track,
  Iterable<Artists> artists,
  AlbumDtoRecord albumRecord,
);

typedef TrackDtoRecord = (
  Tracks track,
  Iterable<Artists> artists,
  AlbumDtoRecord albumRecord,
);

class TrackWithMetaDtoAdapter {
  final trackAdapter = TrackDtoAdapter();

  TrackWithMeta fromDto(Tracks track, String addedAt) {
    return TrackWithMeta(
      added_at: addedAt,
      track: trackAdapter.fromDto(track),
    );
  }

  SavedTrackDtoRecord toDto(TrackWithMeta item, {bool? isSaved}) {
    final (track, artists, (album, albumArtists)) =
        trackAdapter.toDto(item.track, isSaved: isSaved);

    final savedTrack = SavedTracks()
      ..updatedAt = DateTime.now()
      ..addedAt = item.added_at
      ..track.value = track;

    return (savedTrack, track, artists, (album, albumArtists));
  }
}

class TrackDtoAdapter {
  final artistAdapter = ArtistDtoAdapter();
  final albumAdapter = AlbumDtoAdapter();

  TrackEntity fromDto(Tracks item) {
    final album = albumAdapter.fromDto(item.album.value!);
    final artists = item.artists.map(artistAdapter.fromDto);

    return TrackEntity(
      href: item.href,
      id: item.id!,
      name: item.name,
      uri: item.uri,
      album: album,
      artists: artists.toList(),
      duration_ms: item.durationMs,
      popularity: item.popularity,
      track_number: item.trackNumber,
      is_playable: item.isPlayable ?? true,
      is_saved: item.isSaved ?? false,
    );
  }

  TrackDtoRecord toDto(TrackEntity item, {bool? isSaved}) {
    final (album, albumArtists) = albumAdapter.toDto(item.album);

    final artists = item.artists.map(artistAdapter.toDto);

    final track = Tracks()
      ..artists.addAll(artists)
      ..album.value = album
      ..updatedAt = DateTime.now()
      ..uri = item.uri
      ..href = item.href
      ..name = item.name
      ..id = item.id
      ..durationMs = item.duration_ms
      ..isPlayable = item.is_playable
      ..popularity = item.popularity
      ..previewUrl = item.preview_url
      ..trackNumber = item.track_number;

    if (isSaved != null) track.isSaved = isSaved;

    return (track, artists, (album, albumArtists));
  }
}
