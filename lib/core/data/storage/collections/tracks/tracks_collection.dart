// ignore_for_file: avoid-unassigned-late-fields

import 'package:isar/isar.dart';
import 'package:spotify_playlist_helper/core/utils/hash_function.dart';


part 'tracks_collection.g.dart';

@Collection(accessor: 'tracks')
class TrackDto {
  Id get id => fastHash(spotifyId);

  @Index(unique: true, replace: true)
  late String spotifyId;

  late int durationMs;
  late String href;
  late String name;
  late int popularity;
  late int trackNumber;
  late String uri;
  late DateTime updatedAt;
  late AlbumObject album;
  late List<ArtistObject> artists;

  @Index()
  late List<String> playlistsIds;

  @Index()
  late bool isSaved = false;

  String? previewUrl = '';
  bool? isPlayable = true;
}

@embedded
class AlbumObject {
  late String id;
  late String name;
  late String href;
  late List<String> images;
}

@embedded
class ArtistObject {
  late String id;
  late String href;
  late String name;
}
