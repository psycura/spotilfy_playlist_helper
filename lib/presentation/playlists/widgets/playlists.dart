import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/presentation/playlists/cubits/playlists_cubit.dart';
import 'package:spotify_playlist_helper/presentation/playlists/cubits/selected_playlist_cubit.dart';

import 'playlist_item.dart';

class Playlists extends StatelessWidget {
  static const String tag = 'Playlists';

  const Playlists();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<PlaylistsCubit>().state.playlists;

    final currentSelected = context.watch<SelectedPlaylistCubit>().state;

    return ListView.separated(
      itemCount: state.values.length,
      separatorBuilder: (_, index) => const Divider(),
      itemBuilder: (_, index) {
        final item = state.values.toList()[index];

        return PlaylistItem(
          item.playlist.id,
          isSelected: currentSelected.mode == SelectedMode.playlist &&
              currentSelected.playlistId == item.playlist.id,
        );
      },
    );
  }
}
