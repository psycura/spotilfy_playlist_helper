import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';

import 'http_service_interface.dart';

export 'http_service.dart';

class HttpService implements IHttpService {
  static const defaultConnectTimeout = 5000;
  static const defaultReceiveTimeout = 25000;

  static const int hcpErrorStatus = 666;

  static final BaseOptions options = BaseOptions();

  @protected
  final Logger logger;
  @protected
  final Dio dioClient;

  @protected
  HttpService({
    required this.logger,
    required this.dioClient,
  }) {
    _initClient();
  }

  void _initClient() {
    final prettyLogger = PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90,
    );

    dioClient.interceptors.addAll([prettyLogger]);
  }

  @override
  Future<Response> postRequest(ApiRequest request) async {
    Response response;

    try {
      response = await dioClient.post(
        request.url,
        data: request.data,
        options: request.options,
      );
    } on DioException catch (e) {
      final statusCode = e.response?.statusCode ?? hcpErrorStatus;
      response = Response(
        statusCode: statusCode,
        statusMessage: e.toString(),
        requestOptions: RequestOptions(path: request.url, method: 'post'),
      );
      rethrow;
    } catch (e) {
      rethrow;
    }

    return response;
  }

  @override
  Future<Response> getRequest(
    String url, {
    Options? options,
    Map<String, dynamic>? queryParameters,
  }) async {
    Response response;
    try {
      response = await dioClient.get(
        url,
        options: options,
        queryParameters: queryParameters,
      );
    } on DioException catch (e) {
      final statusCode = e.response?.statusCode ?? hcpErrorStatus;
      response = Response(
        statusCode: statusCode,
        statusMessage: e.toString(),
        requestOptions: RequestOptions(path: url, method: 'get'),
      );
    }

    return response;
  }
}
