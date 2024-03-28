import 'package:spotify_playlist_helper/core/data/adapters/album_dto_adapter.dart';
import 'package:spotify_playlist_helper/core/data/adapters/playlist_dto_adapter.dart';
import 'package:spotify_playlist_helper/core/data/storage/collections/tracks/tracks_collection.dart';

import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';
import 'package:spotify_playlist_helper/core/domain/entities/tracks/track.dart';

import 'artist_dto_adapter.dart';

class TrackDtoAdapter {
  final artistAdapter = const ArtistDtoAdapter();
  final albumAdapter = AlbumDtoAdapter();
  final playlistAdapter = const PlaylistDtoAdapter();

  TrackEntity entityFromDto(TrackDto item) {
    return TrackEntity(
      href: item.href,
      id: item.spotifyId,
      name: item.name,
      uri: item.uri,
      album: albumAdapter.fromDto(item.album),
      artists: item.artists.map(artistAdapter.fromDto).toList(),
      duration_ms: item.durationMs,
      popularity: item.popularity,
      track_number: item.trackNumber,
      is_playable: item.isPlayable ?? true,
      is_saved: item.isSaved,
      playlists: item.playlistsIds,
    );
  }

  TrackDto responseToDto(TrackItemResponse item, {bool? isSaved}) {
    final album = albumAdapter.toDto(item.album);


    final artists = item.artists.map(artistAdapter.toDto);

    final track = TrackDto()
      ..artists = artists.toList()
      ..album = album
      ..uri = item.uri
      ..href = item.href
      ..updatedAt = DateTime.now()
      ..name = item.name
      ..spotifyId = item.id
      ..durationMs = item.duration_ms
      ..isPlayable = item.is_playable
      ..popularity = item.popularity
      ..previewUrl = item.preview_url
      ..playlistsIds = <String>[]
      ..trackNumber = item.track_number;

    if (isSaved != null) {
      track.isSaved = isSaved;

      return track;
    }

    return track;
  }

  TrackDto entityToDto(TrackEntity item) {
    final artists = item.artists.map(artistAdapter.toDto);

    return TrackDto()
      ..artists = artists.toList()
      ..album = albumAdapter.toDto(item.album)
      ..uri = item.uri
      ..updatedAt = DateTime.now()
      ..href = item.href
      ..name = item.name
      ..spotifyId = item.id
      ..playlistsIds = item.playlists.map((e) => e).toList()
      ..durationMs = item.duration_ms
      ..isPlayable = item.is_playable
      ..popularity = item.popularity
      ..previewUrl = item.preview_url
      ..trackNumber = item.track_number
      ..isSaved = item.is_saved;
  }
}
