import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_info.freezed.dart';

part 'token_info.g.dart';

@freezed
class TokenInfo with _$TokenInfo {
  factory TokenInfo({
    required String accessToken,
    required String tokenType,
    required int validUntil,
    required String refreshToken,
  }) = _TokenInfo;

  factory TokenInfo.fromJson(Map<String, dynamic> json) =>
      _$TokenInfoFromJson(json);
}
