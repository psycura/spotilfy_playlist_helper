import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/core/presentation/widgets/main_screen_template.dart';
import 'package:spotify_playlist_helper/di.dart';
import 'package:spotify_playlist_helper/presentation/main_navigation/widgets/main_navigation.dart';
import 'package:spotify_playlist_helper/presentation/main_screen/widgets/main_content.dart';
import 'package:spotify_playlist_helper/presentation/playlists/cubits/playlists_cubit.dart';
import 'package:spotify_playlist_helper/presentation/playlists/widgets/playlists_navigation.dart';
import 'package:spotify_playlist_helper/presentation/tracks/cubits/saved_tracks_cubit.dart';
import 'package:spotify_playlist_helper/presentation/tracks/cubits/tracks_management_cubit.dart';

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
            playlistsRepo: di.get(),
            tracksRepo: di.get(),
          )..init(),
        ),
        BlocProvider<SavedTracksCubit>(
          create: (_) =>
              SavedTracksCubit(repo: di.get())..init(),
        ),
        BlocProvider<TracksCubit>(
          create: (_) => TracksCubit(logger: di.get(), tracksRepo: di.get()),
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
