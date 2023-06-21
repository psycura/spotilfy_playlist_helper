import 'package:spotify_playlist_helper/core/data/adapters/artist_dto_adapter.dart';
import 'package:spotify_playlist_helper/core/data/storage/collections/tracks/tracks_collection.dart';

import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';


class AlbumDtoAdapter {
  final artistAdapter = ArtistDtoAdapter();

  AlbumEntity fromDto(AlbumObject item) {
    final images = item.images.map((e) => ImageEntity(url: e)).toList();

    return AlbumEntity(
      href: item.href,
      id: item.id,
      images: images,
      name: item.name,
    );
  }

  AlbumObject toDto(AlbumEntity item) {
    final images = item.images.map((e) => e.url).toList();

    final album = AlbumObject()
      ..id = item.id
      ..images = images
      ..href = item.href
      ..name = item.name;

    return album;
  }
}
