import 'package:isar/isar.dart';
import 'package:spotify_playlist_helper/core/data/storage/albums/albums_collection.dart';
import 'package:spotify_playlist_helper/core/data/storage/artists/artists_collection.dart';
import 'package:spotify_playlist_helper/core/data/storage/tracks/saved_tracks_collection.dart';

import '../../../utils/hash_function.dart';
import 'playlist_tracks_collection.dart';

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
  String? previewUrl = '';
  bool? isPlayable = true;

  @Index()
  final album = IsarLink<AlbumDto>();

  @Index()
  final artists = IsarLinks<ArtistDto>();

  @Backlink(to: 'track')
  final playlists = IsarLinks<PlaylistTrackDto>();

  @Backlink(to: 'track')
  final saved = IsarLinks<SavedTrackDto>();

}
