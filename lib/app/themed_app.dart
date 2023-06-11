import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';


import '../di.dart';
import 'router/app_router.dart';
import 'router/router_logging_observer.dart';

class ThemedApp extends StatelessWidget {

  final AppRouter router;

  const ThemedApp(this.router);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark, // status bar color
      ),
    );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: router.defaultRouteParser(),
      routerDelegate: AutoRouterDelegate(
        router,
        navigatorObservers: () => [
          RouterLoggingObserver(logger: di.get<Logger>(), appRouter: router),
        ],
      ),
    );
  }
}
