import 'package:flutter/widgets.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class FavoritesContentScreen extends StatelessWidget {
  static const String tag='FavoritesContentScreen';
  static const String path = 'FavoritesContentScreen';

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
    return const Center(
      child: Text('Favorites'),
    );
  }
}
