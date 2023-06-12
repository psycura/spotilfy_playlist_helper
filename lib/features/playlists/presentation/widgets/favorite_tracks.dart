import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/features/favorites_content/presentation/screens/favorites_content_screen.dart';
import 'package:spotify_playlist_helper/features/playlists/presentation/cubits/selected_playlist_cubit.dart';

class FavoriteTracks extends StatelessWidget {
  static const String tag = 'FavoriteTracks';

  final bool isSelected;

  const FavoriteTracks({this.isSelected = false});

  void _onItemTap(BuildContext context) {
    context.read<SelectedPlaylistCubit>().selectFavorites();
    FavoritesContentScreen.open(context);
  }

  @override
  Widget build(BuildContext context) {
    var icon = isSelected ? Icons.favorite : Icons.favorite_border_outlined;

    return ListTile(
      leading: Icon(icon, size: 50),
      title: Text(
        "Favorites",
        style: TextStyle(
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      onTap: () => _onItemTap(context),
    );
  }
}
