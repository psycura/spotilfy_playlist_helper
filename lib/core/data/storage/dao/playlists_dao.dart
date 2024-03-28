import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/core/data/adapters/playlist_dto_adapter.dart';
import 'package:spotify_playlist_helper/core/data/models/playlist/playlist_item_response.dart';
import 'package:spotify_playlist_helper/core/data/storage/collections/playlists/playlists_collection.dart';
import 'package:spotify_playlist_helper/core/data/storage/collections/tracks/tracks_collection.dart';
import 'package:spotify_playlist_helper/core/domain/entities/playlist/playlist.dart';
import 'package:spotify_playlist_helper/core/utils/hash_function.dart';

abstract interface class IPlaylistsDao {
  Future<void> savePlaylists(List<PlaylistItemResponse> items);

  Future<PlaylistEntity> savePlaylist(PlaylistItemResponse item);

  Stream<Iterable<PlaylistEntity>> getPlaylistsStream();

  Future<void> addTracksToPlaylist(
    List<String> tracks,
    String playlistId,
  );

  Future<void> removeTracksFromPlaylist(
    List<String> tracks,
    String playlistId,
  );

  Future<PlaylistEntity?> getPlaylistByName(String name);
}

@Singleton(as: IPlaylistsDao)
class PlaylistsDao implements IPlaylistsDao {
  @protected
  final Isar db;

  @protected
  Logger logger;

  final playlistAdapter = const PlaylistDtoAdapter();

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

  @override
  Future<void> addTracksToPlaylist(
    List<String> tracks,
    String playlistId,
  ) async {
    await db.writeTxn(() async {
      final tracksToUpdate =
          await db.tracks.getAll(tracks.map(fastHash).toList());

      for (var track in tracksToUpdate) {
        if (!track!.playlistsIds.contains(playlistId)) {
          track.playlistsIds = [...track.playlistsIds, playlistId];
          await db.tracks.put(track);
        }
      }
    });
  }

  @override
  Future<void> removeTracksFromPlaylist(
    List<String> tracks,
    String playlistId,
  ) async {
    await db.writeTxn(() async {
      final tracksToUpdate =
          await db.tracks.getAll(tracks.map(fastHash).toList());

      for (var track in tracksToUpdate) {
        if (track!.playlistsIds.contains(playlistId)) {
          final playlists = [...track.playlistsIds];
          playlists.removeWhere((p) => p == playlistId);
          track.playlistsIds = [...playlists];
          await db.tracks.put(track);
        }
      }
    });
  }

  @override
  Future<PlaylistEntity> savePlaylist(PlaylistItemResponse item) async {
    int? playlistId;

    await db.writeTxn(() async {
      playlistId = await db.playlists.put(playlistAdapter.responseToDto(item));
    });

    final res = await db.playlists.get(playlistId!);

    return playlistAdapter.entityFromDto(res!);
  }

  @override
  Future<PlaylistEntity?> getPlaylistByName(String name) async {
    final item = await db.playlists
        .filter()
        .nameEqualTo(name, caseSensitive: false)
        .findFirst();

    return item == null ? null : playlistAdapter.entityFromDto(item);
  }
}
