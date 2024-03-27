import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/presentation/login/cubits/login_state.dart';
import 'package:spotify_playlist_helper/presentation/screens/main_screen.dart';

import '../cubits/login_cubit.dart';
import 'web_view_content.dart';

class Authenticator extends StatelessWidget {
  const Authenticator();

  void _onCodeReceived(
    BuildContext context,
    String code,
  ) {
    context.read<LoginCubit>().startAuthorization(code);
  }

  void _handleAuthorizationState(BuildContext context, LoginState state) {
    switch (state) {
      case AuthorizedLoginState():
        MainScreen.open(context, replace: true);
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: _handleAuthorizationState,
      builder: (context, state) {
        switch (state) {
          case AuthorizingLoginState():
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          case FailureLoginState():
            return const Center(
              child: Text("Error"),
            );
          default:
            return WebViewContent(
              onCodeReceivedHandler: (code) => _onCodeReceived(context, code),
            );
        }
      },
    );
  }
}
