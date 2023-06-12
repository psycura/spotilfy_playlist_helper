import 'package:flutter/widgets.dart';
import 'package:spotify_playlist_helper/features/user_profile/presentation/widgets/user_profile.dart';

class MainNavigation extends StatelessWidget {
  static const String tag = 'MainNavigation';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Column(
        children: [
          UserProfile(),
        ],
      ),
    );
  }
}
