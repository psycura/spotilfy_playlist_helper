import 'package:spotify_playlist_helper/core/data/storage/collections/playlists/playlists_collection.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';
import 'package:spotify_playlist_helper/core/data/models/playlist/playlist_item_response.dart';
import 'package:spotify_playlist_helper/core/domain/entities/playlist/playlist.dart';


class PlaylistDtoAdapter {
  PlaylistEntity entityFromDto(PlaylistDto item) {

    return PlaylistEntity(
      href: item.href,
      id: item.spotifyId,
      images: item.images.map((e) => ImageEntity(url: e)).toList(),
      name: item.name,
      uri: item.uri,
    );
  }

  PlaylistDto responseToDto(PlaylistItemResponse item) {

    return PlaylistDto()
      ..images = item.images.map((e) => e.url).toList()
      ..href = item.href
      ..spotifyId = item.id
      ..updatedAt = DateTime.now()
      ..name = item.name
      ..uri = item.uri;
  }

  PlaylistDto entityToDto(PlaylistEntity item) {

    return PlaylistDto()
      ..images = item.images.map((e) => e.url).toList()
      ..href = item.href
      ..updatedAt = DateTime.now()
      ..spotifyId = item.id
      ..name = item.name
      ..uri = item.uri;
  }
}
