import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:logger/logger.dart';
import 'package:rxdart/rxdart.dart';
import 'package:spotify_playlist_helper/core/data/adapters/playlist_dto_adapter.dart';
import 'package:spotify_playlist_helper/core/data/storage/playlists/playlists_collection.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/playlist_track.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/simplified_playlist.dart';

abstract interface class IPlaylistsDao {
  Future<void> saveTracks(List<TrackEntity> items);

  Future<void> savePlaylistTracks(List<PlaylistTrackEntity> items);

  Future<void> savePlaylist(SimplifiedPlaylist item);

  Future<void> savePlaylists(List<SimplifiedPlaylist> items);

  Future<void> dispose();

  Stream<List<SimplifiedPlaylist>> getPlaylistsStream();

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

  @postConstruct
  void initSubscriptions() {
    _playlistsSub = db.playlists
        .watchLazy()
        .asyncMap((event) => _handlePlaylistsChanges())
        .listen((_) {});
  }

  late StreamSubscription<void> _playlistsSub;

  final BehaviorSubject<List<SimplifiedPlaylist>> _playlistsSubject =
      BehaviorSubject<List<SimplifiedPlaylist>>();

  @override
  Future<void> saveTracks(List<TrackEntity> tracks) {
    // TODO: implement saveTracks
    throw UnimplementedError();
  }

  @override
  Future<void> savePlaylistTracks(List<PlaylistTrackEntity> tracks) {
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
  Stream<List<SimplifiedPlaylist>> getPlaylistsStream() =>
      _playlistsSubject.stream;

  Future<void> _handlePlaylistsChanges() async {
    final items = await getPlaylists();
    _playlistsSubject.add(items);
  }

  @disposeMethod
  @override
  Future<void> dispose() async {
    await _playlistsSub.cancel();
  }

  @override
  Future<List<SimplifiedPlaylist>> getPlaylists() async {
    final playlists = (await db.playlists.filter().idIsNotNull().findAll())
        .map((e) => playlistAdapter.fromDto(e))
        .toList();

    return playlists;
  }
}
