import 'package:flutter/material.dart';


class GlobalBlocsProvider extends StatelessWidget {
  static const String tag = 'GlobalBlocsProvider';

  final Widget child;

  const GlobalBlocsProvider({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    // return MultiBlocProvider(
    //   providers: const [],
    //   child: child,
    // );

    return child;
  }
}
