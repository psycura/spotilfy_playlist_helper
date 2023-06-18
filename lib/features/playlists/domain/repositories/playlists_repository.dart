import 'package:dartz/dartz.dart';
import 'package:spotify_playlist_helper/core/data/errors/failures.dart';
import 'package:spotify_playlist_helper/core/data/success/success.dart';
import 'package:spotify_playlist_helper/features/tracks/domain/entities/track_with_meta.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/simplified_playlist.dart';

abstract interface class IPlaylistsRepository {
  Future<Either<GeneralFailure, SuccessEmpty>> getCurrentUserPlaylists();

  Future<Either<GeneralFailure, List<TrackWithMeta>>> getPlaylistTracks(
    String playlistId,
  );

  Stream<Iterable<SimplifiedPlaylist>> getCurrentPlaylistsStream();

}
