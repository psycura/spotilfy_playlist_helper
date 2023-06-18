import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:spotify_playlist_helper/core/data/storage/artists/artists_collection.dart';
import 'package:spotify_playlist_helper/core/data/storage/playlists/playlists_collection.dart';
import 'package:spotify_playlist_helper/core/data/storage/tracks/playlist_tracks_collection.dart';
import 'package:spotify_playlist_helper/core/data/storage/tracks/saved_tracks_collection.dart';
import 'package:spotify_playlist_helper/core/data/storage/tracks/tracks_collection.dart';

import '../albums/albums_collection.dart';

@module
abstract class DbModule {
  @singleton
  @preResolve
  Future<Isar> db() async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      [
        AlbumsSchema,
        ArtistsSchema,
        PlaylistsSchema,
        TracksSchema,
        PlaylistTracksSchema,
        SavedTracksSchema
      ],
      directory: dir.path,
    );

    return isar;
  }
}
