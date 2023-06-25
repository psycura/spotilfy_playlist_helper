import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/core/data/errors/exceptions.dart';
import 'package:spotify_playlist_helper/core/data/errors/failures.dart';
import 'package:spotify_playlist_helper/core/data/api/playlists_api.dart';
import 'package:spotify_playlist_helper/core/data/storage/dao/playlists_dao.dart';
import 'package:spotify_playlist_helper/core/data/storage/dao/tracks_dao.dart';
import 'package:spotify_playlist_helper/core/data/storage/user_storage.dart';
import 'package:spotify_playlist_helper/core/data/success/success.dart';
import 'package:spotify_playlist_helper/core/domain/entities/playlist/playlist.dart';
import 'package:spotify_playlist_helper/core/domain/entities/tracks/track.dart';
import 'package:spotify_playlist_helper/core/domain/repositories/playlists_repository.dart';
import 'package:spotify_playlist_helper/core/data/models/playlist/playlist_item_response.dart';

@LazySingleton(as: IPlaylistsRepository)
class PlaylistsRepository implements IPlaylistsRepository {
  static const tag = '[PlaylistsRepository]';

  @protected
  final Logger logger;

  @protected
  final IPlaylistsApi api;

  @protected
  final IPlaylistsDao playlistsDao;

  @protected
  final ITracksDao tracksDao;

  @protected
  final IUSerStorage userStorage;

  PlaylistsRepository(
    this.logger,
    this.api,
    this.playlistsDao,
    this.userStorage,
    this.tracksDao,
  );

  @override
  Future<Either<GeneralFailure, SuccessEmpty>> getCurrentUserPlaylists() async {
    try {
      final items = <PlaylistItemResponse>[];
      var allFetched = false;
      String? nextUrls;

      while (!allFetched) {
        final res = await api.getCurrentUserPlaylists(nextUrl: nextUrls);

        items.addAll(res.items.where((p) => p.owner?.id != 'spotify'));

        if (res.next == null) {
          allFetched = true;
        } else {
          nextUrls = res.next;
        }
      }

      await playlistsDao.savePlaylists(items);

      return const Right(SuccessEmpty());
    } catch (e, s) {
      logger.e('$tag:${e.toString()}', e, s);

      return const Left(GeneralFailure());
    }
  }

  @override
  Stream<Iterable<PlaylistEntity>> getCurrentPlaylistsStream() =>
      playlistsDao.getPlaylistsStream();

  @override
  Future<Either<GeneralFailure, SuccessEmpty>> addTracksToPlaylist(
    List<TrackEntity> tracks,
    String playlistId,
  ) async {
    try {
      await _addTracksToPlaylist(tracks, playlistId);

      return const Right(SuccessEmpty());
    } catch (e, s) {
      logger.e('$tag:${e.toString()}', e, s);

      return const Left(GeneralFailure());
    }
  }

  @override
  Future<Either<GeneralFailure, SuccessEmpty>> removeTracksFromPlaylist(
    List<TrackEntity> tracks,
    String playlistId,
  ) async {
    try {
      await playlistsDao.removeTracksFromPlaylist(
        tracks.map((e) => e.id).toList(),
        playlistId,
      );

      await api.removeTracksFromPlaylist(
        tracks.map((e) => e.uri).toList(),
        playlistId,
      );

      return const Right(SuccessEmpty());
    } catch (e, s) {
      logger.e('$tag:${e.toString()}', e, s);

      await playlistsDao.addTracksToPlaylist(
        tracks.map((e) => e.id).toList(),
        playlistId,
      );

      return const Left(GeneralFailure());
    }
  }

  @override
  Future<Either<GeneralFailure, SuccessEmpty>>
      moveAllUnlinkedTracksToPlaylist() async {
    try {
      final userId = userStorage.getCurrentUserId();

      if (userId == null || userId.isEmpty) {
        throw CacheException();
      }
      PlaylistEntity? playlist;

      playlist = await playlistsDao.getPlaylistByName('Unlinked Tracks');

      playlist ??= await _createPlaylist('Unlinked Tracks', userId);


      final tracksToAdd = await tracksDao.getUnlinkedTracks();

      await _addTracksToPlaylist(tracksToAdd.toList(), playlist.id);

      return const Right(SuccessEmpty());
    } catch (e, s) {
      logger.e('$tag:${e.toString()}', e, s);

      return const Left(GeneralFailure());
    }
  }

  @override
  Future<Either<GeneralFailure, PlaylistEntity>> createPlaylist(
    String name,
  ) async {
    try {
      final userId = userStorage.getCurrentUserId();

      if (userId == null || userId.isEmpty) {
        throw CacheException();
      }

      final res = await _createPlaylist(name, userId);

      return Right(res);
    } catch (e, s) {
      logger.e('$tag:${e.toString()}', e, s);

      return const Left(GeneralFailure());
    }
  }

  Future<PlaylistEntity> _createPlaylist(String name, String userId) async {
    try {
      final res = await api.createPlaylist(name, userId: userId);

      return await playlistsDao.savePlaylist(res);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _addTracksToPlaylist(
    List<TrackEntity> tracks,
    String playlistId,
  ) async {
    final chunks = tracks.slices(100);

    for (var chunk in chunks) {
      try {
        await playlistsDao.addTracksToPlaylist(
          chunk.map((e) => e.id).toList(),
          playlistId,
        );

        await api.addTracksToPlaylist(
          chunk.map((e) => e.uri).toList(),
          playlistId,
        );
      } catch (e) {
        await playlistsDao.removeTracksFromPlaylist(
          chunk.map((e) => e.id).toList(),
          playlistId,
        );

        rethrow;
      }
    }
  }
}
