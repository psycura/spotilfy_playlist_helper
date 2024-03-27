import 'package:flutter/material.dart';
import 'package:spotify_playlist_helper/presentation/playlists/widgets/add_playlist_modal.dart';

class AddPlaylistButton extends StatelessWidget {
  const AddPlaylistButton();

  static const String tag = 'AddPlaylistButton';

  void _onPress(BuildContext context) {
    AddPlaylistModal.show(context);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _onPress(context),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.add),
          ],
        ),
      ),
    );
  }
}
