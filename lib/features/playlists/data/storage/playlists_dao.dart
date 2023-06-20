import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/core/data/adapters/playlist_dto_adapter.dart';
import 'package:spotify_playlist_helper/core/data/models/playlist/playlist_item_response.dart';
import 'package:spotify_playlist_helper/core/data/storage/playlists/playlists_collection.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/playlist.dart';

abstract interface class IPlaylistsDao {
  Future<void> savePlaylists(List<PlaylistItemResponse> items);

  Stream<Iterable<PlaylistEntity>> getPlaylistsStream();
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
  Future<void> savePlaylists(List<PlaylistItemResponse> items) async {
    final playlists =
        items.map((e) => playlistAdapter.responseToDto(e)).toList();
    await db.writeTxn(() async {
      await db.playlists.filter().spotifyIdIsNotEmpty().deleteAll();
      await db.playlists.putAll(playlists);
    });
  }

  @override
  Stream<Iterable<PlaylistEntity>> getPlaylistsStream() {
    Query<PlaylistDto> playlists =
        db.playlists.filter().spotifyIdIsNotEmpty().build();

    return playlists
        .watch(fireImmediately: true)
        .map((items) => items.map(playlistAdapter.entityFromDto));
  }
}
