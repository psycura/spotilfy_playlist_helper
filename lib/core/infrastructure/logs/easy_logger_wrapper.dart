// ignore: depend_on_referenced_packages

import 'package:easy_logger/easy_logger.dart';
import 'package:logger/logger.dart';

/// Entity combining loggers [Logger] and [EasyLogger]
/// Need to pass [log] method to [EasyLocalizations]
class EasyLoggerWrapper {
  final Logger _logger;

  EasyLoggerWrapper(this._logger);

  void log(
    Object object, {
    String? name,
    LevelMessages? level,
    StackTrace? stackTrace,
  }) {
    switch (level) {
      case LevelMessages.info:
        _logger.i('[$name] $object', error:null, stackTrace:stackTrace);
        break;
      case LevelMessages.warning:
        _logger.w('[$name] $object', error:null, stackTrace:stackTrace);
        break;
      case LevelMessages.error:
        _logger.e('[$name] $object', error:null, stackTrace:stackTrace);
        break;
      default:
        _logger.d('[$name] $object', error:null, stackTrace:stackTrace);
        break;
    }
  }

  void stubLog(
    Object object, {
    String? name,
    LevelMessages? level,
    StackTrace? stackTrace,
  }) {}
}
