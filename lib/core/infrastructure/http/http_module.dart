import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../logs/logger.dart';
import 'http_service.dart';
import 'http_service_interface.dart';

@module
abstract class HttpModule {
  @lazySingleton
  IHttpService httpService(
    Logger logger,
  ) {
    return HttpService(
      logger: logger,
      dioClient: Dio(HttpService.options),
    );
  }
}
