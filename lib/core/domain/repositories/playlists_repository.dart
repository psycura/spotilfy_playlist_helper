import 'package:dartz/dartz.dart';
import 'package:spotify_playlist_helper/core/data/errors/failures.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/playlist_track.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/playlists_response.dart';

abstract interface class IPlaylistsRepository {
  Future<Either<GeneralFailure, PlaylistsResponse>> getCurrentUserPlaylists({
    int? limit,
    int? offset,
  });

  Future<Either<GeneralFailure, List<PlaylistTrackEntity>>> getPlaylistTracks(
    String playlistId,
  );
}
