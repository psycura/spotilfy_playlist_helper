import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/core/enums/fetching_state.dart';
import 'package:spotify_playlist_helper/features/playlists/presentation/cubits/selected_playlist_cubit.dart';
import 'package:spotify_playlist_helper/features/tracks/presentation/cubits/saved_tracks_cubit.dart';
import 'package:spotify_playlist_helper/features/tracks/presentation/screens/saved_tracks_content_screen.dart';

class FavoriteTracks extends StatelessWidget {
  static const String tag = 'FavoriteTracks';

  final bool isSelected;

  const FavoriteTracks({this.isSelected = false});

  void _onItemTap(BuildContext context) {
    context.read<SelectedPlaylistCubit>().selectFavorites();
    SavedTracksContentScreen.open(context);
  }

  void _onRefreshTap(BuildContext context) {
    context.read<SavedTracksCubit>().fetchSavedTracks();
  }

  @override
  Widget build(BuildContext context) {
    var leadingIcon =
        isSelected ? Icons.favorite : Icons.favorite_border_outlined;

    final fetchState = context.select<SavedTracksCubit, FetchingState>(
      (bloc) => bloc.state.fetchingState,
    );

    var trailingIcon = fetchState == FetchingState.failure
        ? Icons.error_outline
        : Icons.refresh;

    return ListTile(
      leading: Icon(leadingIcon, size: 50),
      title: Text(
        "Favorites",
        style: TextStyle(
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      trailing: fetchState == FetchingState.fetching
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
