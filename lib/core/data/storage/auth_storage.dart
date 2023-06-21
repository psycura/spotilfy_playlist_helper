import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';
import 'package:spotify_playlist_helper/core/infrastructure/logs/logger.dart';
import 'package:spotify_playlist_helper/core/infrastructure/storage/storage_service.dart';

abstract interface class IAuthStorage {
  TokenInfo? getTokenInfo();

  Future<void> saveTokenInfo(TokenInfo data);
}

@LazySingleton(as: IAuthStorage)
class AuthStorage implements IAuthStorage {
  final String _authKey = 'auth_response';

  @protected
  final IStorageService db;

  @protected
  final Logger logger;

  AuthStorage(this.db, this.logger);

  @override
  TokenInfo? getTokenInfo() {
    final result = db.get<String>(_authKey);

    if (result == null) return null;

    final resJson = jsonDecode(result as String);

    return TokenInfo.fromJson(resJson);
  }

  @override
  Future<void> saveTokenInfo(TokenInfo data) async {
    try {
      await db.set<String>(_authKey, jsonEncode(data.toJson()));
    } catch (e, s) {

      logger.e(e, e, s);

      rethrow;
    }
  }
}
