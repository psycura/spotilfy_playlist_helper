import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/features/user_profile/domain/entities/user_profile.dart';
import 'package:spotify_playlist_helper/features/user_profile/domain/repositories/user_profile_repository.dart';

part 'user_profile_cubit.freezed.dart';

@freezed
class UserProfileState with _$UserProfileState {
  const UserProfileState._();

  const factory UserProfileState.initial() = _InitialState;

  const factory UserProfileState.loading() = _LoadingState;

  const factory UserProfileState.success(UserProfile profile) = _SuccessState;

  const factory UserProfileState.failure() = _FailureState;
}

class UserProfileCubit extends Cubit<UserProfileState> {
  static const String tag = 'UserProfileCubit';

  final Logger _logger;
  final IUserProfileRepository _repo;

  UserProfileCubit({
    required Logger logger,
    required IUserProfileRepository repo,
  })  : _logger = logger,
        _repo = repo,
        super(const UserProfileState.initial());

  @override
  void onChange(change) {
    _logger.d(
      '$tag onChange'
      '\n [CURRENT STATE]: ${change.currentState}'
      '\n [NEXT STATE]: ${change.nextState}',
    );
    super.onChange(change);
  }

  Future<void> getCurrentUserProfile() async {
    emit(const UserProfileState.loading());

    final res = await _repo.getCurrentUserProfile();

    res.fold(
      (failure) => emit(const UserProfileState.failure()),
      (profile) => emit(UserProfileState.success(profile)),
    );
  }

  void reset() => emit(const UserProfileState.initial());
}
