
import 'package:isar/isar.dart';
import 'package:spotify_playlist_helper/core/data/storage/albums/albums_collection.dart';
import 'package:spotify_playlist_helper/core/utils/hash_function.dart';

part 'artists_collection.g.dart';

@Collection(accessor: 'artists')
class ArtistDto {
  Id get id => fastHash(spotifyId);

  @Index(unique: true, replace: true)
  late String spotifyId;

  late String href;
  late String name;
  late String uri;


  @Backlink(to: 'artists')
  final albums = IsarLinks<AlbumDto>();

}
