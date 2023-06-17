import 'package:isar/isar.dart';
import 'package:spotify_playlist_helper/core/data/storage/albums/albums_collection.dart';
import 'package:spotify_playlist_helper/core/data/storage/artists/artists_collection.dart';
import 'package:spotify_playlist_helper/core/data/storage/playlists/playlists_collection.dart';
import 'package:spotify_playlist_helper/core/utils/hash_function.dart';

part 'tracks_collection.g.dart';

@collection
class Tracks {
  String? id;

  Id get isarId => fastHash(id!);
  DateTime? updatedAt;

  late int durationMs;
  late String href;
  late String name;
  late int popularity;
  late int trackNumber;
  late String uri;
  String? previewUrl = '';
  bool? isPlayable = true;
  bool? isSaved = false;

  final album = IsarLink<Albums>();

  final artists = IsarLinks<Artists>();

  final playlists = IsarLinks<Playlists>();

}
