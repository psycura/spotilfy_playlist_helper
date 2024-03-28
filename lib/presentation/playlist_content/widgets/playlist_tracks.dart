import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/core/enums/fetching_state.dart';
import 'package:spotify_playlist_helper/core/enums/sorting.dart';
import 'package:spotify_playlist_helper/core/presentation/widgets/empty_list.dart';

import 'package:spotify_playlist_helper/core/domain/entities/tracks/track.dart';
import 'package:spotify_playlist_helper/presentation/playlist_content/cubits/playlist_cubit.dart';
import 'package:spotify_playlist_helper/presentation/playlists/cubits/playlists_cubit.dart';
import 'package:spotify_playlist_helper/presentation/tracks/widgets/track_item.dart';
import 'package:spotify_playlist_helper/presentation/tracks/widgets/tracks_header.dart';

class PlaylistTracks extends StatelessWidget {
  static const String tag = 'PlaylistTracks';

  final String playlistId;

  const PlaylistTracks({required this.playlistId});

  void _onRefreshPress(BuildContext context) {
    context.read<PlaylistsCubit>().fetchPlaylistTracks(playlistId);
  }

  void _onPressHandler(BuildContext context, SortBy sortBy) {
    context.read<PlaylistCubit>().changeSortBy(sortBy);
  }

  @override
  Widget build(BuildContext context) {
    final tracks = context.select<PlaylistCubit, List<TrackEntity>>(
      (bloc) => bloc.state.tracks,
    );

    final fetchState = context.select<PlaylistsCubit, FetchingState>(
      (bloc) => bloc.state.playlists[playlistId]?.state ?? FetchingState.idle,
    );

    return tracks.isEmpty
        ? EmptyList(
            onPress: () => _onRefreshPress(context),
            fetchingState: fetchState,
          )
        : Column(
            children: [
              TracksHeader(onPress: _onPressHandler),
              Expanded(
                child: ListView.builder(
                  itemCount: tracks.length,
                  itemBuilder: (ctx, index) {
                    final track = tracks[index];

                    return TrackItem(
                      track,
                      index,
                      showDeleteButton: true,
                    );
                  },
                ),
              ),
            ],
          );
  }
}
