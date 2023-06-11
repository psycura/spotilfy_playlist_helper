import 'package:injectable/injectable.dart';
import 'package:spotify_playlist_helper/core/infrastructure/storage/storage_service.dart';

@module
abstract class StorageModule {

  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @singleton
  IStorageService storageService(SharedPreferences prefs) {
    return StorageService(prefs);
  }
}
