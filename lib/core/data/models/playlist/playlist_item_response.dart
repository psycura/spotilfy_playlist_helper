import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';
import 'package:spotify_playlist_helper/core/domain/entities/owner/owner.dart';
import 'package:spotify_playlist_helper/features/user_profile/domain/entities/user_profile.dart';

import 'playlist_tracks_response.dart';

part 'playlist_item_response.freezed.dart';
part 'playlist_item_response.g.dart';

@freezed
class PlaylistItemResponse with _$PlaylistItemResponse {
  factory PlaylistItemResponse({
    required String href,
    required String id,
    required List<ImageEntity> images,
    required String name,
    required String uri,
    PlaylistTracksResponse? tracks,
    Owner? owner,
    String? description,
  }) = _PlaylistItemResponse;

  factory PlaylistItemResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaylistItemResponseFromJson(json);
}
