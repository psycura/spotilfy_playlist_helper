import 'package:dartz/dartz.dart';
import 'package:spotify_playlist_helper/core/data/errors/failures.dart';
import 'package:spotify_playlist_helper/core/data/success/success.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/playlist_track.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/simplified_playlist.dart';

abstract interface class IPlaylistsRepository {
  Future<Either<GeneralFailure, SuccessEmpty>> getCurrentUserPlaylists();

  Future<Either<GeneralFailure, List<PlaylistTrackEntity>>> getPlaylistTracks(
    String playlistId,
  );

  Stream<List<SimplifiedPlaylist>> getCurrentPlaylistsStream();

  Future<List<SimplifiedPlaylist>> getInitialPlaylists();
}
