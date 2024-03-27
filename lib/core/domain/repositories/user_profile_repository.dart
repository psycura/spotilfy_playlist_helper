import 'package:spotify_playlist_helper/core/data/errors/failures.dart';
import 'package:spotify_playlist_helper/core/domain/entities/user_profile/user_profile.dart';
import 'package:spotify_playlist_helper/core/results/result.dart';

abstract interface class IUserProfileRepository {
  Future<Result<UserProfile,GeneralFailure>> getCurrentUserProfile();

  Future<void> clearUserProfile();

}
