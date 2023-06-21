import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/const/apis.dart';
import 'package:spotify_playlist_helper/core/infrastructure/http/http_service_interface.dart';

import 'package:spotify_playlist_helper/core/domain/entities/user_profile/user_profile.dart';

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

      // final images = (res.data['images'] as List<dynamic>)
      //     .map((i) => ImageEntity.fromJson(i));

      final resp = UserProfile.fromJson(res.data);

      return resp;
    } catch (e) {
      rethrow;
    }
  }
}
