import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/playlist.dart';

part 'track.freezed.dart';

part 'track.g.dart';

@freezed
class TrackEntity with _$TrackEntity {
  factory TrackEntity({
    required AlbumEntity album,
    required List<ArtistEntity> artists,
    required int duration_ms,
    required String href,
    required String id,
    required String name,
    required int popularity,
    required int track_number,
    required String uri,
    @Default('') String preview_url,
    @Default(true) bool is_playable,
    @Default(false) bool is_saved,
    @Default(<String>[]) List<String> playlists,
  }) = _TrackEntity;

  factory TrackEntity.fromJson(Map<String, dynamic> json) =>
      _$TrackEntityFromJson(json);
}
