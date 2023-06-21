import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/core/enums/fetching_state.dart';
import 'package:spotify_playlist_helper/core/domain/entities/user_profile/user_profile.dart';
import 'package:spotify_playlist_helper/core/domain/repositories/user_profile_repository.dart';

part 'user_profile_cubit.freezed.dart';

part 'user_profile_cubit.g.dart';

@freezed
class UserProfileState with _$UserProfileState {
  const UserProfileState._();

  const factory UserProfileState({
    @Default(FetchingState.idle) FetchingState fetchingState,
    UserProfile? profile,
  }) = _UserProfileState;

  factory UserProfileState.fromJson(Map<String, dynamic> json) =>
      _$UserProfileStateFromJson(json);
}

class UserProfileCubit extends Cubit<UserProfileState> with HydratedMixin {
  static const String tag = 'UserProfileCubit';

  final Logger _logger;
  final IUserProfileRepository _repo;

  UserProfileCubit({
    required Logger logger,
    required IUserProfileRepository repo,
  })  : _logger = logger,
        _repo = repo,
        super(const UserProfileState());

  // @override
  // void onChange(change) {
  //   _logger.d(
  //     '$tag onChange'
  //     '\n [CURRENT STATE]: ${change.currentState}'
  //     '\n [NEXT STATE]: ${change.nextState}',
  //   );
  //   super.onChange(change);
  // }

  Future<void> getCurrentUserProfile() async {
    emit(state.copyWith(fetchingState: FetchingState.fetching));

    final res = await _repo.getCurrentUserProfile();

    res.fold(
      (failure) => emit(state.copyWith(fetchingState: FetchingState.failure)),
      (profile) => emit(
        state.copyWith(fetchingState: FetchingState.done, profile: profile),
      ),
    );

    emit(state.copyWith(fetchingState: FetchingState.idle));
  }

  void reset() => emit(const UserProfileState());

  @override
  UserProfileState? fromJson(Map<String, dynamic> json) =>
      UserProfileState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(UserProfileState state) => state.toJson();
}
