import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';

part 'track_item_response.freezed.dart';
part 'track_item_response.g.dart';

@freezed
class TrackItemResponse with _$TrackItemResponse {
  factory TrackItemResponse({
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

  }) = _TrackItemResponse;

  factory TrackItemResponse.fromJson(Map<String, dynamic> json) => _$TrackItemResponseFromJson(json);
}
