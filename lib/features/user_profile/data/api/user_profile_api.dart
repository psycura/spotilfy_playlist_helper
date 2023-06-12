import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/const/apis.dart';
import 'package:spotify_playlist_helper/core/data/storage/auth_storage.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';
import 'package:spotify_playlist_helper/core/infrastructure/http/http_service_interface.dart';

import 'package:spotify_playlist_helper/features/user_profile/domain/entities/user_profile.dart';

abstract interface class IUserProfileApi {
  Future<UserProfile> getCurrentUser();
}

@LazySingleton(as: IUserProfileApi)
class UserProfileApi implements IUserProfileApi {
  @protected
  final IHttpService client;

  @protected
  final Logger logger;

  UserProfileApi(this.client, this.logger);

  @override
  Future<UserProfile> getCurrentUser() async {
    try {
      final res =
          await client.getRequest('${Apis.baseSpotify}/${Apis.currentUser}');

      final images = (res.data['images'] as List<dynamic>)
          .map((i) => SpotifyImage.fromJson(i));

      final resp = UserProfile(
        displayName: res.data['display_name'],
        email: res.data['email'],
        id: res.data['id'],
        images: [...images],
        uri: res.data['uri'],
      );

      return resp;
    } catch (e) {
      rethrow;
    }
  }
}
