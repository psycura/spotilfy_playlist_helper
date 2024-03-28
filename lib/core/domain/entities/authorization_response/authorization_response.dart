import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'authorization_response.g.dart';

@JsonSerializable()
class AuthorizationResponse extends Equatable {
  final String access_token;
  final String token_type;
  final String scope;
  final int expires_in;
  final String refresh_token;

  const AuthorizationResponse({
    required this.access_token,
    required this.token_type,
    required this.scope,
    required this.expires_in,
    required this.refresh_token,
  });

  AuthorizationResponse copyWith({
    String? access_token,
    String? token_type,
    String? scope,
    int? expires_in,
    String? refresh_token,
  }) {
    return AuthorizationResponse(
      access_token: access_token ?? this.access_token,
      token_type: token_type ?? this.token_type,
      scope: scope ?? this.scope,
      expires_in: expires_in ?? this.expires_in,
      refresh_token: refresh_token ?? this.refresh_token,
    );
  }

  Map<String, dynamic> toJson() => _$AuthorizationResponseToJson(this);


  factory AuthorizationResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthorizationResponseFromJson(json);

  @override
  List<Object?> get props => [
        access_token,
        token_type,
        scope,
        expires_in,
        refresh_token,
      ];
}
