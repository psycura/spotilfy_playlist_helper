import 'package:flutter/material.dart';
import 'package:spotify_playlist_helper/core/enums/sorting.dart';

class TracksHeader extends StatelessWidget {
  static const String tag = 'TracksHeader';

  final Function(BuildContext, SortBy) onPress;

  const TracksHeader({required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: Center(child: Text('')),
        ),
        const Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: Center(child: Text('')),
        ),
        Flexible(
          flex: 8,
          fit: FlexFit.tight,
          child: ListTile(
            title: const Text('Name'),
            onTap: () => onPress(context, SortBy.name),
          ),
        ),
        Flexible(
          flex: 2,
          // fit: FlexFit.tight,
          child: ListTile(
            onTap: () => onPress(context, SortBy.playlistsCount),
            leading: const Icon(Icons.list_alt),
          ),
        ),
        // const Flexible(
        //   flex: 1,
        //   // fit: FlexFit.tight,
        //   child: Center(child: Text('')),
        // ),
        Flexible(
          flex: 2,
          // fit: FlexFit.tight,
          child: ListTile(
            onTap: () => onPress(context, SortBy.saved),
            leading: const Icon(Icons.favorite),
          ),
        ),
        // const Flexible(
        //   flex: 1,
        //   // fit: FlexFit.tight,
        //   child: Center(child: Text('')),
        // )
      ],
    );
  }
}
