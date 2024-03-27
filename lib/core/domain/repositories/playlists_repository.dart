import 'package:spotify_playlist_helper/core/data/errors/failures.dart';
import 'package:spotify_playlist_helper/core/domain/entities/playlist/playlist.dart';
import 'package:spotify_playlist_helper/core/domain/entities/tracks/track.dart';

import '../../results/result.dart';
import '../../results/success_empty.dart';

abstract interface class IPlaylistsRepository {
  Future<Result<SuccessEmpty, GeneralFailure>> getCurrentUserPlaylists();

  Future<Result<SuccessEmpty, GeneralFailure>> addTracksToPlaylist(
    List<TrackEntity> tracks,
    String playlistId,
  );

  Future<Result<PlaylistEntity,GeneralFailure>> createPlaylist(String name);

  Future<Result<SuccessEmpty, GeneralFailure>>
      moveAllUnlinkedTracksToPlaylist();

  Future<Result<SuccessEmpty, GeneralFailure>> removeTracksFromPlaylist(
    List<TrackEntity> tracks,
    String playlistId,
  );

  Stream<Iterable<PlaylistEntity>> getCurrentPlaylistsStream();
}
