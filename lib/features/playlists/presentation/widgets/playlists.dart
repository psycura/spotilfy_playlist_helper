import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/simplified_playlist.dart';
import 'package:spotify_playlist_helper/features/playlists/presentation/cubits/playlists_cubit.dart';
import 'package:spotify_playlist_helper/features/playlists/presentation/cubits/selected_playlist_cubit.dart';
import 'package:spotify_playlist_helper/features/playlists/presentation/widgets/playlist_item.dart';

class Playlists extends StatelessWidget {
  static const String tag = 'Playlists';

  const Playlists();

  @override
  Widget build(BuildContext context) {
    final playlists = context.select<PlaylistsCubit, List<SimplifiedPlaylist>>(
      (bloc) => bloc.state.playlists,
    );

    final currentSelected = context.watch<SelectedPlaylistCubit>().state;

    return ListView.separated(
      itemCount: playlists.length,
      separatorBuilder: (_, index) => const Divider(),
      itemBuilder: (_, index) {
        final item = playlists[index];

        return PlaylistItem(
          item,
          isSelected: currentSelected.mode == SelectedMode.playlist &&
              currentSelected.playlist?.id == item.id,
        );
      },
    );
  }
}
