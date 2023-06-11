import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/core/domain/repositories/auth_repository.dart';

part 'login_cubit.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const LoginState._();

  const factory LoginState.initial() = _InitialState;

  const factory LoginState.authorizing() = _AuthorizingState;

  const factory LoginState.authorized() = _AuthorizedState;

  const factory LoginState.failure() = _FailureState;
}

class LoginCubit extends Cubit<LoginState> {
  static const String tag = 'LoginCubit';

  final Logger _logger;
  final IAuthRepository _repo;

  LoginCubit({
    required Logger logger,
    required IAuthRepository repo,
  })  : _logger = logger,
        _repo = repo,
        super(const LoginState.initial());

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
    emit(const LoginState.authorizing());

    final res = await _repo.authorize(code);

    res.fold(
      (failure) => emit(const LoginState.failure()),
      (success) => emit(const LoginState.authorized()),
    );
  }

  void reset() => emit(const LoginState.initial());
}
