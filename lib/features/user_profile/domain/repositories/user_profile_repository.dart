import 'package:dartz/dartz.dart';
import 'package:spotify_playlist_helper/core/data/errors/failures.dart';
import 'package:spotify_playlist_helper/features/user_profile/domain/entities/user_profile.dart';

abstract interface class IUserProfileRepository {
  Future<Either<GeneralFailure, UserProfile>> getCurrentUserProfile();
}
