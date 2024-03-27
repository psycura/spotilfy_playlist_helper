import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/core/data/errors/failures.dart';
import 'package:spotify_playlist_helper/core/data/models/track/track_with_meta_response.dart';
import 'package:spotify_playlist_helper/core/data/models/playlist/playlist_item_response.dart';
import 'package:spotify_playlist_helper/core/domain/entities/playlist/playlist.dart';
import 'package:spotify_playlist_helper/core/data/api/tracks_api.dart';
import 'package:spotify_playlist_helper/core/data/storage/dao/tracks_dao.dart';
import 'package:spotify_playlist_helper/core/domain/entities/tracks/track.dart';
import 'package:spotify_playlist_helper/core/domain/repositories/tracks_repository.dart';
import 'package:spotify_playlist_helper/core/results/success_empty.dart';

import '../../results/result.dart';

@Singleton(as: ITracksRepository)
class TracksRepository implements ITracksRepository {
  static const tag = '[TracksRepository]';

  @protected
  final Logger logger;

  @protected
  final ITracksApi api;

  @protected
  final ITracksDao dao;

  const TracksRepository(this.logger, this.api, this.dao);

  @override
  Future<Result<SuccessEmpty, GeneralFailure>> fetchSavedTracks() async {
    try {
      final items = <TrackWithMetaResponse>[];
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

      return const Success(SuccessEmpty());
    } catch (e, s) {
      logger.e('$tag:${e.toString()}', error:e, stackTrace: s);

      return const Failure(GeneralFailure());
    }
  }

  @override
  Future<Result<SuccessEmpty, GeneralFailure>> fetchPlaylistTracks(
    PlaylistEntity playlist,
  ) async {
    try {
      final items = <TrackWithMetaResponse>[];
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

      final playlistResponse = PlaylistItemResponse.fromJson(playlist.toJson());

      await dao.savePlaylistTracks(playlistResponse, items);

      return const Success(SuccessEmpty());
    } catch (e, s) {
      logger.e('$tag:${e.toString()}', error:e, stackTrace: s);

      return const Failure(GeneralFailure());
    }
  }

  @override
  Stream<Iterable<TrackEntity>> getSavedTracksStream() =>
      dao.getSavedTracksStream();

  @override
  Stream<Iterable<TrackEntity>> getPlaylistTracksStream(
    String playlistId,
  ) =>
      dao.getPlaylistTracksStream(playlistId);

  @override
  Future<Result<SuccessEmpty, GeneralFailure>> removeSavedTrack(
    TrackEntity track,
  ) async {
    try {
      await dao.removeTrackFromSaved(track.id);
      await api.removeTrackFromSaved(track.id);

      return const Success(SuccessEmpty());
    } catch (e, s) {
      logger.e('$tag:${e.toString()}', error:e, stackTrace: s);

      await dao.addTrackToSaved(track);

      return const Failure(GeneralFailure());
    }
  }

  @override
  Future<Result<SuccessEmpty, GeneralFailure>> saveTrack(
    TrackEntity track,
  ) async {
    try {
      await dao.addTrackToSaved(track);
      await api.addTrackToSaved(track.id);

      return const Success(SuccessEmpty());
    } catch (e, s) {
      logger.e('$tag:${e.toString()}', error:e, stackTrace: s);

      await dao.removeTrackFromSaved(track.id);

      return const Failure(GeneralFailure());
    }
  }

  @override
  Stream<TrackEntity> getTrackStream(String trackId) =>
      dao.getTrackStream(trackId);

  @override
  Future<void> wipeAllData() => dao.wipeAllData();
}
