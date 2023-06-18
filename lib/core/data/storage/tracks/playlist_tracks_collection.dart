import 'package:isar/isar.dart';
import 'package:spotify_playlist_helper/core/data/storage/playlists/playlists_collection.dart';
import 'package:spotify_playlist_helper/core/data/storage/tracks/tracks_collection.dart';

part 'playlist_tracks_collection.g.dart';

@collection
class PlaylistTracks {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment
  DateTime? updatedAt;

  late String addedAt;

  final track = IsarLink<Tracks>();
  final playlist = IsarLink<Playlists>();
}
