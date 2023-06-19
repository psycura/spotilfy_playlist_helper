import 'package:isar/isar.dart';

import '../../../utils/hash_function.dart';
import '../tracks/playlist_tracks_collection.dart';


part 'playlists_collection.g.dart';


@Collection(accessor: 'playlists')
class PlaylistDto {
  Id get id => fastHash(spotifyId);

  @Index(unique: true, replace: true)
  late String spotifyId;

  late String href;
  late String name;
  late String uri;
  late List<String> images;
  String? description;

  @Backlink(to: 'playlist')
  final playlists = IsarLinks<PlaylistTrackDto>();

}
