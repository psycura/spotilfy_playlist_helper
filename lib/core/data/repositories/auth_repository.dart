import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/core/data/api/authorization_api.dart';
import 'package:spotify_playlist_helper/core/data/errors/failures.dart';
import 'package:spotify_playlist_helper/core/data/storage/auth_storage.dart';
import 'package:spotify_playlist_helper/core/data/success/success.dart';
import 'package:spotify_playlist_helper/core/domain/repositories/auth_repository.dart';
import 'package:spotify_playlist_helper/core/enums/authorization_state.dart';

@Singleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  static const tag = '[AuthRepository]';

  @protected
  final Logger logger;

  @protected
  final IAuthApi api;

  @protected
  final IAuthStorage storage;

  AuthRepository(this.logger, this.api, this.storage);

  @override
  Future<AuthorizationState> checkAuthorization() async {
    final token = storage.getTokenInfo();

    return token == null
        ? AuthorizationState.unauthorized
        : AuthorizationState.authorized;
  }

  @override
  Future<Either<GeneralFailure, SuccessEmpty>> authorize(String code) async {
    try {
      final res = await api.getAuthorizationToken(code);

      await storage.saveTokenInfo(res);

      return const Right(SuccessEmpty());
    } catch (e, s) {

      logger.e('$tag:${e.toString()}', e, s);

      return const Left(GeneralFailure());
    }
  }

  @override
  Future<Either<GeneralFailure, SuccessEmpty>> refreshToken() async {
    try {
      await api.refreshToken();

      return const Right(SuccessEmpty());
    } catch (e, s) {
      logger.e('$tag:${e.toString()}', e, s);

      return const Left(GeneralFailure());
    }
  }

  @override
  Future<Either<GeneralFailure, SuccessEmpty>> logout() async{
    try{
      await storage.clearTokenInfo();

      return const Right(SuccessEmpty());

    } catch (e,s){
      logger.e('$tag:${e.toString()}', e, s);

      return const Left(GeneralFailure());

    }
  }
}
