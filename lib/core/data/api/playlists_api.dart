import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/const/apis.dart';
import 'package:spotify_playlist_helper/core/data/models/playlist/playlist_item_response.dart';
import 'package:spotify_playlist_helper/core/data/models/playlist/playlists_response.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';
import 'package:spotify_playlist_helper/core/infrastructure/http/http_service_interface.dart';

abstract interface class IPlaylistsApi {
  Future<PlaylistsResponse> getCurrentUserPlaylists({
    int? limit,
    int? offset,
    String? nextUrl,
  });

  Future<void> addTracksToPlaylist(
    List<String> uris,
    String playlistId,
  );

  Future<PlaylistItemResponse> createPlaylist(
    String name, {
    required String userId,
  });

  Future<void> removeTracksFromPlaylist(
    List<String> uris,
    String playlistId,
  );
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

  @override
  Future<void> addTracksToPlaylist(List<String> uris, String playlistId) async {
    final request = ApiRequest(
      url: '${Apis.baseSpotify}/${Apis.playlists}/$playlistId/${Apis.tracks}',
      data: {'uris': uris},
    );

    try {
      await client.postRequest(request);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> removeTracksFromPlaylist(
    List<String> uris,
    String playlistId,
  ) async {
    final request = ApiRequest(
      url: '${Apis.baseSpotify}/${Apis.playlists}/$playlistId/${Apis.tracks}',
      data: {
        'tracks': uris.map((e) => {'uri': e}).toList(),
      },
    );

    try {
      await client.deleteRequest(request);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<PlaylistItemResponse> createPlaylist(
    String name, {
    required String userId,
  }) async {
    final request = ApiRequest(
      url: '${Apis.baseSpotify}/${Apis.users}/$userId/${Apis.playlists}',
      data: {'name': name},
    );

    try {
      final res = await client.postRequest(request);

      return PlaylistItemResponse.fromJson(res.data);
    } catch (e) {
      rethrow;
    }
  }
}
