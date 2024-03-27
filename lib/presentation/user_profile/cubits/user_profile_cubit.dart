// ignore_for_file: avoid-unnecessary-nullable-return-type

import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:spotify_playlist_helper/core/domain/entities/user_profile/user_profile.dart';
import 'package:spotify_playlist_helper/core/domain/repositories/auth_repository.dart';
import 'package:spotify_playlist_helper/core/enums/fetching_state.dart';
import 'package:spotify_playlist_helper/core/domain/repositories/user_profile_repository.dart';

import '../../../core/results/result.dart';

part 'user_profile_cubit.g.dart';

@JsonSerializable()
class UserProfileState extends Equatable {
  final FetchingState fetchingState;
  final UserProfile? profile;

  const UserProfileState({
    this.fetchingState = FetchingState.idle,
    this.profile,
  });

  UserProfileState copyWith({
    FetchingState? fetchingState,
    UserProfile? profile,
  }) {
    return UserProfileState(
      fetchingState: fetchingState ?? this.fetchingState,
      profile: profile ?? this.profile,
    );
  }

  factory UserProfileState.fromJson(Map<String, dynamic> json) =>
      _$UserProfileStateFromJson(json);

  Map<String, dynamic> toJson() => _$UserProfileStateToJson(this);

  @override
  List<Object?> get props => [fetchingState, profile];
}

class UserProfileCubit extends Cubit<UserProfileState> with HydratedMixin {
  static const String tag = 'UserProfileCubit';

  final IUserProfileRepository _userRepo;

  final IAuthRepository _authRepo;

  UserProfileCubit({
    required IUserProfileRepository userRepo,
    required IAuthRepository authRepo,
  })  : _userRepo = userRepo,
        _authRepo = authRepo,
        super(const UserProfileState());

  Future<void> getCurrentUserProfile() async {
    emit(state.copyWith(fetchingState: FetchingState.fetching));

    final res = await _userRepo.getCurrentUserProfile();

    switch (res) {
      case Success(value: final profile):
        emit(
          state.copyWith(fetchingState: FetchingState.done, profile: profile),
        );
        break;
      case Failure():
        emit(state.copyWith(fetchingState: FetchingState.failure));
        break;
    }

    emit(state.copyWith(fetchingState: FetchingState.idle));
  }

  Future<void> logout() async {
    await _authRepo.logout();
    await _userRepo.clearUserProfile();
    reset();
  }

  void reset() => emit(const UserProfileState());

  @override
  UserProfileState? fromJson(Map<String, dynamic> json) =>
      UserProfileState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(UserProfileState state) => state.toJson();
}
