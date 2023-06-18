import 'package:isar/isar.dart';
import 'package:spotify_playlist_helper/core/data/storage/tracks/tracks_collection.dart';

part 'saved_tracks_collection.g.dart';

@collection
class SavedTracks {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment
  DateTime? updatedAt;

  late String addedAt;

  final track = IsarLink<Tracks>();
}
