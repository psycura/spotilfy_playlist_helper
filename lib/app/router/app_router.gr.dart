// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SplashScreen(),
      );
    },
    PlaylistContentRoute.name: (routeData) {
      final args = routeData.argsAs<PlaylistContentRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PlaylistContentScreen(args.playlistId),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MainScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LoginScreen(),
      );
    },
    SavedTracksContentRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SavedTracksContentScreen(),
      );
    },
  };
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PlaylistContentScreen]
class PlaylistContentRoute extends PageRouteInfo<PlaylistContentRouteArgs> {
  PlaylistContentRoute({
    required String playlistId,
    List<PageRouteInfo>? children,
  }) : super(
          PlaylistContentRoute.name,
          args: PlaylistContentRouteArgs(playlistId: playlistId),
          initialChildren: children,
        );

  static const String name = 'PlaylistContentRoute';

  static const PageInfo<PlaylistContentRouteArgs> page =
      PageInfo<PlaylistContentRouteArgs>(name);
}

class PlaylistContentRouteArgs {
  const PlaylistContentRouteArgs({required this.playlistId});

  final String playlistId;

  @override
  String toString() {
    return 'PlaylistContentRouteArgs{playlistId: $playlistId}';
  }
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SavedTracksContentScreen]
class SavedTracksContentRoute extends PageRouteInfo<void> {
  const SavedTracksContentRoute({List<PageRouteInfo>? children})
      : super(
          SavedTracksContentRoute.name,
          initialChildren: children,
        );

  static const String name = 'SavedTracksContentRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
