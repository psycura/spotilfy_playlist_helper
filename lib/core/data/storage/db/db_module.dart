import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:spotify_playlist_helper/core/data/storage/playlists/playlists_collection.dart';
import 'package:spotify_playlist_helper/core/data/storage/tracks/tracks_collection.dart';


@module
abstract class DbModule {
  @singleton
  @preResolve
  Future<Isar> db() async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      [
        PlaylistDtoSchema,
        TrackDtoSchema,
      ],
      directory: dir.path,
    );

    return isar;
  }
}
