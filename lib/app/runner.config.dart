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

import '../core/data/api/authorization_client.dart' as _i13;
import '../core/data/repositories/auth_repository.dart' as _i15;
import '../core/data/storage/auth_storage.dart' as _i7;
import '../core/domain/repositories/auth_repository.dart' as _i14;
import '../core/infrastructure/http/http_module.dart' as _i17;
import '../core/infrastructure/http/http_service_interface.dart' as _i9;
import '../core/infrastructure/logs/easy_logger_wrapper.dart' as _i6;
import '../core/infrastructure/logs/logger.dart' as _i8;
import '../core/infrastructure/logs/logger_bloc_observer.dart' as _i4;
import '../core/infrastructure/storage/storage_module.dart' as _i16;
import '../core/infrastructure/storage/storage_service.dart' as _i5;
import '../core/modules/logs_module.dart' as _i18;
import '../features/user_profile/data/api/user_profile_api.dart' as _i10;
import '../features/user_profile/data/repositories/user_profile_repository.dart'
    as _i12;
import '../features/user_profile/domain/repositories/user_profile_repository.dart'
    as _i11;

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
  gh.lazySingleton<_i9.IHttpService>(() => httpModule.httpService(
        gh<_i8.Logger>(),
        gh<_i7.IAuthStorage>(),
      ));
  gh.lazySingleton<_i10.IUserProfileApi>(() => _i10.UserProfileApi(
        gh<_i9.IHttpService>(),
        gh<_i3.Logger>(),
        gh<_i7.IAuthStorage>(),
      ));
  gh.lazySingleton<_i11.IUserProfileRepository>(
      () => _i12.UserProfileRepository(
            gh<_i3.Logger>(),
            gh<_i10.IUserProfileApi>(),
          ));
  gh.lazySingleton<_i13.IAuthApi>(() => _i13.AuthApi(
        gh<_i9.IHttpService>(),
        gh<_i3.Logger>(),
      ));
  gh.singleton<_i14.IAuthRepository>(_i15.AuthRepository(
    gh<_i3.Logger>(),
    gh<_i13.IAuthApi>(),
    gh<_i7.IAuthStorage>(),
  ));
  return getIt;
}

class _$StorageModule extends _i16.StorageModule {}

class _$HttpModule extends _i17.HttpModule {}

class _$LogsModule extends _i18.LogsModule {}
