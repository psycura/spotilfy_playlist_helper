import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import 'app_router.dart';

/// A routing observer that logs all actions performed on the navigation stack
class RouterLoggingObserver extends AutoRouterObserver {
  @protected
  final AppRouter appRouter;
  @protected
  final Logger logger;

  RouterLoggingObserver({
    required this.logger,
    required this.appRouter,
  });

  @override
  void didPush(Route route, Route? previousRoute) {
    logger.d(
      'ROUTING New route pushed: ${route.settings.name}'
      '\n,args:${route.settings.arguments},'
      '\n stack${_stack()}',
    );
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    logger.d(
      'ROUTING Route poped: ${route.settings.name}, stack${_stack()}',
    );
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    logger.d(
      'ROUTING Route removed: ${route.settings.name}, stack${_stack()}',
    );
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    logger.d(
      'ROUTING Route replaced to: ${newRoute?.settings.name} from: ${oldRoute?.settings.name}, stack${_stack()}',
    );
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    logger.d(
      'ROUTING Tab route visited: ${route.name}, stack${_stack()}',
    );
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    logger.d(
      'ROUTING Tab route re-visited: ${route.name}, stack${_stack()}',
    );
  }

  String _stack() => appRouter.stack.map((it) => it.name).toString();
}
