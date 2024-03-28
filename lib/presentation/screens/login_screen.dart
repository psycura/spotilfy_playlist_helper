import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/di.dart';
import 'package:spotify_playlist_helper/presentation/login/cubits/login_cubit.dart';
import 'package:spotify_playlist_helper/presentation/login/widgets/authenticator.dart';


@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen();

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
      child: const Scaffold(
        body: SafeArea(
          child: Authenticator(),
        ),
      ),
    );
  }
}
