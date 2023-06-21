import 'package:spotify_playlist_helper/core/data/storage/collections/tracks/tracks_collection.dart';
import 'package:spotify_playlist_helper/core/domain/entities/artist/artist.dart';

class ArtistDtoAdapter {
  ArtistEntity fromDto(ArtistObject item) {
    return ArtistEntity(
      href: item.href,
      id: item.id,
      name: item.name,
    );
  }

  ArtistObject toDto(ArtistEntity item) {
    return ArtistObject()
      ..href = item.href
      ..id = item.id
      ..name = item.name;
  }
}
