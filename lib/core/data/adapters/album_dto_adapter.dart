import 'package:spotify_playlist_helper/core/data/adapters/artist_dto_adapter.dart';
import 'package:spotify_playlist_helper/core/data/storage/albums/albums_collection.dart';
import 'package:spotify_playlist_helper/core/data/storage/artists/artists_collection.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';

typedef AlbumDtoRecord = (Albums album, Iterable<Artists> albumArtists);

class AlbumDtoAdapter {
  final artistAdapter = ArtistDtoAdapter();

  AlbumEntity fromDto(Albums item) {
    final images = item.images.map((e) => ImageEntity(url: e)).toList();

    return AlbumEntity(
      href: item.href,
      id: item.id!,
      images: images,
      name: item.name,
      uri: item.uri,
      album_type: item.albumType,
      total_tracks: item.totalTracks,
      release_date: item.releaseDate,
      release_date_precision: item.releaseDatePrecision,
      artists: [],
    );
  }

  AlbumDtoRecord toDto(AlbumEntity item) {
    final images = item.images.map((e) => e.url).toList();

    final artists = item.artists.map((e) => artistAdapter.toDto(e));

    final album = Albums()
      ..images = images
      ..href = item.href
      ..id = item.id
      ..name = item.name
      ..uri = item.uri
      ..updatedAt = DateTime.now()
      ..albumType = item.album_type
      ..totalTracks = item.total_tracks
      ..releaseDate = item.release_date
      ..releaseDatePrecision = item.release_date_precision
      ..artists.addAll(artists);

    return (album, artists);
  }
}
