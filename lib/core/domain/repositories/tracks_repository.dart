import 'package:dartz/dartz.dart';
import 'package:spotify_playlist_helper/core/data/errors/failures.dart';
import 'package:spotify_playlist_helper/core/data/success/success.dart';
import 'package:spotify_playlist_helper/core/domain/entities/playlist/playlist.dart';
import 'package:spotify_playlist_helper/core/domain/entities/tracks/track.dart';

abstract interface class ITracksRepository {
  Future<Either<GeneralFailure, SuccessEmpty>> fetchSavedTracks();

  Stream<Iterable<TrackEntity>> getSavedTracksStream();

  Stream<Iterable<TrackEntity>> getPlaylistTracksStream(
    String playlistId,
  );

  Future<Either<GeneralFailure, SuccessEmpty>> fetchPlaylistTracks(
    PlaylistEntity playlist,
  );

  Future<Either<GeneralFailure, SuccessEmpty>> saveTrack(TrackEntity track);

  Future<Either<GeneralFailure, SuccessEmpty>> removeSavedTrack(TrackEntity track);
}
