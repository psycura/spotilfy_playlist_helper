import 'package:freezed_annotation/freezed_annotation.dart';

part 'authorization_response.freezed.dart';

part 'authorization_response.g.dart';

@freezed
class AuthorizationResponse with _$AuthorizationResponse {
  const factory AuthorizationResponse({
    required String access_token,
    required String token_type,
    required String scope,
    required int expires_in,
    required String refresh_token,
  }) = _AuthorizationResponse;

  factory AuthorizationResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthorizationResponseFromJson(json);
}
