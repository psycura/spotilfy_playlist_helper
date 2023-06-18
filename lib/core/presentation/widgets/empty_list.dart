import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_playlist_helper/core/enums/fetching_state.dart';

class EmptyList extends StatelessWidget {
  static const String tag = 'EmptyList';

  final Function onPress;
  final FetchingState? fetchingState;

  const EmptyList({
    required this.onPress,
    this.fetchingState = FetchingState.idle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        fetchingState == FetchingState.fetching
            ? const CupertinoActivityIndicator()
            : IconButton(
                onPressed: () => onPress(),
                icon: const Icon(Icons.cloud_download_outlined),
              ),
        const Text('There is no items yet'),
        const Text('Try to refresh'),
      ],
    );
  }
}
