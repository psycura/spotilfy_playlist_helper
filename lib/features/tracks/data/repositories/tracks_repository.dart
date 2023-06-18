import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/core/data/errors/failures.dart';
import 'package:spotify_playlist_helper/core/data/success/success.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/simplified_playlist.dart';
import 'package:spotify_playlist_helper/features/tracks/data/api/tracks_api.dart';
import 'package:spotify_playlist_helper/features/tracks/data/storage/tracks_dao.dart';
import 'package:spotify_playlist_helper/features/tracks/domain/entities/track_with_meta.dart';
import 'package:spotify_playlist_helper/features/tracks/domain/repositories/tracks_repository.dart';

@Singleton(as: ITracksRepository)
class TracksRepository implements ITracksRepository {
  @protected
  final Logger logger;

  @protected
  final ITracksApi api;

  @protected
  final ITracksDao dao;

  TracksRepository(this.logger, this.api, this.dao);

  @override
  Future<Either<GeneralFailure, SuccessEmpty>> fetchSavedTracks() async {
    try {
      final items = <TrackWithMeta>[];
      var allFetched = false;
      String? nextUrls;

      while (!allFetched) {
        final res = await api.fetchSavedTracks(nextUrl: nextUrls);

        items.addAll(res.items);

        if (res.next == null) {
          allFetched = true;
        } else {
          nextUrls = res.next;
        }
      }

      await dao.saveSavedTracks(items);

      return const Right(SuccessEmpty());
    } catch (e, s) {
      logger.e(e, e, s);

      return const Left(GeneralFailure());
    }
  }

  @override
  Future<Either<GeneralFailure, SuccessEmpty>> fetchPlaylistTracks(
    SimplifiedPlaylist playlist,
  ) async {
    try {
      final items = <TrackWithMeta>[];
      var allFetched = false;
      String? nextUrls;

      while (!allFetched) {
        final res = await api.getPlaylistWithTracks(
          playlistUrl: nextUrls,
          playlistId: playlist.id,
        );


        items.addAll(res.items);

        if (res.next == null) {
          allFetched = true;
        } else {
          nextUrls = res.next;
        }
      }

      await dao.savePlaylistTracks(playlist, items);


      return const Right(SuccessEmpty());
    } catch (e, s) {
      logger.e(e, e, s);

      return const Left(GeneralFailure());
    }
  }

  @override
  Stream<Iterable<TrackWithMeta>> getSavedTracksStream() =>
      dao.getSavedTracksStream();

  @override
  Stream<Iterable<TrackWithMeta>> getPlaylistTracksStream(String playlistId) =>
      dao.getPlaylistTracksStream(playlistId);
}
