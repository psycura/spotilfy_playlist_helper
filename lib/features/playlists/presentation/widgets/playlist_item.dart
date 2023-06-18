import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/features/playlist_content/presentation/screens/playlist_content_screen.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/simplified_playlist.dart';
import 'package:spotify_playlist_helper/features/playlists/presentation/cubits/selected_playlist_cubit.dart';

class PlaylistItem extends StatelessWidget {
  static const String tag = 'PlaylistItem';

  final SimplifiedPlaylist playlist;
  final bool isSelected;

  const PlaylistItem(this.playlist, {this.isSelected = false});

  void _onItemTap(BuildContext context) {
    context.read<SelectedPlaylistCubit>().selectPlaylist(playlist);
    PlaylistContentScreen.open(context, playlistId: playlist.id);
  }

  void _onRefreshTap(BuildContext context) {
    print('[alitz]  refresh ${playlist.name}');
  }

  @override
  Widget build(BuildContext context) {
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
        ),
      ),
      trailing: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        onTap: () => _onRefreshTap(context),
        child: const Icon(Icons.refresh),
      ),
      onTap: () => _onItemTap(context),
    );
  }
}
