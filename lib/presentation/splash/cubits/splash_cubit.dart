import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/core/domain/repositories/auth_repository.dart';
import 'package:spotify_playlist_helper/core/enums/authorization_state.dart';

part 'splash_cubit.freezed.dart';

@freezed
class SplashState with _$SplashState {
  const SplashState._();

  const factory SplashState.initial() = _InitialSplashState;

  const factory SplashState.authorized() = _AuthorizedCubitState;

  const factory SplashState.unauthorized() = _UnauthorizedCubitState;
}

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
        super(const SplashState.initial());

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
      emit(const SplashState.authorized());
    } else {
      emit(const SplashState.unauthorized());
    }
  }

  void reset() => emit(const SplashState.initial());
}
