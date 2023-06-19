import 'package:freezed_annotation/freezed_annotation.dart';

part 'playlist_tracks_response.freezed.dart';
part 'playlist_tracks_response.g.dart';

@freezed
class PlaylistTracksResponse with _$PlaylistTracksResponse {
  factory PlaylistTracksResponse({
    required String href,
    required int total,
  }) = _PlaylistTracksResponse;

  factory PlaylistTracksResponse.fromJson(Map<String, dynamic> json) => _$PlaylistTracksResponseFromJson(json);
}
