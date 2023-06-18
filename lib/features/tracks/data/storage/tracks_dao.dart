import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/core/data/adapters/playlist_dto_adapter.dart';
import 'package:spotify_playlist_helper/core/data/adapters/track_dto_adapter.dart';
import 'package:spotify_playlist_helper/core/data/storage/albums/albums_collection.dart';
import 'package:spotify_playlist_helper/core/data/storage/artists/artists_collection.dart';
import 'package:spotify_playlist_helper/core/data/storage/playlists/playlists_collection.dart';
import 'package:spotify_playlist_helper/core/data/storage/tracks/playlist_tracks_collection.dart';
import 'package:spotify_playlist_helper/core/data/storage/tracks/saved_tracks_collection.dart';
import 'package:spotify_playlist_helper/core/data/storage/tracks/tracks_collection.dart';
import 'package:spotify_playlist_helper/core/utils/hash_function.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/simplified_playlist.dart';
import 'package:spotify_playlist_helper/features/tracks/domain/entities/track_with_meta.dart';

abstract interface class ITracksDao {
  Stream<Iterable<TrackWithMeta>> getSavedTracksStream();

  Stream<Iterable<TrackWithMeta>> getPlaylistTracksStream(String playlistId);

  Future<void> saveSavedTracks(List<TrackWithMeta> items);

  Future<void> savePlaylistTracks(
    SimplifiedPlaylist playlist,
    List<TrackWithMeta> items,
  );
}

@Singleton(as: ITracksDao)
class TracksDao implements ITracksDao {
  @protected
  final Isar db;

  @protected
  Logger logger;

  final tracksAdapter = TrackWithMetaDtoAdapter();
  final playlistTrackAdapter = PlaylistTrackAdapter();
  final playlistAdapter = PlaylistDtoAdapter();

  TracksDao(this.logger, this.db);

  @override
  Stream<Iterable<TrackWithMeta>> getSavedTracksStream() {
    Query<SavedTracks> tracks =
        db.savedTracks.filter().track((q) => q.isSavedEqualTo(true)).build();

    return tracks.watch(fireImmediately: true).map(
          (items) => items.map(
            (e) => tracksAdapter.fromDto(e.track.value!, e.addedAt),
          ),
        );
  }

  @override
  Future<void> saveSavedTracks(List<TrackWithMeta> items) async {
    await db.writeTxn(() async {
      for (var item in items) {
        final (savedTrack, track, artists, (album, albumArtists)) =
            tracksAdapter.toDto(item, isSaved: true);

        await db.savedTracks.put(savedTrack);
        await db.tracks.put(track);
        await db.albums.put(album);
        await db.artists.putAll(artists.toList());
        await db.artists.putAll(albumArtists.toList());

        await album.artists.save();
        await track.album.save();
        await track.artists.save();
        await savedTrack.track.save();
      }
    });
  }

  @override
  Future<void> savePlaylistTracks(
    SimplifiedPlaylist playlist,
    List<TrackWithMeta> items,
  ) async {
    final playListDto = playlistAdapter.toDto(playlist);

    await db.writeTxn(() async {
      await db.playlists.put(playListDto);

      for (var item in items) {
        final (playlistTrack, (track, artists, (album, albumArtists))) =
            playlistTrackAdapter.toDto(playlist, item);

        await db.playlistTracks.put(playlistTrack);
        await db.tracks.put(track);
        await db.albums.put(album);
        await db.artists.putAll(artists.toList());
        await db.artists.putAll(albumArtists.toList());

        await album.artists.save();
        await track.album.save();
        await track.artists.save();
        await playlistTrack.track.save();
        await playlistTrack.playlist.save();
      }
    });
  }

  @override
  Stream<Iterable<TrackWithMeta>> getPlaylistTracksStream(String playlistId) {
    Query<PlaylistTracks> playlistTracks = db.playlistTracks
        .filter()
        .playlist((q) => q.isarIdEqualTo(fastHash(playlistId)))
        .build();

    return playlistTracks.watch(fireImmediately: true).map(
          (items) => items.map(
            (e) => tracksAdapter.fromDto(e.track.value!, e.addedAt),
          ),
        );
  }
}
