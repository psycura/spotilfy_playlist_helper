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
import 'package:logger/logger.dart' as _i3;

import '../core/data/api/authorization_client.dart' as _i16;
import '../core/data/repositories/auth_repository.dart' as _i18;
import '../core/data/storage/auth_storage.dart' as _i7;
import '../core/domain/repositories/auth_repository.dart' as _i17;
import '../core/infrastructure/http/http_module.dart' as _i21;
import '../core/infrastructure/http/http_service_interface.dart' as _i9;
import '../core/infrastructure/logs/easy_logger_wrapper.dart' as _i6;
import '../core/infrastructure/logs/logger.dart' as _i8;
import '../core/infrastructure/logs/logger_bloc_observer.dart' as _i4;
import '../core/infrastructure/storage/storage_module.dart' as _i20;
import '../core/infrastructure/storage/storage_service.dart' as _i5;
import '../core/modules/logs_module.dart' as _i22;
import '../features/playlists/data/api/playlists_api.dart' as _i10;
import '../features/playlists/data/repositories/playlists_repository.dart'
    as _i12;
import '../features/playlists/domain/repositories/playlists_repository.dart'
    as _i11;
import '../features/splash/presentation/cubits/splash_cubit.dart' as _i19;
import '../features/user_profile/data/api/user_profile_api.dart' as _i13;
import '../features/user_profile/data/repositories/user_profile_repository.dart'
    as _i15;
import '../features/user_profile/domain/repositories/user_profile_repository.dart'
    as _i14;

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
  final logsModule = _$LogsModule();
  final storageModule = _$StorageModule();
  final httpModule = _$HttpModule();
  gh.singleton<_i3.Logger>(logsModule.logger());
  gh.singleton<_i4.LoggerBlocObserver>(
      logsModule.loggerBlocObserver(gh<_i3.Logger>()));
  await gh.factoryAsync<_i5.SharedPreferences>(
    () => storageModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i6.EasyLoggerWrapper>(
      () => logsModule.easyLoggerWrapper(gh<_i3.Logger>()));
  gh.singleton<_i5.IStorageService>(
      storageModule.storageService(gh<_i5.SharedPreferences>()));
  gh.lazySingleton<_i7.IAuthStorage>(() => _i7.AuthStorage(
        gh<_i5.IStorageService>(),
        gh<_i8.Logger>(),
      ));
  await gh.singletonAsync<_i9.IHttpService>(
    () => httpModule.httpService(
      gh<_i8.Logger>(),
      gh<_i7.IAuthStorage>(),
    ),
    preResolve: true,
  );
  gh.lazySingleton<_i10.IPlaylistsApi>(() => _i10.PlaylistsApi(
        gh<_i9.IHttpService>(),
        gh<_i3.Logger>(),
      ));
  gh.lazySingleton<_i11.IPlaylistsRepository>(() => _i12.PlaylistsRepository(
        gh<_i3.Logger>(),
        gh<_i10.IPlaylistsApi>(),
      ));
  gh.lazySingleton<_i13.IUserProfileApi>(() => _i13.UserProfileApi(
        gh<_i9.IHttpService>(),
        gh<_i3.Logger>(),
      ));
  gh.lazySingleton<_i14.IUserProfileRepository>(
      () => _i15.UserProfileRepository(
            gh<_i3.Logger>(),
            gh<_i13.IUserProfileApi>(),
          ));
  gh.lazySingleton<_i16.IAuthApi>(() => _i16.AuthApi(
        gh<_i9.IHttpService>(),
        gh<_i3.Logger>(),
      ));
  gh.singleton<_i17.IAuthRepository>(_i18.AuthRepository(
    gh<_i3.Logger>(),
    gh<_i16.IAuthApi>(),
    gh<_i7.IAuthStorage>(),
  ));
  gh.factory<_i19.SplashCubit>(() => _i19.SplashCubit(
        logger: gh<_i3.Logger>(),
        repo: gh<_i17.IAuthRepository>(),
      ));
  return getIt;
}

class _$StorageModule extends _i20.StorageModule {}

class _$HttpModule extends _i21.HttpModule {}

class _$LogsModule extends _i22.LogsModule {}
