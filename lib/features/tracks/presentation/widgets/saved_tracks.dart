import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/core/enums/sorting.dart';
import 'package:spotify_playlist_helper/core/presentation/widgets/empty_list.dart';
import 'package:spotify_playlist_helper/features/tracks/presentation/cubits/saved_tracks_cubit.dart';
import 'package:spotify_playlist_helper/features/tracks/presentation/widgets/track_item.dart';

import 'tracks_header.dart';

class SavedTracks extends StatelessWidget {
  static const String tag = 'SavedTracks';

  void _onRefreshPress(BuildContext context) {
    context.read<SavedTracksCubit>().fetchSavedTracks();
  }

  void _onPressHandler(BuildContext context, SortBy sortBy) {
    context.read<SavedTracksCubit>().changeSortBy(sortBy);
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<SavedTracksCubit>().state;

    return state.tracks.isEmpty
        ? EmptyList(
            onPress: () => _onRefreshPress(context),
            fetchingState: state.fetchingState,
          )
        : Column(
            children: [
              TracksHeader(onPress: _onPressHandler),
              Expanded(
                child: ListView.builder(
                  itemCount: state.tracks.length,
                  itemBuilder: (ctx, index) {
                    final track = state.tracks[index].track;

                    return TrackItem(track, index);
                  },
                ),
              ),
            ],
          );
  }
}
