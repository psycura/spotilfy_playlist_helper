import 'package:isar/isar.dart';
import 'package:spotify_playlist_helper/core/data/storage/artists/artists_collection.dart';
import 'package:spotify_playlist_helper/core/data/storage/tracks/tracks_collection.dart';
import 'package:spotify_playlist_helper/core/utils/hash_function.dart';

part 'albums_collection.g.dart';

@Collection(accessor: 'albums')
class AlbumDto {
  Id get id => fastHash(spotifyId);

  @Index(unique: true, replace: true)
  late String spotifyId;

  late String name;
  late String albumType;
  late int totalTracks;
  late String href;
  late String releaseDate;
  late String releaseDatePrecision;
  late String uri;
  late List<String> images;
  late DateTime updatedAt;

  @Index()
  final artists = IsarLinks<ArtistDto>();

  @Backlink(to: 'album')
  final tracks = IsarLinks<TrackDto>();
}
