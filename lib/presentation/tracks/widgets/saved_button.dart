import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/core/domain/entities/tracks/track.dart';

import '../cubits/tracks_management_cubit.dart';

class SavedButton extends StatelessWidget {
  static const String tag = 'SavedButton';

  final TrackEntity track;

  const SavedButton(this.track);

  void _onPress(BuildContext context) {
    context.read<TracksCubit>().toggleSaved(track);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _onPress(context),
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      child: track.is_saved
          ? const Icon(Icons.favorite)
          : const Icon(Icons.favorite_outline),
    );
  }
}
