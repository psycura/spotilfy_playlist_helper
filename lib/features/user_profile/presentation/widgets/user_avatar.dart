import 'package:flutter/material.dart';
import 'package:spotify_playlist_helper/features/user_profile/domain/entities/user_profile.dart';

class UserAvatar extends StatelessWidget {
  static const String tag = 'UserAvatar';

  final UserProfile? profile;

  const UserAvatar([this.profile]);

  void _onProfileTap(BuildContext context) {
    showMenu(
      context: context,
      position: RelativeRect.fromSize(
        Rect.fromCenter(center: Offset.zero, width: 100, height: 100),
        const Size(200, 200),
      ),
      items: [
        const PopupMenuItem(
          child: Text('Logout'),
        ),
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
