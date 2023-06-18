import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/core/data/adapters/playlist_dto_adapter.dart';
import 'package:spotify_playlist_helper/core/data/storage/playlists/playlists_collection.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';
import 'package:spotify_playlist_helper/features/tracks/domain/entities/track_with_meta.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/simplified_playlist.dart';

abstract interface class IPlaylistsDao {
  Future<void> saveTracks(List<TrackEntity> items);

  Future<void> savePlaylistTracks(List<TrackWithMeta> items);

  Future<void> savePlaylist(SimplifiedPlaylist item);

  Future<void> savePlaylists(List<SimplifiedPlaylist> items);

  Future<void> dispose();

  Stream<Iterable<SimplifiedPlaylist>> getPlaylistsStream();

  Future<List<SimplifiedPlaylist>> getPlaylists();
}

@Singleton(as: IPlaylistsDao)
class PlaylistsDao implements IPlaylistsDao {
  @protected
  final Isar db;

  @protected
  Logger logger;

  final playlistAdapter = PlaylistDtoAdapter();

  PlaylistsDao(this.logger, this.db);


  @override
  Future<void> saveTracks(List<TrackEntity> tracks) {
    // TODO: implement saveTracks
    throw UnimplementedError();
  }

  @override
  Future<void> savePlaylistTracks(List<TrackWithMeta> tracks) {
    // TODO: implement savePlaylistTracks
    throw UnimplementedError();
  }

  @override
  Future<void> savePlaylist(SimplifiedPlaylist item) async {
    await db.writeTxn(() async {
      await db.playlists.put(playlistAdapter.toDto(item));
    });
  }

  @override
  Future<void> savePlaylists(List<SimplifiedPlaylist> items) async {
    final playlists = items.map((e) => playlistAdapter.toDto(e)).toList();
    await db.writeTxn(() async {
      await db.playlists.putAll(playlists);
    });
  }

  @override
  Stream<Iterable<SimplifiedPlaylist>> getPlaylistsStream() {
    Query<Playlists> playlists = db.playlists.filter().idIsNotNull().build();

    return playlists
        .watch(fireImmediately: true)
        .map((items) => items.map((e) => playlistAdapter.fromDto(e)));
  }


  @override
  Future<List<SimplifiedPlaylist>> getPlaylists() async {
    final playlists = (await db.playlists.filter().idIsNotNull().findAll())
        .map((e) => playlistAdapter.fromDto(e))
        .toList();

    return playlists;
  }

  @disposeMethod
  @override
  Future<void> dispose() async {
  }
}
