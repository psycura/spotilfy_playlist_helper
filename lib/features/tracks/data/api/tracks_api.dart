import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:spotify_playlist_helper/const/apis.dart';
import 'package:spotify_playlist_helper/core/infrastructure/http/http_service_interface.dart';
import 'package:spotify_playlist_helper/core/infrastructure/logs/logger.dart';
import 'package:spotify_playlist_helper/features/tracks/domain/entities/tracks_response.dart';

abstract interface class ITracksApi {
  Future<TracksResponse> fetchSavedTracks({
    int? limit,
    int? offset,
    String? nextUrl,
  });
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
}
