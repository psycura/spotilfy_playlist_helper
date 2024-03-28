import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/core/data/adapters/playlist_dto_adapter.dart';
import 'package:spotify_playlist_helper/core/data/adapters/track_dto_adapter.dart';
import 'package:spotify_playlist_helper/core/data/models/playlist/playlist_item_response.dart';
import 'package:spotify_playlist_helper/core/data/models/track/track_with_meta_response.dart';
import 'package:spotify_playlist_helper/core/data/storage/collections/playlists/playlists_collection.dart';
import 'package:spotify_playlist_helper/core/data/storage/collections/tracks/tracks_collection.dart';
import 'package:spotify_playlist_helper/core/domain/entities/tracks/track.dart';
import 'package:spotify_playlist_helper/core/utils/hash_function.dart';

abstract interface class ITracksDao {
  Stream<Iterable<TrackEntity>> getSavedTracksStream();

  Stream<Iterable<TrackEntity>> getPlaylistTracksStream(
    String playlistId,
  );

  Stream<TrackEntity> getTrackStream(String trackId);

  Future<void> saveSavedTracks(List<TrackWithMetaResponse> items);

  Future<Iterable<TrackEntity>> getUnlinkedTracks();

  Future<void> wipeAllData();

  Future<void> savePlaylistTracks(
    PlaylistItemResponse playlist,
    List<TrackWithMetaResponse> items,
  );

  Future<void> addTrackToSaved(TrackEntity track);

  Future<void> removeTrackFromSaved(String id);
}

@Singleton(as: ITracksDao)
class TracksDao implements ITracksDao {
  @protected
  final Isar db;

  @protected
  Logger logger;

  final tracksAdapter = TrackDtoAdapter();
  final playlistAdapter = const PlaylistDtoAdapter();

  TracksDao(this.logger, this.db);

  @override
  Stream<Iterable<TrackEntity>> getSavedTracksStream() {
    Query<TrackDto> tracks =
        db.tracks.filter().isSavedEqualTo(true).nameIsNotEmpty().build();

    return tracks.watch(fireImmediately: true).map(
          (items) => items.map(tracksAdapter.entityFromDto),
        );
  }

  @override
  Future<void> saveSavedTracks(List<TrackWithMetaResponse> items) async {
    await db.writeTxn(() async {
      final tempTracks =
          await db.tracks.filter().isSavedEqualTo(true).findAll();

      await db.tracks.filter().isSavedEqualTo(true).deleteAll();

      for (var item in items) {
        var tempTrack =
            tempTracks.firstWhereOrNull((e) => e.spotifyId == item.track.id);
        if (tempTrack != null) {
          tempTrack.isSaved = true;

          await db.tracks.put(tempTrack);
        } else {
          await db.tracks
              .put(tracksAdapter.responseToDto(item.track, isSaved: true));
        }
      }
    });
  }

  @override
  Future<void> savePlaylistTracks(
    PlaylistItemResponse playlist,
    List<TrackWithMetaResponse> items,
  ) async {
    final playListDto = playlistAdapter.responseToDto(playlist);

    await db.writeTxn(() async {
      await db.playlists.put(playListDto);

      var tempTracks = await db.tracks
          .filter()
          .playlistsIdsElementContains(playlist.id)
          .findAll();

      await db.tracks
          .filter()
          .playlistsIdsElementContains(playlist.id)
          .deleteAll();

      for (var item in items) {
        final track = tracksAdapter.responseToDto(item.track);

        var tempTrack =
            tempTracks.firstWhereOrNull((e) => e.spotifyId == track.spotifyId);

        if (tempTrack != null) {
          await db.tracks.put(tempTrack);
        } else {
          tempTrack = await db.tracks.get(fastHash(track.spotifyId));

          if (tempTrack == null ||
              tempTrack.playlistsIds.contains(playlist.id)) {
            await db.tracks.put(track);
          } else {
            var playlists = <String>[...tempTrack.playlistsIds];
            playlists.add(playlist.id);

            tempTrack.playlistsIds = playlists;

            await db.tracks.put(tempTrack);
          }
        }
      }
    });
  }

  @override
  Stream<Iterable<TrackEntity>> getPlaylistTracksStream(
    String playlistId,
  ) {
    Query<TrackDto> playlistTracks =
        db.tracks.filter().playlistsIdsElementContains(playlistId).build();

    return playlistTracks.watch(fireImmediately: true).map(
          (items) => items.map(tracksAdapter.entityFromDto),
        );
  }

  @override
  Future<void> addTrackToSaved(TrackEntity track) async {
    await db.writeTxn(() async {
      final trackToUpdate = await db.tracks.get(fastHash(track.id));

      if (trackToUpdate != null) {
        trackToUpdate.isSaved = true;
        await db.tracks.put(trackToUpdate);
      } else {
        await db.tracks
            .put(tracksAdapter.entityToDto(track.copyWith(is_saved: true)));
      }
    });
  }

  @override
  Future<void> removeTrackFromSaved(String id) async {
    await db.writeTxn(() async {
      final trackId = fastHash(id);
      final track = await db.tracks.get(trackId);

      if (track != null) {
        if (track.playlistsIds.isEmpty) {
          await db.tracks.delete(trackId);
        } else {
          track.isSaved = false;
          await db.tracks.put(track);
        }
      }
    });
  }

  @override
  Stream<TrackEntity> getTrackStream(String trackId) {
    return db.tracks
        .watchObject(fastHash(trackId), fireImmediately: true)
        .map((e) => tracksAdapter.entityFromDto(e!));
  }

  @override
  Future<void> wipeAllData() async {
    await db.writeTxn(() async {
      await db.tracks.clear();
      await db.playlists.clear();
    });
  }

  @override
  Future<Iterable<TrackEntity>> getUnlinkedTracks() async {
    return (await db.tracks.filter().playlistsIdsIsEmpty().findAll())
        .map((e) => tracksAdapter.entityFromDto(e));
  }
}
