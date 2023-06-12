import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:spotify_playlist_helper/core/data/storage/auth_storage.dart';

import '../logs/logger.dart';
import 'http_service.dart';
import 'http_service_interface.dart';
import 'local_cache_store.dart';

@module
abstract class HttpModule {
  @singleton
  @preResolve
  Future<IHttpService> httpService(
    Logger logger,
    IAuthStorage storage,
  ) async {
    final cacheOptions = await LocalCacheStore().getCacheOptions();

    return HttpService(
      logger: logger,
      dioClient: Dio(HttpService.options),
      authStorage: storage,
      cacheOptions: cacheOptions,
    );
  }
}
