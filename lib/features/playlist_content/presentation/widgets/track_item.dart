import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';
import 'package:spotify_playlist_helper/core/utils/extensions/duration_extension.dart';

class TrackItem extends StatelessWidget {
  static const String tag = 'TrackItem';

  final TrackEntity track;
  final int index;

  const TrackItem(this.track, this.index);

  @override
  Widget build(BuildContext context) {
    final trackArtists = track.artists.map((a) => a.name).join(', ');

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
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
            child: CachedNetworkImage(
              imageUrl: track.album.images.first.url,
              height: 50,
              placeholder: (_, __) => const SizedBox(
                height: 50,
                width: 50,
              ),
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
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 4),
                  Text(trackArtists),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child:
                Text(Duration(milliseconds: track.duration_ms).toElapsedTime()),
          ),
          Flexible(
            flex: 1,
            child:
            InkWell(
              onTap: (){},
              child: const Icon(Icons.more_vert),
            ),
          )
        ],
      ),
    );
  }
}
