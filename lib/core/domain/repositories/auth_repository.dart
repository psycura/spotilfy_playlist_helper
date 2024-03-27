import 'package:spotify_playlist_helper/core/data/errors/failures.dart';
import 'package:spotify_playlist_helper/core/enums/authorization_state.dart';

import '../../results/result.dart';
import '../../results/success_empty.dart';

abstract interface class IAuthRepository {

  Future<Result<SuccessEmpty, GeneralFailure>> authorize(String code);

  Future<Result<SuccessEmpty, GeneralFailure>> refreshToken();

  Future<Result<SuccessEmpty, GeneralFailure>> logout();

  Future<AuthorizationState> checkAuthorization();

}
