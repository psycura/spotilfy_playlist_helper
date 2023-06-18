import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/core/presentation/widgets/main_screen_template.dart';
import 'package:spotify_playlist_helper/di.dart';
import 'package:spotify_playlist_helper/features/main_navigation/presentation/widgets/main_navigation.dart';
import 'package:spotify_playlist_helper/features/playlists/presentation/cubits/playlists_cubit.dart';
import 'package:spotify_playlist_helper/features/playlists/presentation/widgets/playlists_navigation.dart';
import 'package:spotify_playlist_helper/features/tracks/presentation/cubits/saved_tracks_cubit.dart';

import '../widgets/main_content.dart';

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
    return MultiBlocProvider(
      providers: [
        BlocProvider<PlaylistsCubit>(
          create: (_) => PlaylistsCubit(
            logger: di.get(),
            playlistsRepo: di.get(),
            tracksRepo: di.get(),
          )..init(),
        ),
        BlocProvider<SavedTracksCubit>(
          create: (_) =>
              SavedTracksCubit(logger: di.get(), repo: di.get())..init(),
        ),
      ],
      child: MainScreenTemplate(
        mainNavigation: MainNavigation(),
        playlistNavigation: PlaylistsNavigation(),
        playerWidget: Container(
          height: 100,
        ),
        mainContent: MainContent(),
      ),
    );
  }
}
