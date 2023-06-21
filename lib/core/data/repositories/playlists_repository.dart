import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/core/data/errors/failures.dart';
import 'package:spotify_playlist_helper/core/data/api/playlists_api.dart';
import 'package:spotify_playlist_helper/core/data/storage/dao/playlists_dao.dart';
import 'package:spotify_playlist_helper/core/data/success/success.dart';
import 'package:spotify_playlist_helper/core/domain/entities/playlist/playlist.dart';
import 'package:spotify_playlist_helper/core/domain/repositories/playlists_repository.dart';
import 'package:spotify_playlist_helper/core/data/models/playlist/playlist_item_response.dart';

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

      await dao.savePlaylists(items);

      return const Right(SuccessEmpty());
    } catch (e, s) {
      logger.e(e, e, s);

      return const Left(GeneralFailure());
    }
  }

  @override
  Stream<Iterable<PlaylistEntity>> getCurrentPlaylistsStream() =>
      dao.getPlaylistsStream();
}
