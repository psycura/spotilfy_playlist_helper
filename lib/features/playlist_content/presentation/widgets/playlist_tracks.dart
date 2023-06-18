import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/features/playlist_content/presentation/cubits/playlist_cubit.dart';
import 'package:spotify_playlist_helper/features/tracks/presentation/widgets/track_item.dart';

class PlaylistTracks extends StatelessWidget {
  static const String tag = 'PlaylistTracks';

  @override
  Widget build(BuildContext context) {
    final tracks = context.watch<PlaylistCubit>().state.tracks;

    return ListView.builder(
      itemCount: tracks.length,
      itemBuilder: (ctx, index) {
        final track = tracks[index].track;

        return TrackItem(track, index);
      },
    );
  }
}
