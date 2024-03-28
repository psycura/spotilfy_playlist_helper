import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';

class FromAuthorizationResponseAdapter {
  const FromAuthorizationResponseAdapter();
  TokenInfo call(AuthorizationResponse source) {
    final validUntil =
        DateTime.now().millisecondsSinceEpoch + source.expires_in;

    return TokenInfo(
      accessToken: source.access_token,
      tokenType: source.token_type,
      validUntil: validUntil,
      refreshToken: source.refresh_token,
    );
  }
}

class FromRefreshResponseAdapter {
  const FromRefreshResponseAdapter();
  TokenInfo call(RefreshTokenResponse source, {required String refreshToken}) {
    final validUntil =
        DateTime.now().millisecondsSinceEpoch + source.expires_in;

    return TokenInfo(
      accessToken: source.access_token,
      tokenType: source.token_type,
      validUntil: validUntil,
      refreshToken: refreshToken,
    );
  }
}
