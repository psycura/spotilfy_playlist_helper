import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/core/enums/fetching_state.dart';
import 'package:spotify_playlist_helper/presentation/playlists/cubits/selected_playlist_cubit.dart';
import 'package:spotify_playlist_helper/presentation/screens/saved_tracks_content_screen.dart';
import 'package:spotify_playlist_helper/presentation/tracks/cubits/saved_tracks_cubit.dart';

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
          color: isSelected ? Colors.green : Colors.white,

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
