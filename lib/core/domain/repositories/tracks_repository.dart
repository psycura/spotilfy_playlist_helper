import 'package:spotify_playlist_helper/core/data/errors/failures.dart';
import 'package:spotify_playlist_helper/core/domain/entities/playlist/playlist.dart';
import 'package:spotify_playlist_helper/core/domain/entities/tracks/track.dart';

import '../../results/result.dart';
import '../../results/success_empty.dart';

abstract interface class ITracksRepository {
  Future<Result<SuccessEmpty, GeneralFailure>> fetchSavedTracks();

  Future<void> wipeAllData();

  Stream<Iterable<TrackEntity>> getSavedTracksStream();

  Stream<TrackEntity> getTrackStream(String trackId);

  Stream<Iterable<TrackEntity>> getPlaylistTracksStream(
    String playlistId,
  );

  Future<Result<SuccessEmpty, GeneralFailure>> fetchPlaylistTracks(
    PlaylistEntity playlist,
  );

  Future<Result<SuccessEmpty, GeneralFailure>> saveTrack(TrackEntity track);

  Future<Result<SuccessEmpty, GeneralFailure>> removeSavedTrack(TrackEntity track);
}
