import 'package:auto_route/auto_route.dart';
import 'package:spotify_playlist_helper/features/login/presentation/screens/login_screen.dart';
import 'package:spotify_playlist_helper/features/main_screen/presentation/screens/main_screen.dart';
import 'package:spotify_playlist_helper/features/playlist_content/presentation/screens/playlist_content_screen.dart';
import 'package:spotify_playlist_helper/features/splash/presentation/screens/splash_screen.dart';
import 'package:spotify_playlist_helper/features/tracks/presentation/screens/saved_tracks_content_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          path: SplashScreen.path,
          page: SplashRoute.page,
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
        CustomRoute(
          path: MainScreen.path,
          page: MainRoute.page,
          transitionsBuilder: TransitionsBuilders.noTransition,
          children: [
            RedirectRoute(path: '', redirectTo: SavedTracksContentScreen.path),

            CustomRoute(
              path: SavedTracksContentScreen.path,
              page: SavedTracksContentRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
              durationInMilliseconds: 50,
              barrierDismissible: false,
            ),
            CustomRoute(
              path: PlaylistContentScreen.path,
              page: PlaylistContentRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
              durationInMilliseconds: 50,
              barrierDismissible: false,
            ),
          ],
        ),
        CustomRoute(
          path: LoginScreen.path,
          page: LoginRoute.page,
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
      ];
}
