import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/core/domain/entities/tracks/track.dart';
import 'package:spotify_playlist_helper/core/presentation/widgets/modal.dart';
import 'package:spotify_playlist_helper/di.dart';
import 'package:spotify_playlist_helper/presentation/playlists/cubits/playlists_cubit.dart';
import 'package:spotify_playlist_helper/presentation/tracks/cubits/track_playlists_cubit.dart';
import 'package:spotify_playlist_helper/presentation/tracks/widgets/track_playlist_selection.dart';

class PlaylistButton extends StatelessWidget {
  static const String tag = 'PlaylistButton';

  final TrackEntity track;

  const PlaylistButton(this.track);

  void _onPress(BuildContext context) {
    Modal.show(
      context,
      title: 'Playlist',
      content: BlocProvider<PlaylistsCubit>.value(
        value: context.read<PlaylistsCubit>(),
        child: Builder(
          builder: (ctx) {
            final playlists = context
                .read<PlaylistsCubit>()
                .state
                .playlists
                .values
                .map((e) => e.playlist);

            return BlocProvider<TrackPlaylistsCubit>(
              create: (_) => TrackPlaylistsCubit(
                track: track,
                playlists: playlists.toList(),
                playlistsRepo: di.get(),
                tracksRepo: di.get(),
              )..init(),
              child: const TrackPlaylistSelection(),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => _onPress(context),
      child: track.playlists.isNotEmpty
          ? Text(
              track.playlists.length.toString(),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            )
          : const Icon(
              Icons.list,
              color: Color(0xff656865),
            ),
    );
  }
}
