import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'token_info.g.dart';

@JsonSerializable()
class TokenInfo extends Equatable {
  final String accessToken;
  final String tokenType;
  final int validUntil;
  final String refreshToken;

  const TokenInfo({
    required this.accessToken,
    required this.tokenType,
    required this.validUntil,
    required this.refreshToken,
  });

  TokenInfo copyWith({
    String? accessToken,
    String? tokenType,
    int? validUntil,
    String? refreshToken,
  }) {
    return TokenInfo(
      accessToken: accessToken ?? this.accessToken,
      tokenType: tokenType ?? this.tokenType,
      validUntil: validUntil ?? this.validUntil,
      refreshToken: refreshToken ?? this.refreshToken,
    );
  }

  factory TokenInfo.fromJson(Map<String, dynamic> json) =>
      _$TokenInfoFromJson(json);

  Map<String, dynamic> toJson() => _$TokenInfoToJson(this);


  @override
  List<Object?> get props => [
        accessToken,
        tokenType,
        validUntil,
        refreshToken,
      ];
}
