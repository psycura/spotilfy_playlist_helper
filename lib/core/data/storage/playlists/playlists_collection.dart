import 'package:isar/isar.dart';

import '../../../utils/hash_function.dart';


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
  late DateTime updatedAt;
  String? description;

}
