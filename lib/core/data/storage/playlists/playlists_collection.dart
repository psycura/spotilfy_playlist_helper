import 'package:isar/isar.dart';
import 'package:spotify_playlist_helper/core/utils/hash_function.dart';


part 'playlists_collection.g.dart';


@collection
class Playlists {
  String? id;
  Id get isarId => fastHash(id!);
  DateTime? updatedAt;

  late String href;
  late String name;
  late String uri;
  late List<String> images;
  String? description;

}
