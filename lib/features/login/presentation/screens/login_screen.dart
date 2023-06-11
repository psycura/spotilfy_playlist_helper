import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/di.dart';
import 'package:spotify_playlist_helper/features/login/presentation/cubits/login_cubit.dart';

import '../widgets/authenticator.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  static const String path = '/LoginScreen';

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

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (_) => LoginCubit(logger: di.get(), repo: di.get()),
      child: Scaffold(
        body: SafeArea(
          child: Authenticator(),
        ),
      ),
    );
  }
}
