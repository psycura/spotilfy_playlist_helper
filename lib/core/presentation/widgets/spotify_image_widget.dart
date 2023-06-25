import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';

class SpotifyImage extends StatelessWidget {
  static const String tag = 'SpotifyImageWidget';

  final ImageEntity? image;

  const SpotifyImage([this.image]);

  @override
  Widget build(BuildContext context) {
    if (image == null) {
      return const Icon(
        Icons.image_outlined,
        size: 50,
      );
    }

    return CachedNetworkImage(
      imageUrl: image!.url,
      height: 50,
      placeholder: (_, __) => const SizedBox(
        height: 50,
        width: 50,
      ),
    );
  }
}
