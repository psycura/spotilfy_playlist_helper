import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/core/data/adapters/track_dto_adapter.dart';
import 'package:spotify_playlist_helper/core/data/storage/albums/albums_collection.dart';
import 'package:spotify_playlist_helper/core/data/storage/artists/artists_collection.dart';
import 'package:spotify_playlist_helper/core/data/storage/tracks/saved_tracks_collection.dart';
import 'package:spotify_playlist_helper/core/data/storage/tracks/tracks_collection.dart';
import 'package:spotify_playlist_helper/features/tracks/domain/entities/track_with_meta.dart';

abstract interface class ITracksDao {
  Stream<Iterable<TrackWithMeta>> getSavedTracksStream();

  Future<void> saveSavedTracks(List<TrackWithMeta> items);
}

@Singleton(as: ITracksDao)
class TracksDao implements ITracksDao {
  @protected
  final Isar db;

  @protected
  Logger logger;

  final savedTracksAdapter = SavedTrackDtoAdapter();

  TracksDao(this.logger, this.db);

  @override
  Stream<Iterable<TrackWithMeta>> getSavedTracksStream() {
    Query<SavedTracks> tracks =
        db.savedTracks.filter().track((q) => q.isSavedEqualTo(true)).build();

    return tracks
        .watch(fireImmediately: true)
        .map((items) => items.map((e) => savedTracksAdapter.fromDto(e)));
  }

  @override
  Future<void> saveSavedTracks(List<TrackWithMeta> items) async {
    await db.writeTxn(() async {
      for (var item in items) {
        final (savedTrack, track, artists, (album, albumArtists)) =
            savedTracksAdapter.toDto(item, isSaved: true);

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
}
