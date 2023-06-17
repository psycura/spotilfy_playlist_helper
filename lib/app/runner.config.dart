// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i3;
import 'package:logger/logger.dart' as _i4;

import '../core/data/api/authorization_client.dart' as _i18;
import '../core/data/api/playlists_api.dart' as _i12;
import '../core/data/repositories/auth_repository.dart' as _i20;
import '../core/data/repositories/playlists_repository.dart' as _i14;
import '../core/data/storage/auth_storage.dart' as _i9;
import '../core/data/storage/db/db_module.dart' as _i25;
import '../core/data/storage/playlists/playlists_dao.dart' as _i8;
import '../core/domain/repositories/auth_repository.dart' as _i19;
import '../core/domain/repositories/playlists_repository.dart' as _i13;
import '../core/infrastructure/http/http_module.dart' as _i23;
import '../core/infrastructure/http/http_service_interface.dart' as _i11;
import '../core/infrastructure/logs/easy_logger_wrapper.dart' as _i7;
import '../core/infrastructure/logs/logger.dart' as _i10;
import '../core/infrastructure/logs/logger_bloc_observer.dart' as _i5;
import '../core/infrastructure/storage/storage_module.dart' as _i22;
import '../core/infrastructure/storage/storage_service.dart' as _i6;
import '../core/modules/logs_module.dart' as _i24;
import '../features/splash/presentation/cubits/splash_cubit.dart' as _i21;
import '../features/user_profile/data/api/user_profile_api.dart' as _i15;
import '../features/user_profile/data/repositories/user_profile_repository.dart'
    as _i17;
import '../features/user_profile/domain/repositories/user_profile_repository.dart'
    as _i16;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final dbModule = _$DbModule();
  final logsModule = _$LogsModule();
  final storageModule = _$StorageModule();
  final httpModule = _$HttpModule();
  await gh.singletonAsync<_i3.Isar>(
    () => dbModule.db(),
    preResolve: true,
  );
  gh.singleton<_i4.Logger>(logsModule.logger());
  gh.singleton<_i5.LoggerBlocObserver>(
      logsModule.loggerBlocObserver(gh<_i4.Logger>()));
  await gh.factoryAsync<_i6.SharedPreferences>(
    () => storageModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i7.EasyLoggerWrapper>(
      () => logsModule.easyLoggerWrapper(gh<_i4.Logger>()));
  gh.singleton<_i8.IPlaylistsDao>(
    _i8.PlaylistsDao(
      gh<_i4.Logger>(),
      gh<_i3.Isar>(),
    )..initSubscriptions(),
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i6.IStorageService>(
      storageModule.storageService(gh<_i6.SharedPreferences>()));
  gh.lazySingleton<_i9.IAuthStorage>(() => _i9.AuthStorage(
        gh<_i6.IStorageService>(),
        gh<_i10.Logger>(),
      ));
  await gh.singletonAsync<_i11.IHttpService>(
    () => httpModule.httpService(
      gh<_i10.Logger>(),
      gh<_i9.IAuthStorage>(),
    ),
    preResolve: true,
  );
  gh.lazySingleton<_i12.IPlaylistsApi>(() => _i12.PlaylistsApi(
        gh<_i11.IHttpService>(),
        gh<_i4.Logger>(),
      ));
  gh.lazySingleton<_i13.IPlaylistsRepository>(() => _i14.PlaylistsRepository(
        gh<_i4.Logger>(),
        gh<_i12.IPlaylistsApi>(),
        gh<_i8.IPlaylistsDao>(),
      ));
  gh.lazySingleton<_i15.IUserProfileApi>(() => _i15.UserProfileApi(
        gh<_i11.IHttpService>(),
        gh<_i4.Logger>(),
      ));
  gh.lazySingleton<_i16.IUserProfileRepository>(
      () => _i17.UserProfileRepository(
            gh<_i4.Logger>(),
            gh<_i15.IUserProfileApi>(),
          ));
  gh.lazySingleton<_i18.IAuthApi>(() => _i18.AuthApi(
        gh<_i11.IHttpService>(),
        gh<_i4.Logger>(),
      ));
  gh.singleton<_i19.IAuthRepository>(_i20.AuthRepository(
    gh<_i4.Logger>(),
    gh<_i18.IAuthApi>(),
    gh<_i9.IAuthStorage>(),
  ));
  gh.factory<_i21.SplashCubit>(() => _i21.SplashCubit(
        logger: gh<_i4.Logger>(),
        repo: gh<_i19.IAuthRepository>(),
      ));
  return getIt;
}

class _$StorageModule extends _i22.StorageModule {}

class _$HttpModule extends _i23.HttpModule {}

class _$LogsModule extends _i24.LogsModule {}

class _$DbModule extends _i25.DbModule {}
