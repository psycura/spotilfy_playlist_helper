import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/core/enums/fetching_state.dart';
import 'package:spotify_playlist_helper/core/presentation/widgets/empty_list.dart';
import 'package:spotify_playlist_helper/features/playlist_content/presentation/cubits/playlist_cubit.dart';
import 'package:spotify_playlist_helper/features/playlists/presentation/cubits/playlists_cubit.dart';
import 'package:spotify_playlist_helper/features/tracks/domain/entities/track_with_meta.dart';
import 'package:spotify_playlist_helper/features/tracks/presentation/widgets/track_item.dart';

class PlaylistTracks extends StatelessWidget {
  static const String tag = 'PlaylistTracks';

  final String playlistId;

  const PlaylistTracks({required this.playlistId});

  void _onRefreshPress(BuildContext context) {
    context.read<PlaylistsCubit>().fetchPlaylistTracks(playlistId);
  }

  @override
  Widget build(BuildContext context) {
    final tracks = context.select<PlaylistCubit, List<TrackWithMetaEntity>>(
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
        : ListView.builder(
            itemCount: tracks.length,
            itemBuilder: (ctx, index) {
              final track = tracks[index].track;

              return TrackItem(track, index);
            },
          );
  }
}
