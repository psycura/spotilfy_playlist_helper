import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/core/data/errors/failures.dart';
import 'package:spotify_playlist_helper/core/data/api/playlists_api.dart';
import 'package:spotify_playlist_helper/core/data/storage/playlists/playlists_dao.dart';
import 'package:spotify_playlist_helper/core/data/success/success.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/playlist_track.dart';
import 'package:spotify_playlist_helper/core/domain/repositories/playlists_repository.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/simplified_playlist.dart';

@LazySingleton(as: IPlaylistsRepository)
class PlaylistsRepository implements IPlaylistsRepository {
  @protected
  final Logger logger;

  @protected
  final IPlaylistsApi api;

  @protected
  final IPlaylistsDao dao;

  PlaylistsRepository(this.logger, this.api, this.dao);

  @override
  Future<Either<GeneralFailure, SuccessEmpty>> getCurrentUserPlaylists() async {
    try {
      final items = <SimplifiedPlaylist>[];
      var allFetched = false;
      String? nextUrls;

      while (!allFetched) {
        final res = await api.getCurrentUserPlaylists(nextUrl: nextUrls);

        items.addAll(res.items);

        if (res.next == null) {
          allFetched = true;
        } else {
          nextUrls = res.next;
        }
      }

      await dao.savePlaylists(items);

      return const Right(SuccessEmpty());
    } catch (e, s) {
      logger.e(e, e, s);

      return const Left(GeneralFailure());
    }
  }

  @override
  Future<Either<GeneralFailure, List<PlaylistTrackEntity>>> getPlaylistTracks(
    String playlistId,
  ) async {
    try {
      final items = <PlaylistTrackEntity>[];
      var allFetched = false;
      String? nextUrls;

      while (!allFetched) {
        final res = await api.getPlaylistWithTracks(
          playlistUrl: nextUrls,
          playlistId: playlistId,
        );

        items.addAll(res.items);

        if (res.next == null) {
          allFetched = true;
        } else {
          nextUrls = res.next;
        }
      }

      return Right(items);
    } catch (e, s) {
      logger.e(e, e, s);

      return const Left(GeneralFailure());
    }
  }

  @override
  Stream<Iterable<SimplifiedPlaylist>> getCurrentPlaylistsStream() =>
      dao.getPlaylistsStream();

}
