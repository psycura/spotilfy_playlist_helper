import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/core/data/errors/failures.dart';
import 'package:spotify_playlist_helper/core/data/api/user_profile_api.dart';
import 'package:spotify_playlist_helper/core/data/storage/user_storage.dart';
import 'package:spotify_playlist_helper/core/domain/entities/user_profile/user_profile.dart';
import 'package:spotify_playlist_helper/core/domain/repositories/user_profile_repository.dart';
import 'package:spotify_playlist_helper/core/results/result.dart';

@LazySingleton(as: IUserProfileRepository)
class UserProfileRepository implements IUserProfileRepository {
  static const tag = '[UserProfileRepository]';

  @protected
  final Logger logger;

  @protected
  final IUserProfileApi api;

  @protected
  final IUSerStorage storage;

  const UserProfileRepository(this.logger, this.api, this.storage);

  @override
  Future<Result<UserProfile, GeneralFailure>> getCurrentUserProfile() async {
    try {
      final res = await api.getCurrentUser();

      await storage.saveCurrentUserId(res.id);

      return Success(res);
    } catch (e, s) {
      logger.e('$tag:${e.toString()}', error: e, stackTrace: s);

      return const Failure(GeneralFailure());
    }
  }

  Future<void> clearUserId() async => storage.clearUserId();

  @override
  Future<void> clearUserProfile() async => storage.clearUserId();
}
