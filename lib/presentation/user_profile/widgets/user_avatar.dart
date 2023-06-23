import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/core/domain/entities/user_profile/user_profile.dart';
import 'package:spotify_playlist_helper/presentation/screens/login_screen.dart';
import 'package:spotify_playlist_helper/presentation/tracks/cubits/tracks_management_cubit.dart';
import 'package:spotify_playlist_helper/presentation/user_profile/cubits/user_profile_cubit.dart';

class UserAvatar extends StatelessWidget {
  static const String tag = 'UserAvatar';

  final UserProfile? profile;

  const UserAvatar([this.profile]);

  void _onLogoutTap(BuildContext context) {
    context.read<UserProfileCubit>().logout();
    context.read<TracksCubit>().wipeAllData();
    LoginScreen.open(context, replace: true);
  }

  void _onProfileTap(BuildContext context) {
    showMenu(
      context: context,
      position: RelativeRect.fromSize(
        Rect.fromCenter(center: Offset.zero, width: 100, height: 100),
        const Size(200, 200),
      ),
      items: [
        PopupMenuItem(
          child: const Text('Logout'),
          onTap: () => _onLogoutTap(context),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => _onProfileTap(context),
      icon: CircleAvatar(
        backgroundImage:
            profile != null ? NetworkImage(profile!.images.first.url) : null,
        child: profile == null ? const Icon(Icons.person_2_outlined) : null,
      ),
    );
  }
}
