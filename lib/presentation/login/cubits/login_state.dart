import 'package:equatable/equatable.dart';

sealed class LoginState extends Equatable {
  const LoginState();
}

final class InitialLoginState extends LoginState {
  const InitialLoginState();

  @override
  List<Object?> get props => [];
}

final class AuthorizingLoginState extends LoginState {
  const AuthorizingLoginState();

  @override
  List<Object?> get props => [];
}

final class AuthorizedLoginState extends LoginState {
  const AuthorizedLoginState();

  @override
  List<Object?> get props => [];
}

final class FailureLoginState extends LoginState {
  const FailureLoginState();

  @override
  List<Object?> get props => [];
}
