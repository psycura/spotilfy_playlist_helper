import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/core/data/errors/failures.dart';
import 'package:spotify_playlist_helper/core/data/api/playlists_api.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/playlist_track.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/playlists_response.dart';
import 'package:spotify_playlist_helper/core/domain/repositories/playlists_repository.dart';

@LazySingleton(as: IPlaylistsRepository)
class PlaylistsRepository implements IPlaylistsRepository {
  @protected
  final Logger logger;

  @protected
  final IPlaylistsApi api;

  PlaylistsRepository(this.logger, this.api);

  @override
  Future<Either<GeneralFailure, PlaylistsResponse>> getCurrentUserPlaylists({
    int? limit,
    int? offset,
  }) async {
    try {
      final res = await api.getCurrentUserPlaylists(
        limit: limit,
        offset: offset,
      );

      return Right(res);
    } catch (e, s) {
      logger.e(e, e, s);

      return const Left(GeneralFailure());
    }
  }

  @override
  Future<Either<GeneralFailure, List<PlaylistTrack>>> getPlaylistTracks(
    String playlistId,
  ) async {
    try {
      final items = <PlaylistTrack>[];
      var allFetched = false;
      String? playlistUrl;

      while (!allFetched) {
        final res = await api.getPlaylistWithTracks(
          playlistUrl: playlistUrl,
          playlistId: playlistId,
        );

        items.addAll(res.items);

        if (res.next == null) {
          logger.i('[getPlaylistTracks] all tracks are fetched');
          allFetched = true;
        } else {

          playlistUrl = res.next;
          logger.i(
            '[getPlaylistTracks] still tracks to fetch, next url:$playlistUrl',
          );
        }
      }

      return Right(items);
    } catch (e, s) {
      logger.e(e, e, s);

      return const Left(GeneralFailure());
    }
  }
}
