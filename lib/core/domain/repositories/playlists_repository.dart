import 'package:dartz/dartz.dart';
import 'package:spotify_playlist_helper/core/data/errors/failures.dart';
import 'package:spotify_playlist_helper/core/data/success/success.dart';
import 'package:spotify_playlist_helper/core/domain/entities/playlist/playlist.dart';
import 'package:spotify_playlist_helper/core/domain/entities/tracks/track.dart';

abstract interface class IPlaylistsRepository {
  Future<Either<GeneralFailure, SuccessEmpty>> getCurrentUserPlaylists();

  Future<Either<GeneralFailure, SuccessEmpty>> addTracksToPlaylist(
    List<TrackEntity> tracks,
    String playlistId,
  );

  Future<Either<GeneralFailure, PlaylistEntity>> createPlaylist(String name);

  Future<Either<GeneralFailure, SuccessEmpty>>
      moveAllUnlinkedTracksToPlaylist();

  Future<Either<GeneralFailure, SuccessEmpty>> removeTracksFromPlaylist(
    List<TrackEntity> tracks,
    String playlistId,
  );

  Stream<Iterable<PlaylistEntity>> getCurrentPlaylistsStream();
}
