import 'package:flutter/material.dart';
import 'package:spotify_playlist_helper/core/presentation/widgets/spotify_image_widget.dart';
import 'package:spotify_playlist_helper/core/utils/extensions/duration_extension.dart';
import 'package:spotify_playlist_helper/core/domain/entities/tracks/track.dart';

import 'playlist_button.dart';
import 'saved_button.dart';

class TrackItem extends StatelessWidget {
  static const String tag = 'TrackItem';

  final TrackEntity track;
  final int index;

  const TrackItem(this.track, this.index);

  void _onTrackPress(BuildContext context) {
    print('[alitz]: $track');
  }

  @override
  Widget build(BuildContext context) {
    final trackArtists = track.artists.map((a) => a.name).join(', ');

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: InkWell(
        onTap: () => _onTrackPress(context),
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
            Flexible(
              flex: 1,
              child: InkWell(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                onTap: () {},
                child: const Icon(Icons.more_vert),
              ),
            )
          ],
        ),
      ),
    );
  }
}
