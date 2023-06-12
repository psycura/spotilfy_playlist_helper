import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/di.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/simplified_playlist.dart';
import 'package:spotify_playlist_helper/features/playlists/presentation/cubits/playlists_cubit.dart';

class PlaylistsNavigation extends StatelessWidget {
  static const String tag = 'PlaylistsNavigation';

  @override
  Widget build(BuildContext _) {
    return BlocProvider<PlaylistsCubit>(
      create: (_) => PlaylistsCubit(
        logger: di.get(),
        repo: di.get(),
      )..fetchCurrentUserPlaylists(),
      child: Center(
        child: Builder(
          builder: (context) {
            final playlists =
                context.select<PlaylistsCubit, List<SimplifiedPlaylist>>(
              (bloc) => bloc.state.playlists,
            );

            return Column(
              children: playlists.map((p) => Text(p.name)).toList(),
            );
          },
        ),
      ),
    );
  }
}
