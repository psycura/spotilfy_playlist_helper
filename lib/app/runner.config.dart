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

import '../core/data/api/authorization_client.dart' as _i22;
import '../core/data/api/playlists_api.dart' as _i13;
import '../core/data/api/tracks_api.dart' as _i16;
import '../core/data/api/user_profile_api.dart' as _i19;
import '../core/data/repositories/auth_repository.dart' as _i24;
import '../core/data/repositories/playlists_repository.dart' as _i15;
import '../core/data/repositories/tracks_repository.dart' as _i18;
import '../core/data/repositories/user_profile_repository.dart' as _i21;
import '../core/data/storage/auth_storage.dart' as _i10;
import '../core/data/storage/dao/playlists_dao.dart' as _i8;
import '../core/data/storage/dao/tracks_dao.dart' as _i9;
import '../core/data/storage/db/db_module.dart' as _i29;
import '../core/domain/repositories/auth_repository.dart' as _i23;
import '../core/domain/repositories/playlists_repository.dart' as _i14;
import '../core/domain/repositories/tracks_repository.dart' as _i17;
import '../core/domain/repositories/user_profile_repository.dart' as _i20;
import '../core/infrastructure/http/http_module.dart' as _i27;
import '../core/infrastructure/http/http_service_interface.dart' as _i12;
import '../core/infrastructure/logs/easy_logger_wrapper.dart' as _i7;
import '../core/infrastructure/logs/logger.dart' as _i11;
import '../core/infrastructure/logs/logger_bloc_observer.dart' as _i5;
import '../core/infrastructure/storage/storage_module.dart' as _i26;
import '../core/infrastructure/storage/storage_service.dart' as _i6;
import '../core/modules/logs_module.dart' as _i28;
import '../presentation/splash/cubits/splash_cubit.dart' as _i25;

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
  gh.singleton<_i8.IPlaylistsDao>(_i8.PlaylistsDao(
    gh<_i4.Logger>(),
    gh<_i3.Isar>(),
  ));
  gh.singleton<_i6.IStorageService>(
      storageModule.storageService(gh<_i6.SharedPreferences>()));
  gh.singleton<_i9.ITracksDao>(_i9.TracksDao(
    gh<_i4.Logger>(),
    gh<_i3.Isar>(),
  ));
  gh.lazySingleton<_i10.IAuthStorage>(() => _i10.AuthStorage(
        gh<_i6.IStorageService>(),
        gh<_i11.Logger>(),
      ));
  await gh.singletonAsync<_i12.IHttpService>(
    () => httpModule.httpService(
      gh<_i11.Logger>(),
      gh<_i10.IAuthStorage>(),
    ),
    preResolve: true,
  );
  gh.lazySingleton<_i13.IPlaylistsApi>(() => _i13.PlaylistsApi(
        gh<_i12.IHttpService>(),
        gh<_i4.Logger>(),
      ));
  gh.lazySingleton<_i14.IPlaylistsRepository>(() => _i15.PlaylistsRepository(
        gh<_i4.Logger>(),
        gh<_i13.IPlaylistsApi>(),
        gh<_i8.IPlaylistsDao>(),
      ));
  gh.lazySingleton<_i16.ITracksApi>(() => _i16.TracksApi(
        gh<_i12.IHttpService>(),
        gh<_i11.Logger>(),
      ));
  gh.singleton<_i17.ITracksRepository>(_i18.TracksRepository(
    gh<_i4.Logger>(),
    gh<_i16.ITracksApi>(),
    gh<_i9.ITracksDao>(),
  ));
  gh.lazySingleton<_i19.IUserProfileApi>(() => _i19.UserProfileApi(
        gh<_i12.IHttpService>(),
        gh<_i4.Logger>(),
      ));
  gh.lazySingleton<_i20.IUserProfileRepository>(
      () => _i21.UserProfileRepository(
            gh<_i4.Logger>(),
            gh<_i19.IUserProfileApi>(),
          ));
  gh.lazySingleton<_i22.IAuthApi>(() => _i22.AuthApi(
        gh<_i12.IHttpService>(),
        gh<_i4.Logger>(),
      ));
  gh.singleton<_i23.IAuthRepository>(_i24.AuthRepository(
    gh<_i4.Logger>(),
    gh<_i22.IAuthApi>(),
    gh<_i10.IAuthStorage>(),
  ));
  gh.factory<_i25.SplashCubit>(() => _i25.SplashCubit(
        logger: gh<_i4.Logger>(),
        repo: gh<_i23.IAuthRepository>(),
      ));
  return getIt;
}

class _$StorageModule extends _i26.StorageModule {}

class _$HttpModule extends _i27.HttpModule {}

class _$LogsModule extends _i28.LogsModule {}

class _$DbModule extends _i29.DbModule {}
