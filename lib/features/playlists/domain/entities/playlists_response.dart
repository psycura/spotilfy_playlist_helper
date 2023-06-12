import 'package:freezed_annotation/freezed_annotation.dart';

import 'simplified_playlist.dart';

part 'playlists_response.freezed.dart';

part 'playlists_response.g.dart';

@freezed
class PlaylistsResponse with _$PlaylistsResponse {
  factory PlaylistsResponse({
    required String href,
    required int limit,
    required int offset,
    required int total,
    required List<SimplifiedPlaylist> items,
    String? next,
    String? previous,

  }) = _PlaylistsResponse;

  factory PlaylistsResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaylistsResponseFromJson(json);
}
