import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/presentation/screens/main_screen.dart';

import '../cubits/login_cubit.dart';
import 'web_view_content.dart';

class Authenticator extends StatelessWidget {
  void _onCodeReceived(
    BuildContext context,
    String code,
  ) {

    context.read<LoginCubit>().startAuthorization(code);
  }

  void _handleAuthorizationState(BuildContext context, LoginState state) {
    state.maybeWhen(
      orElse: () {},
      authorized: () => MainScreen.open(context, replace: true),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: _handleAuthorizationState,
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => WebViewContent(
            onCodeReceivedHandler: (code) => _onCodeReceived(context, code),
          ),
          authorizing: () => const Center(
            child: CupertinoActivityIndicator(),
          ),
          failure: () => const Center(
            child: Text("Error"),
          ),
        );
      },
    );
  }
}
