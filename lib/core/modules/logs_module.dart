// ignore_for_file: long-parameter-list
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../infrastructure/logs/easy_logger_wrapper.dart';
import '../infrastructure/logs/logger.dart';
import '../infrastructure/logs/logger_bloc_observer.dart';

@module
abstract class LogsModule {
  @singleton
  Logger logger() {
    return Logger(
      printer: PrettyPrinter(
        methodCount: 2,
        lineLength: 89,
        printTime: true,
        colors: true,
        // Colorful log messages
        printEmojis: true, // Print an emoji for each log message
      ),
    );
  }

  @singleton
  LoggerBlocObserver loggerBlocObserver(Logger logger) {
    return LoggerBlocObserver(logger);
  }

  @lazySingleton
  EasyLoggerWrapper easyLoggerWrapper(Logger logger) {
    return EasyLoggerWrapper(logger);
  }

//#region Repositories

//#endregion Repositories

//#region UseCases

//#endregion UseCases

//#region Cubits

//#endregion Cubits
}
