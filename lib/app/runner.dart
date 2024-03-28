import 'dart:async';
import 'dart:developer';

// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import '../core/infrastructure/logs/logger_bloc_observer.dart';
import '../core/presentation/cubits/global_blocs_provider.dart';
import '../di.dart';
import 'router/app_router.dart';
import 'themed_app.dart';
import 'runner.config.dart';

///GetIt initialization method
@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
  ignoreUnregisteredTypes: [],
)
class Runner {
  static void run() {
    runZonedGuarded(
      () async {
        await initializeFlutterPluginsAndDependencies();

        di.allReady().then((value) async {
          HydratedBloc.storage = await HydratedStorage.build(
            storageDirectory: await getApplicationDocumentsDirectory(),
          );
          Bloc.observer = di.get<LoggerBlocObserver>();
          final appRouter = AppRouter();

          runApp(
            GlobalBlocsProvider(
              child: ThemedApp(appRouter),
            ),
          );
        });
      },
      (err, stack) {
        log('Critical Error:', error: err, stackTrace: stack);
        di.get<Logger>().e('Critical Error:', error: err, stackTrace: stack);
      },
    );
  }

  static Future<void> initializeFlutterPluginsAndDependencies() async {
    WidgetsFlutterBinding.ensureInitialized();

    await configureDependencies();
  }

  static Future<void> configureDependencies() async {
    await $initGetIt(GetIt.instance);
  }
}
