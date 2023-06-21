import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/const/apis.dart';
import 'package:spotify_playlist_helper/const/credentials.dart';
import 'package:spotify_playlist_helper/core/data/adapters/token_info_adapter.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';
import 'package:spotify_playlist_helper/core/infrastructure/http/http_service_interface.dart';
import 'package:spotify_playlist_helper/core/utils/http_utils.dart';
import 'package:spotify_playlist_helper/env/env.dart';

abstract interface class IAuthApi {
  Future<TokenInfo> getAuthorizationToken(String code);

  Future<void> refreshToken();
}

@LazySingleton(as: IAuthApi)
class AuthApi implements IAuthApi {
  @protected
  final IHttpService client;

  @protected
  final Logger logger;

  get _clientInfo => HttpUtils.encodeToBase64(
        '${ApiCredentials.clientId}:${Env.clientSecret}',
      );

  Options get _options => Options(
        headers: _headers,
        contentType: _contentType,
      );

  final _contentType = "application/x-www-form-urlencoded";

  Map<String, dynamic> get _headers => {"Authorization": "Basic $_clientInfo"};

  AuthApi(this.client, this.logger);

  @override
  Future<TokenInfo> getAuthorizationToken(String code) async {
    try {
      final Map<String, dynamic> requestData = {
        'code': code,
        'redirect_uri': ApiCredentials.redirectUri,
        'grant_type': 'authorization_code'
      };

      final request = ApiRequest(
        url: Apis.token,
        data: requestData,
        options: _options,
      );

      final res = await client.postRequest(request);

      final authResp = AuthorizationResponse.fromJson(res.data);

      final adapter = FromAuthorizationResponseAdapter();

      return adapter(authResp);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> refreshToken() async {
    try {
      await client.refreshToken();
    } catch (e) {
      rethrow;
    }
  }
}
