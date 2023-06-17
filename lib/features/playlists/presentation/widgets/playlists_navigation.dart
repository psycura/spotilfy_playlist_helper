import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/di.dart';
import 'package:spotify_playlist_helper/features/playlists/presentation/cubits/playlists_cubit.dart';
import 'package:spotify_playlist_helper/features/playlists/presentation/cubits/selected_playlist_cubit.dart';
import 'package:spotify_playlist_helper/features/playlists/presentation/widgets/favorite_tracks.dart';

import 'playlists.dart';

class PlaylistsNavigation extends StatelessWidget {
  static const String tag = 'PlaylistsNavigation';

  @override
  Widget build(BuildContext _) {
    return BlocProvider<PlaylistsCubit>(
      create: (_) => PlaylistsCubit(
        logger: di.get(),
        repo: di.get(),
      )..init(),
      child: Builder(
        builder: (context) {
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
        },
      ),
    );
  }
}
