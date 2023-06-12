import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/di.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/simplified_playlist.dart';
import 'package:spotify_playlist_helper/features/playlists/presentation/cubits/playlists_cubit.dart';
import 'package:spotify_playlist_helper/features/playlists/presentation/widgets/playlist_item.dart';

class PlaylistsNavigation extends StatelessWidget {
  static const String tag = 'PlaylistsNavigation';

  @override
  Widget build(BuildContext _) {
    return BlocProvider<PlaylistsCubit>(
      create: (_) => PlaylistsCubit(
        logger: di.get(),
        repo: di.get(),
      )..fetchCurrentUserPlaylists(),
      child: Builder(
        builder: (context) {
          final playlists =
              context.select<PlaylistsCubit, List<SimplifiedPlaylist>>(
            (bloc) => bloc.state.playlists,
          );

          return ListView.separated(
            itemCount: playlists.length,
            separatorBuilder: (_, index) => const Divider(),
            // prototypeItem: PlaylistItem(playlists.first),
            itemBuilder: (_, index) => PlaylistItem(playlists[index]),
          );
        },
      ),
    );
  }
}
