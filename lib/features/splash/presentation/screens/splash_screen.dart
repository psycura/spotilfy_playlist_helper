import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/di.dart';
import 'package:spotify_playlist_helper/features/login/presentation/screens/login_screen.dart';
import 'package:spotify_playlist_helper/features/main_screen/presentation/screens/main_screen.dart';
import 'package:spotify_playlist_helper/features/playlist_content/presentation/screens/playlist_content_screen.dart';
import 'package:spotify_playlist_helper/features/playlists/presentation/cubits/selected_playlist_cubit.dart';
import 'package:spotify_playlist_helper/features/splash/presentation/cubits/splash_cubit.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  static const String path = '/';

  static void open(
    BuildContext context, {
    bool replace = false,
  }) {
    if (replace) {
      context.router.replaceNamed(path);
    } else {
      context.router.pushNamed(path);
    }
  }

  static void goBack(BuildContext context) {
    context.navigateNamedTo(path);
  }

  void _handleInitState(BuildContext context, SplashState state) {
    state.maybeWhen(
      orElse: () {},
      unauthorized: () => LoginScreen.open(context, replace: true),
      authorized: () => _handleAuthorizedState(context),
    );
  }

  void _handleAuthorizedState(BuildContext context) {
    final current = context.read<SelectedPlaylistCubit>().state;

    if (current.mode == SelectedMode.favorites) {
      MainScreen.open(context, replace: true);
    } else {
      PlaylistContentScreen.open(context, playlistId: current.playlist!.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashCubit>(
      create: (_) => di.get()..init(),
      child: Scaffold(
        body: SafeArea(
          child: BlocListener<SplashCubit, SplashState>(
            listener: _handleInitState,
            child: Container(
              alignment: Alignment.center,
              child: const CupertinoActivityIndicator(),
            ),
          ),
        ),
      ),
    );
  }
}
