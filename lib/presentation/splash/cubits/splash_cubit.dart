// ignore_for_file: avoid-dynamic

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/core/domain/repositories/auth_repository.dart';
import 'package:spotify_playlist_helper/core/enums/authorization_state.dart';
import 'package:spotify_playlist_helper/presentation/splash/cubits/splash_state.dart';

@injectable
class SplashCubit extends Cubit<SplashState> {
  static const String tag = 'SplashCubit';

  final Logger _logger;
  final IAuthRepository _repo;

  SplashCubit({
    required Logger logger,
    required IAuthRepository repo,
  })  : _logger = logger,
        _repo = repo,
        super(const InitialSplashState());

  @override
  void onChange(change) {
    _logger.d(
      '$tag onChange'
      '\n [CURRENT STATE]: ${change.currentState}'
      '\n [NEXT STATE]: ${change.nextState}',
    );
    super.onChange(change);
  }

  Future<void> init() async {
    final res = await _repo.checkAuthorization();
    if (res == AuthorizationState.authorized) {
      emit(const AuthorizedSplashState());
    } else {
      emit(const UnauthorizedSplashState());
    }
  }

  void reset() => emit(const InitialSplashState());
}
