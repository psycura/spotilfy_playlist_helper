import 'package:dartz/dartz.dart';
import 'package:spotify_playlist_helper/core/data/errors/failures.dart';
import 'package:spotify_playlist_helper/core/data/success/success.dart';
import 'package:spotify_playlist_helper/core/enums/authorization_state.dart';

abstract interface class IAuthRepository {

  Future<Either<GeneralFailure, SuccessEmpty>> authorize(String code);

  Future<Either<GeneralFailure, SuccessEmpty>> refreshToken(String token);

  Future<AuthorizationState> checkAuthorization();
}
