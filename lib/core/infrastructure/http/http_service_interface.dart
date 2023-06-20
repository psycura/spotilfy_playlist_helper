import 'package:dio/dio.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';

/// ## HTTP Service
/// Provide an API required for sending HTTP requests
abstract interface class IHttpService {
  Future<Response> postRequest(ApiRequest request);

  Future<Response> putRequest(ApiRequest request);

  /// Send GET request to [url]
  Future<Response> getRequest(
    String url, {
    Options? options,
    Map<String, dynamic>? queryParameters,
  });

  Future<void> refreshToken();
}
