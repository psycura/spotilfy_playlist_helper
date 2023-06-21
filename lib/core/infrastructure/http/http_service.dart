import 'dart:async';

import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:spotify_playlist_helper/const/apis.dart';
import 'package:spotify_playlist_helper/const/credentials.dart';
import 'package:spotify_playlist_helper/core/data/errors/exceptions.dart';
import 'package:spotify_playlist_helper/core/data/storage/auth_storage.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';
import 'package:spotify_playlist_helper/core/utils/http_utils.dart';
import 'package:spotify_playlist_helper/env/env.dart';

import '../../data/adapters/token_info_adapter.dart';
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
  final CacheOptions? cacheOptions;

  @protected
  final IAuthStorage authStorage;

  @protected
  HttpService({
    required this.logger,
    required this.dioClient,
    required this.authStorage,
    this.cacheOptions,
  }) {
    _initClient();
  }

  void _initClient() {
    final prettyLogger = PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: false,
      responseHeader: false,
      error: false,
      compact: true,
      maxWidth: 90,
    );

    dioClient.interceptors.addAll([
      prettyLogger,
      InterceptorsWrapper(
        onRequest:
            (RequestOptions options, RequestInterceptorHandler handler) async {
          try {
            if (!options.path.contains('accounts.spotify.com')) {
              if (_checkIfTokenNeedToRefresh()) {
                await refreshToken().onError((error, stackTrace) {});
              }
              options.headers["Authorization"] =
                  "Bearer ${authStorage.getTokenInfo()!.accessToken}";
            }

            return handler.next(options);
          } catch (e) {
            rethrow;
          }
        },
        onResponse: (Response response, ResponseInterceptorHandler handler) {
          return handler.next(response);
        },
        onError: (DioException e, ErrorInterceptorHandler handler) async {
          if (e.response == null) {
            handler.resolve(
              Response(requestOptions: e.requestOptions, statusCode: 999),
            );
          }

          if (e.response != null &&
              (!e.response!.requestOptions.path
                  .contains('accounts.spotify.com')) &&
              e.response?.statusCode == 401) {
            await refreshToken();
            e.requestOptions.headers["Authorization"] =
                "Bearer ${authStorage.getTokenInfo()!.accessToken}";

            final opts = Options(
              method: e.requestOptions.method,
              headers: e.requestOptions.headers,
            );

            final cloneReq = await dioClient.request(
              e.requestOptions.path,
              options: opts,
              data: e.requestOptions.data,
              queryParameters: e.requestOptions.queryParameters,
            );

            return handler.resolve(cloneReq);
          }
        },
      ),
    ]);

    if (cacheOptions != null) {
      dioClient.interceptors.add(DioCacheInterceptor(options: cacheOptions!));
    }
  }

  @override
  Future<Response> postRequest(ApiRequest request) async {
    try {
      final res = await dioClient.post(
        request.url,
        data: request.data,
        options: request.options,
      );

      if (res.statusCode == 999) {
        throw NoInternetException();
      }

      return res;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Response> getRequest(
    String url, {
    Options? options,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final res = await dioClient.get(
        url,
        options: options,
        queryParameters: queryParameters,
      );

      if (res.statusCode == 999) {
        throw NoInternetException();
      }

      return res;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Response> putRequest(ApiRequest request) async {
    try {
      final res = await dioClient.put(
        request.url,
        data: request.data,
        options: request.options,
      );

      if (res.statusCode == 999) {
        throw NoInternetException();
      }

      return res;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Response> deleteRequest(ApiRequest request) async {
    try {
      final res = await dioClient.delete(
        request.url,
        data: request.data,
        options: request.options,
      );

      if (res.statusCode == 999) {
        throw NoInternetException();
      }

      return res;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> refreshToken() async {
    final token = authStorage.getTokenInfo();

    final clientInfo = HttpUtils.encodeToBase64(
      '${ApiCredentials.clientId}:${Env.clientSecret}',
    );

    const contentType = "application/x-www-form-urlencoded";

    final Map<String, dynamic> headers = {"Authorization": "Basic $clientInfo"};

    final Options options = Options(
      headers: headers,
      contentType: contentType,
    );

    final Map<String, dynamic> requestData = {
      'refresh_token': token!.refreshToken,
      'grant_type': 'refresh_token'
    };

    final request = ApiRequest(
      url: Apis.token,
      data: requestData,
      options: options,
    );

    try {
      final response = await postRequest(request).onError((error, stackTrace) {
        return Response(requestOptions: RequestOptions(), statusCode: 999);
      });

      if (response.statusCode == 200) {
        final newToken = RefreshTokenResponse.fromJson(response.data);

        final adapter = FromRefreshResponseAdapter();

        await authStorage
            .saveTokenInfo(adapter(newToken, refreshToken: token.refreshToken));
      }

      if (response.statusCode == 999) {
        throw NoInternetException();
      }
    } catch (e) {
      rethrow;
    }
  }

  bool _checkIfTokenNeedToRefresh() {
    final token = authStorage.getTokenInfo();

    final now = DateTime.now().millisecondsSinceEpoch;

    return (token!.validUntil < now);
  }
}
