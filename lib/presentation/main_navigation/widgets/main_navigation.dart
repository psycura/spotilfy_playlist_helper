import 'package:flutter/widgets.dart';
import 'package:spotify_playlist_helper/presentation/playlists/widgets/add_playlist_button.dart';
import 'package:spotify_playlist_helper/presentation/tracks/widgets/unlinked_tracks.dart';
import 'package:spotify_playlist_helper/presentation/user_profile/widgets/user_profile.dart';

class MainNavigation extends StatelessWidget {
  const MainNavigation();

  static const String tag = 'MainNavigation';

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserProfile(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                UnlinkedTracks(),
                AddPlaylistButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
