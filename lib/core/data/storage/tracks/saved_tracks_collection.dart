import 'package:isar/isar.dart';
import 'package:spotify_playlist_helper/core/data/storage/tracks/tracks_collection.dart';

part 'saved_tracks_collection.g.dart';

@Collection(accessor: 'savedTracks')
class SavedTrackDto {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  late String addedAt;
  late DateTime updatedAt;

  @Index(unique: true, replace: true)
  final track = IsarLink<TrackDto>();
}
