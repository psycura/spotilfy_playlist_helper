import 'package:flutter/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/app/router/app_router.dart';
import 'package:spotify_playlist_helper/di.dart';
import 'package:spotify_playlist_helper/presentation/playlist_content/cubits/playlist_cubit.dart';
import 'package:spotify_playlist_helper/presentation/playlist_content/widgets/playlist_tracks.dart';

@RoutePage()
class PlaylistContentScreen extends StatelessWidget {
  static const String tag = 'PlaylistContentScreen';
  static const String path = 'PlaylistContentScreen';

  final String playlistId;

  const PlaylistContentScreen(this.playlistId);

  static void open(
    BuildContext context, {
    required String playlistId,
    bool replace = false,
  }) {
    if (replace) {
      context.router.replace(
        PlaylistContentRoute(playlistId: playlistId),
      );
    } else {
      context.router.push(
        PlaylistContentRoute(playlistId: playlistId),
      );
    }
  }

  static void goBack(BuildContext context) {
    context.navigateNamedTo(path);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlaylistCubit>(
      create: (_) => PlaylistCubit(
        repo: di.get(),
        playlistsRepo: di.get(),
      )..init(playlistId),
      child: Center(
        child: PlaylistTracks(playlistId: playlistId),
      ),
    );
  }
}
