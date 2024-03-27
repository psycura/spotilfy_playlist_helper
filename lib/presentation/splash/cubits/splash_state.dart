import 'package:equatable/equatable.dart';

sealed class SplashState extends Equatable {
  const SplashState();
}

final class InitialSplashState extends SplashState {
  const InitialSplashState();

  @override
  List<Object?> get props => [];
}

final class AuthorizedSplashState extends SplashState {
  const AuthorizedSplashState();

  @override
  List<Object?> get props => [];
}

final class UnauthorizedSplashState extends SplashState {
  const UnauthorizedSplashState();

  @override
  List<Object?> get props => [];
}
