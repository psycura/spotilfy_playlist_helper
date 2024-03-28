import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/core/presentation/widgets/spotify_image_widget.dart';
import 'package:spotify_playlist_helper/core/utils/extensions/duration_extension.dart';
import 'package:spotify_playlist_helper/core/domain/entities/tracks/track.dart';
import 'package:spotify_playlist_helper/presentation/playlist_content/cubits/playlist_cubit.dart';

import 'playlist_button.dart';
import 'saved_button.dart';

class TrackItem extends StatelessWidget {
  static const String tag = 'TrackItem';

  final TrackEntity track;
  final int index;
  final bool showDeleteButton;

  const TrackItem(
    this.track,
    this.index, {
    this.showDeleteButton = false,
  });

  void _onTrackPress() {}

  void _onDeletePress(BuildContext context) {
    context.read<PlaylistCubit>().removeTrackFromPlaylist(track);
  }

  @override
  Widget build(BuildContext context) {
    final trackArtists = track.artists.map((a) => a.name).join(', ');

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: InkWell(
        onTap: () => _onTrackPress(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Center(child: Text('${index + 1}')),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: SpotifyImage(
                track.album.images.isNotEmpty ? track.album.images.first : null,
              ),
            ),
            Flexible(
              flex: 10,
              fit: FlexFit.tight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      track.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(trackArtists),
                  ],
                ),
              ),
            ),
            Flexible(flex: 3, child: PlaylistButton(track)),
            Flexible(
              flex: 2,
              child: Text(
                Duration(milliseconds: track.duration_ms).toElapsedTime(),
              ),
            ),
            Flexible(flex: 1, child: SavedButton(track)),
            showDeleteButton
                ? Flexible(
                    flex: 1,
                    child: InkWell(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      onTap: () => _onDeletePress(context),
                      child: const Icon(Icons.delete_forever_outlined),
                    ),
                  )
                : Flexible(
                    flex: 1,
                    child: InkWell(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      onTap: () {},
                      child: const Icon(Icons.more_vert),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
