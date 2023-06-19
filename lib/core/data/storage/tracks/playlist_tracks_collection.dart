import 'package:isar/isar.dart';
import 'package:spotify_playlist_helper/core/data/storage/playlists/playlists_collection.dart';
import 'package:spotify_playlist_helper/core/data/storage/tracks/tracks_collection.dart';

part 'playlist_tracks_collection.g.dart';

@Collection(accessor: 'playlistTracks')
class PlaylistTrackDto {
  Id id = Isar.autoIncrement;
  late String addedAt;

  @Index()
  final track = IsarLink<TrackDto>();

  @Index()
  final playlist = IsarLink<PlaylistDto>();
}
