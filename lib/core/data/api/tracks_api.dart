import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:spotify_playlist_helper/const/apis.dart';
import 'package:spotify_playlist_helper/core/data/models/track/tracks_response.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';
import 'package:spotify_playlist_helper/core/infrastructure/http/http_service_interface.dart';
import 'package:spotify_playlist_helper/core/infrastructure/logs/logger.dart';
import 'package:spotify_playlist_helper/core/data/models/playlist/playlist_with_tracks_response.dart';

abstract interface class ITracksApi {
  Future<TracksResponse> fetchSavedTracks({
    int? limit,
    int? offset,
    String? nextUrl,
  });

  Future<PlaylistWithTracksResponse> getPlaylistWithTracks({
    String? playlistId,
    String? playlistUrl,
    int? limit,
    int? offset,
  });

  Future<void> addTrackToSaved(String id);

  Future<void> removeTrackFromSaved(String id);
}

@LazySingleton(as: ITracksApi)
class TracksApi implements ITracksApi {
  @protected
  final IHttpService client;

  @protected
  final Logger logger;

  TracksApi(this.client, this.logger);

  @override
  Future<TracksResponse> fetchSavedTracks({
    int? limit,
    int? offset,
    String? nextUrl,
  }) async {
    try {
      final res = await client.getRequest(
        nextUrl ??
            '${Apis.baseSpotify}/${Apis.currentUser}/${Apis.tracks}?offset=${offset ?? 0}&limit=${limit ?? 50}',
      );

      return TracksResponse.fromJson(res.data);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<PlaylistWithTracksResponse> getPlaylistWithTracks({
    String? playlistId,
    String? playlistUrl,
    int? limit,
    int? offset,
  }) async {
    if (playlistId == null && playlistUrl == null) {
      throw Exception("playlistId or playlistUrl should be provided");
    }

    if (playlistUrl != null) {
      final res = await client.getRequest(playlistUrl);

      return PlaylistWithTracksResponse.fromJson(res.data);
    } else {
      final res = await client.getRequest(
        '${Apis.baseSpotify}/${Apis.playlists}/$playlistId/${Apis.tracks}?offset=${offset ?? 0}&limit=${limit ?? 50}',
      );

      return PlaylistWithTracksResponse.fromJson(res.data);
    }
  }

  @override
  Future<void> addTrackToSaved(String id) async {
    final request = ApiRequest(
      url: '${Apis.baseSpotify}/${Apis.currentUser}/${Apis.tracks}',
      data: {
        'ids': [id],
      },
    );

    try {
      await client.putRequest(request);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> removeTrackFromSaved(String id) async {
    final request = ApiRequest(
      url: '${Apis.baseSpotify}/${Apis.currentUser}/${Apis.tracks}',
      data: {
        'ids': [id],
      },
    );

    try {
      await client.deleteRequest(request);
    } catch (e) {
      rethrow;
    }
  }
}
