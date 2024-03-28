import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/presentation/tracks/cubits/track_playlists_cubit.dart';

class TrackPlaylistSelection extends StatelessWidget {
  const TrackPlaylistSelection();

  static const String tag = 'TrackPlaylistSelection';

  void _onPress(
    BuildContext context, {
    required bool isSelected,
    required String playlistId,
  }) {
    if (isSelected) {
      context.read<TrackPlaylistsCubit>().removeTrackFromPlaylist(playlistId);
    } else {
      context.read<TrackPlaylistsCubit>().addTrackToPlaylist(playlistId);
    }
  }

  @override
  Widget build(BuildContext context) {
    final lists = context.watch<TrackPlaylistsCubit>().state.playlists;

    return Column(
      children: lists.values.map(
        (p) {
          var isSelected = p.selected;

          return ListTile(
            leading: isSelected
                ? const Icon(
                    Icons.check_box_outlined,
                    color: Colors.green,
                  )
                : const Icon(Icons.check_box_outline_blank),
            title: Text(p.playlist.name),
            onTap: () => _onPress(
              context,
              isSelected: isSelected,
              playlistId: p.playlist.id,
            ),
          );
        },
      ).toList(),
    );
  }
}
