import 'package:flutter/material.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/simplified_playlist.dart';

class PlaylistItem extends StatelessWidget {
  static const String tag = 'PlaylistItem';

  final SimplifiedPlaylist playlist;

  const PlaylistItem(this.playlist);

  void _onItemTap(BuildContext context) {
    print('[alitz] ${playlist.name}');
  }

  void _onDeleteTap(BuildContext context) {
    print('[alitz]  delete ${playlist.name}');
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        playlist.images.first.url,
        height: 50,
      ),
      title: Text(playlist.name),
      trailing: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        onTap: () =>_onDeleteTap(context),
        child: const Icon(Icons.delete_outline),
      ),
      onTap: () => _onItemTap(context),
    );
  }
}
