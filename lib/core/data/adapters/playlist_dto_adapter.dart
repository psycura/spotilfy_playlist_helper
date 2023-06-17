import 'package:spotify_playlist_helper/core/data/storage/playlists/playlists_collection.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/simplified_playlist.dart';

class PlaylistDtoAdapter {
  SimplifiedPlaylist fromDto(Playlists item) {
    final images = item.images.map((e) => ImageEntity(url: e)).toList();

    return SimplifiedPlaylist(
      href: item.href,
      id: item.id!,
      images: images,
      name: item.name,
      uri: item.uri,
    );
  }

  Playlists toDto(SimplifiedPlaylist item) {
    final images = item.images.map((e) => e.url).toList();

    return Playlists()
      ..images = images
      ..href = item.href
      ..id = item.id
      ..name = item.name
      ..uri = item.uri
      ..updatedAt = DateTime.now();
  }
}
