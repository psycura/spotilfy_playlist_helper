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

  void _onDeleteTap(BuildContext context) {
    print('[alitz]  delete ${playlist.name}');
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        playlist.images.first.url,
        gaplessPlayback: true,
        height: 50,
        loadingBuilder: (ctx, img, loadingProgress) {
          if (loadingProgress == null) {
            return img;
          }

          return const SizedBox(
            height: 50,
            width: 50,
          );
        },
      ),
      title: Text(
        playlist.name,
        style: TextStyle(
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      trailing: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        onTap: () => _onDeleteTap(context),
        child: const Icon(Icons.delete_outline),
      ),
      onTap: () => _onItemTap(context),
    );
  }
}
