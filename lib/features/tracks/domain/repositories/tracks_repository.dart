import 'package:dartz/dartz.dart';
import 'package:spotify_playlist_helper/core/data/errors/failures.dart';
import 'package:spotify_playlist_helper/core/data/success/success.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/simplified_playlist.dart';
import 'package:spotify_playlist_helper/features/tracks/domain/entities/track_with_meta.dart';

abstract interface class ITracksRepository {
  Future<Either<GeneralFailure, SuccessEmpty>> fetchSavedTracks();

  Stream<Iterable<TrackWithMeta>> getSavedTracksStream();

  Stream<Iterable<TrackWithMeta>> getPlaylistTracksStream(String playlistId);

  Future<Either<GeneralFailure, SuccessEmpty>> fetchPlaylistTracks(
    SimplifiedPlaylist playlist,
  );
}
