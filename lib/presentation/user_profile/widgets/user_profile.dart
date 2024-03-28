// ignore_for_file: avoid-single-child-column-or-row

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/presentation/user_profile/cubits/user_profile_cubit.dart';

import '../../../../di.dart';
import 'user_avatar.dart';

class UserProfile extends StatelessWidget {
  const UserProfile();

  static const String tag = 'UserProfile';

  @override
  Widget build(BuildContext _) {
    return BlocProvider<UserProfileCubit>(
      create: (_) => UserProfileCubit(
        authRepo: di.get(),
        userRepo: di.get(),
      )..getCurrentUserProfile(),
      child: BlocBuilder<UserProfileCubit, UserProfileState>(
        builder: (context, state) {
          return Row(
            children: [
              UserAvatar(state.profile),
            ],
          );
        },
      ),
    );
  }
}
