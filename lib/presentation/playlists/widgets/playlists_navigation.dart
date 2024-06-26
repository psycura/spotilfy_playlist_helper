import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/presentation/playlists/cubits/selected_playlist_cubit.dart';
import 'package:spotify_playlist_helper/presentation/playlists/widgets/favorite_tracks.dart';

import 'playlists.dart';

class PlaylistsNavigation extends StatelessWidget {
  const PlaylistsNavigation();

  static const String tag = 'PlaylistsNavigation';

  @override
  Widget build(BuildContext context) {
    final mode = context.select<SelectedPlaylistCubit, SelectedMode>(
      (cubit) => cubit.state.mode,
    );

    return Column(
      children: [
        FavoriteTracks(isSelected: mode == SelectedMode.favorites),
        const Divider(),
        const Expanded(
          child: Playlists(),
        ),
      ],
    );
  }
}
