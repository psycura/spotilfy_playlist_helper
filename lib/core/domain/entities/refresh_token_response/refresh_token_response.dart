import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'refresh_token_response.g.dart';

@JsonSerializable()
class RefreshTokenResponse extends Equatable {
  final String access_token;
  final String token_type;
  final String scope;
  final int expires_in;

  const RefreshTokenResponse({
    required this.access_token,
    required this.token_type,
    required this.scope,
    required this.expires_in,
  });

  RefreshTokenResponse copyWith({
    String? access_token,
    String? token_type,
    String? scope,
    int? expires_in,
  }) {
    return RefreshTokenResponse(
      access_token: access_token ?? this.access_token,
      token_type: token_type ?? this.token_type,
      scope: scope ?? this.scope,
      expires_in: expires_in ?? this.expires_in,
    );
  }

  Map<String, dynamic> toJson() => _$RefreshTokenResponseToJson(this);


  factory RefreshTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenResponseFromJson(json);

  @override
  List<Object?> get props => [
        access_token,
        token_type,
        scope,
        expires_in,
      ];
}
