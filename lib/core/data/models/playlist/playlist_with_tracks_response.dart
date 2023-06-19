import 'package:freezed_annotation/freezed_annotation.dart';

import '../track/track_with_meta_response.dart';


part 'playlist_with_tracks_response.freezed.dart';
part 'playlist_with_tracks_response.g.dart';

@freezed
class PlaylistWithTracksResponse with _$PlaylistWithTracksResponse {
  factory PlaylistWithTracksResponse({
    required String href,
    required int total,
    required List<TrackWithMetaResponse> items,
    @Default(50) int limit,
    @Default(0) int offset,
    String? next,
    String? previous,
  }) = _PlaylistWithTracksResponse;

  factory PlaylistWithTracksResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaylistWithTracksResponseFromJson(json);
}
