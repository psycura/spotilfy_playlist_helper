// ignore_for_file: avoid-dynamic

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/core/domain/repositories/auth_repository.dart';

import '../../../core/results/result.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  static const String tag = 'LoginCubit';

  final Logger _logger;
  final IAuthRepository _repo;

  LoginCubit({
    required Logger logger,
    required IAuthRepository repo,
  })  : _logger = logger,
        _repo = repo,
        super(const InitialLoginState());

  @override
  void onChange(change) {
    _logger.d(
      '$tag onChange'
      '\n [CURRENT STATE]: ${change.currentState}'
      '\n [NEXT STATE]: ${change.nextState}',
    );
    super.onChange(change);
  }

  Future<void> startAuthorization(String code) async {
    emit(const AuthorizingLoginState());

    final res = await _repo.authorize(code);

    switch (res) {
      case Success():
        emit(const AuthorizedLoginState());
        break;
      case Failure():
        emit(const FailureLoginState());
        break;
    }
  }

  void reset() => emit(const InitialLoginState());
}
