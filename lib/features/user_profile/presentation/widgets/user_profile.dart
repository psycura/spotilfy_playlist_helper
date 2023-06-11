import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/features/user_profile/presentation/cubits/user_profile_cubit.dart';

import '../../../../di.dart';

class UserProfile extends StatelessWidget {
  static const String tag = 'UserProfile';

  @override
  Widget build(BuildContext _) {
    return BlocProvider<UserProfileCubit>(
      create: (_) => UserProfileCubit(
        logger: di.get(),
        repo: di.get(),
      )..getCurrentUserProfile(),
      child: BlocBuilder<UserProfileCubit, UserProfileState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const CircularProgressIndicator(),
            success: (profile) => CircleAvatar(
              backgroundImage: NetworkImage(profile.images.first.url),
            ),
          );
        },
      ),
    );
  }
}
