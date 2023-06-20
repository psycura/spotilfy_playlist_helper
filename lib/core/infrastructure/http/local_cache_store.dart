import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_db_store/dio_cache_interceptor_db_store.dart';
import 'package:path_provider/path_provider.dart';

class LocalCacheStore {
  late CacheStore cacheStore;

  Future<CacheOptions> getCacheOptions() async {
    final dir = await getTemporaryDirectory();
    cacheStore = DbCacheStore(databasePath: dir.path, logStatements: false);

    return CacheOptions(
      store: cacheStore,
      policy: CachePolicy.refresh,
      hitCacheOnErrorExcept: [],
      allowPostMethod: false, // for offline behaviour
    );
  }
}
