import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/core/data/api/authorization_client.dart';
import 'package:spotify_playlist_helper/core/data/errors/failures.dart';
import 'package:spotify_playlist_helper/core/data/storage/auth_storage.dart';
import 'package:spotify_playlist_helper/core/data/success/success.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';
import 'package:spotify_playlist_helper/core/domain/repositories/auth_repository.dart';
import 'package:spotify_playlist_helper/core/enums/authorization_state.dart';

@Singleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
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

    if (token == null) return AuthorizationState.unauthorized;

    if (!_checkIfTokenNeedToRefresh(token)) {
      return AuthorizationState.authorized;
    }

    final res = await refreshToken(token.refreshToken);

    return res.fold(
      (failure) => AuthorizationState.unauthorized,
      (success) => AuthorizationState.authorized,
    );
  }

  @override
  Future<Either<GeneralFailure, SuccessEmpty>> authorize(String code) async {
    try {
      final res = await api.getAuthorizationToken(code);

      logger.d('[AuthRepository]:TokenInfo received:$res');

      await storage.saveTokenInfo(res);

      return const Right(SuccessEmpty());
    } catch (e, s) {
      logger.e(e.toString(), e, s);

      return const Left(GeneralFailure());
    }
  }

  @override
  Future<Either<GeneralFailure, SuccessEmpty>> refreshToken(
    String token,
  ) async {
    try {
      final res = await api.refreshToken(token);

      logger.d('[AuthRepository]:TokenInfo received:$res');

      await storage.saveTokenInfo(res);

      return const Right(SuccessEmpty());
    } catch (e, s) {
      logger.e(e.toString(), e, s);

      return const Left(GeneralFailure());
    }
  }

  bool _checkIfTokenNeedToRefresh(TokenInfo token) {
    final now = DateTime.now().millisecondsSinceEpoch;

    return token.validUntil > now;
  }
}
