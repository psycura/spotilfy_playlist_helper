import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/core/data/errors/failures.dart';
import 'package:spotify_playlist_helper/features/playlists/data/api/playlists_api.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/playlists_response.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/repositories/playlists_repository.dart';

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
      final res = await api.getCurrentUserPlaylists(limit: limit, offset: offset,);

      return Right(res);
    } catch (e, s) {
      logger.e(e, e, s);

      return const Left(GeneralFailure());
    }
  }
}
