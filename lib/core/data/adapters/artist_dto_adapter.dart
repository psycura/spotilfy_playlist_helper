import 'package:spotify_playlist_helper/core/data/storage/artists/artists_collection.dart';
import 'package:spotify_playlist_helper/core/domain/entities/artist/artist.dart';

class ArtistDtoAdapter {
  ArtistEntity fromDto(Artists item) {
    return ArtistEntity(
      href: item.href,
      id: item.id!,
      name: item.name,
      uri: item.uri,
    );
  }

  Artists toDto(ArtistEntity item) {
    return Artists()
      ..href = item.href
      ..id = item.id
      ..name = item.name
      ..uri = item.uri
      ..updatedAt = DateTime.now();
  }
}
