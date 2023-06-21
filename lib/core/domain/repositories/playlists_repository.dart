import 'package:dartz/dartz.dart';
import 'package:spotify_playlist_helper/core/data/errors/failures.dart';
import 'package:spotify_playlist_helper/core/data/success/success.dart';
import 'package:spotify_playlist_helper/core/domain/entities/playlist/playlist.dart';

abstract interface class IPlaylistsRepository {
  Future<Either<GeneralFailure, SuccessEmpty>> getCurrentUserPlaylists();

  Stream<Iterable<PlaylistEntity>> getCurrentPlaylistsStream();

}
