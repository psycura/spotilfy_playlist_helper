import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/presentation/tracks/cubits/saved_tracks_cubit.dart';

class UnlinkedTracks extends StatelessWidget {
  static const String tag = 'UnlinkedTracks';

  void _onPress(BuildContext context) {
    context.read<SavedTracksCubit>().addUnlinkedTracksToPlaylist();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: InkWell(
        onTap: () => _onPress(context),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.library_add_outlined),
            ],
          ),
        ),
      ),
    );
  }
}
