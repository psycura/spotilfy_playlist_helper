import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spotify_playlist_helper/core/presentation/widgets/main_screen_template.dart';
import 'package:spotify_playlist_helper/features/playlists/presentation/widgets/playlists_navigation.dart';

import '../../../user_profile/presentation/widgets/user_profile.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  static const String path = '/MainScreen';

  static void open(
    BuildContext context, {
    bool replace = false,
  }) {
    if (replace) {
      context.router.replaceNamed(path);
    } else {
      if (context.router.current.path != path) {
        context.router.pushNamed(path);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MainScreenTemplate(
      mainNavigation: Container(
        height: 100,
      ),
      playlistNavigation: PlaylistsNavigation(),
      playerWidget: Container(
        height: 100,
      ),
      mainContent: Center(
        child: UserProfile(),
      ),
    );
  }
}
