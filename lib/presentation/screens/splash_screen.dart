import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/di.dart';

import 'package:spotify_playlist_helper/presentation/splash/cubits/splash_cubit.dart';

import 'login_screen.dart';
import 'main_screen.dart';

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
    MainScreen.open(context, replace: true);
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
