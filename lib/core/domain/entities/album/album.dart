import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';

part 'album.freezed.dart';
part 'album.g.dart';

@freezed
class Album with _$Album {

  factory Album({
    required String album_type,
    required int total_tracks,
    required String href,
    required String id,
    required String name,
    required String release_date,
    required String release_date_precision,
    required String uri,
    required List<SpotifyImage> images,
    required List<Artist> artists,
}) = _Album;

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);

}
