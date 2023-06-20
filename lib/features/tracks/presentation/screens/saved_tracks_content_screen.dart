import 'package:flutter/widgets.dart';
import 'package:auto_route/auto_route.dart';

import '../widgets/saved_tracks.dart';

@RoutePage()
class SavedTracksContentScreen extends StatelessWidget {
  static const String tag = 'SavedTracksContentScreen';
  static const String path = 'SavedTracksContentScreen';

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
    return Center(
      child: SavedTracks(),
    );
  }
}
