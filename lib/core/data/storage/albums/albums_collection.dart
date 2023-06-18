
import 'package:isar/isar.dart';
import 'package:spotify_playlist_helper/core/data/storage/artists/artists_collection.dart';
import 'package:spotify_playlist_helper/core/utils/hash_function.dart';

part 'albums_collection.g.dart';


@collection
class Albums {
  String? id;
  Id get isarId => fastHash(id!);

  late String name;
  late String albumType;
  late int totalTracks;
  late String href;
  late String releaseDate;
  late String releaseDatePrecision;
  late String uri;
  late List<String> images;
  DateTime? updatedAt;

  final artists = IsarLinks<Artists>();

}
