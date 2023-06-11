import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../user_profile/presentation/widgets/user_profile.dart';

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Main Screen"),
      ),
      body: Center(
        child: UserProfile(),
      ),
    );
  }
}
