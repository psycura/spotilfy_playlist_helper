import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/core/infrastructure/storage/storage_service.dart';


abstract interface class IUSerStorage {
  String? getCurrentUserId();

  Future<void> saveCurrentUserId(String id);

  Future<void> clearUserId();
}

@LazySingleton(as: IUSerStorage)
class UserStorage implements IUSerStorage {
  final String _userIdKey = 'user_id';

  @protected
  final IStorageService db;

  @protected
  final Logger logger;

  UserStorage(this.db, this.logger);

  @override
  String? getCurrentUserId() {
    return db.get<String>(_userIdKey) as String?;
  }

  @override
  Future<void> saveCurrentUserId(String id) async {
    try {
      await db.set<String>(_userIdKey, id);
    } catch (e, s) {
      logger.e(e, e, s);

      rethrow;
    }
  }

  @override
  Future<void> clearUserId() async {
    try {
      await db.delete(_userIdKey);
    } catch (e, s) {
      logger.e(e, e, s);

      rethrow;
    }
  }
}
