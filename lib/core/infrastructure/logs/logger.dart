import 'package:logger/logger.dart';

export 'package:logger/logger.dart';

class GeniusLogFilter extends LogFilter {

  final bool isReleaseMode;

  GeniusLogFilter(this.isReleaseMode);

  @override
  bool shouldLog(LogEvent event) {
    return isReleaseMode
        ? (event.level != Level.debug && event.level != Level.warning)
        : true;
  }
}

