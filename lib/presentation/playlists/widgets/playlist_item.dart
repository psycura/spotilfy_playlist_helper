import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/core/domain/entities/playlist/playlist_with_state.dart';
import 'package:spotify_playlist_helper/core/enums/fetching_state.dart';
import 'package:spotify_playlist_helper/core/domain/entities/playlist/playlist.dart';
import 'package:spotify_playlist_helper/presentation/playlists/cubits/playlists_cubit.dart';
import 'package:spotify_playlist_helper/presentation/playlists/cubits/selected_playlist_cubit.dart';
import 'package:spotify_playlist_helper/presentation/screens/playlist_content_screen.dart';

class PlaylistItem extends StatelessWidget {
  static const String tag = 'PlaylistItem';

  final String playlistId;
  final bool isSelected;

  const PlaylistItem(this.playlistId, {this.isSelected = false});

  void _onItemTap(BuildContext context) {
    context.read<SelectedPlaylistCubit>().selectPlaylist(playlistId);
    PlaylistContentScreen.open(context, playlistId: playlistId);
  }

  void _onRefreshTap(BuildContext context) {
    context.read<PlaylistsCubit>().fetchPlaylistTracks(playlistId);
  }

  @override
  Widget build(BuildContext context) {
    final playlistObject = context.select<PlaylistsCubit, PlaylistWithState>(
      (bloc) => bloc.state.playlists[playlistId]!,
    );

    PlaylistEntity playlist = playlistObject.playlist;

    IconData trailingIcon = playlistObject.state == FetchingState.failure
        ? Icons.error_outline
        : Icons.refresh;

    return ListTile(
      leading: CachedNetworkImage(
        imageUrl: playlist.images.first.url,
        height: 50,
        placeholder: (_, __) => const SizedBox(
          height: 50,
          width: 50,
        ),
      ),
      title: Text(
        playlist.name,
        style: TextStyle(
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          color: isSelected ? Colors.green : Colors.white,
        ),
      ),
      trailing: playlistObject.state == FetchingState.fetching
          ? const CupertinoActivityIndicator()
          : InkWell(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              onTap: () => _onRefreshTap(context),
              child: Icon(trailingIcon),
            ),
      onTap: () => _onItemTap(context),
    );
  }
}
