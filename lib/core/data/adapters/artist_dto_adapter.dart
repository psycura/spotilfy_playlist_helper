import 'package:spotify_playlist_helper/core/data/storage/artists/artists_collection.dart';
import 'package:spotify_playlist_helper/core/domain/entities/artist/artist.dart';

class ArtistDtoAdapter {
  ArtistEntity fromDto(ArtistDto item) {
    return ArtistEntity(
      href: item.href,
      id: item.spotifyId,
      name: item.name,
      uri: item.uri,
    );
  }

  ArtistDto toDto(ArtistEntity item) {
    return ArtistDto()
      ..href = item.href
      ..spotifyId = item.id
      ..name = item.name
      ..updatedAt = DateTime.now()
      ..uri = item.uri;
  }
}
