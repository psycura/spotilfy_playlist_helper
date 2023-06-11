import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/core/data/errors/failures.dart';
import 'package:spotify_playlist_helper/features/user_profile/data/api/user_profile_api.dart';
import 'package:spotify_playlist_helper/features/user_profile/domain/entities/user_profile.dart';
import 'package:spotify_playlist_helper/features/user_profile/domain/repositories/user_profile_repository.dart';

@LazySingleton(as: IUserProfileRepository)
class UserProfileRepository implements IUserProfileRepository {
  @protected
  final Logger logger;

  @protected
  final IUserProfileApi api;

  UserProfileRepository(this.logger, this.api);

  @override
  Future<Either<GeneralFailure, UserProfile>> getCurrentUserProfile() async {
    try {
      final res = await api.getCurrentUser();

      print('[alitz]getCurrentUserProfile:$res');

      return Right(res);
    } catch (e, s) {
      logger.e(e, e, s);

      return const Left(GeneralFailure());
    }
  }
}
