import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/const/apis.dart';
import 'package:spotify_playlist_helper/core/infrastructure/http/http_service_interface.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/playlists_response.dart';

abstract interface class IPlaylistsApi {
  Future<PlaylistsResponse> getCurrentUserPlaylists({
    int? limit,
    int? offset,
    String? nextUrl,
  });

}

@LazySingleton(as: IPlaylistsApi)
class PlaylistsApi implements IPlaylistsApi {
  @protected
  final IHttpService client;

  @protected
  final Logger logger;

  PlaylistsApi(this.client, this.logger);

  @override
  Future<PlaylistsResponse> getCurrentUserPlaylists({
    int? limit,
    int? offset,
    String? nextUrl,
  }) async {
    try {
      final res = await client.getRequest(
        nextUrl ??
            '${Apis.baseSpotify}/${Apis.currentUser}/${Apis.playlists}?offset=${offset ?? 0}&limit=${limit ?? 20}',
      );

      return PlaylistsResponse.fromJson(res.data);
    } catch (e) {
      rethrow;
    }
  }


}
