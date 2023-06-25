import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/core/enums/fetching_state.dart';
import 'package:spotify_playlist_helper/di.dart';
import 'package:spotify_playlist_helper/presentation/playlists/cubits/add_playlist_cubit.dart';
import 'package:spotify_playlist_helper/presentation/playlists/widgets/playlist_input.dart';

import 'save_playlist_button.dart';

class AddPlaylistModal extends StatelessWidget {
  static Future<void> show(BuildContext context) {
    return showDialog(
      context: context,
      builder: (_) {
        return BlocProvider<AddPlaylistCubit>(
          create: (_) => AddPlaylistCubit(repo: di.get()),
          lazy: false,
          child: const AddPlaylistModal(),
        );
      },
    );
  }

  const AddPlaylistModal();

  void _onSavePress(BuildContext context) {
    context.read<AddPlaylistCubit>().savePlaylist();
  }

  void _onSaveSuccess(BuildContext context, AddPlaylistState state) {
    if (state.fetchingState == FetchingState.done) {
      context.router.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddPlaylistCubit, AddPlaylistState>(
      listener: _onSaveSuccess,
      listenWhen: (prev, next) => (prev.fetchingState != FetchingState.done &&
          next.fetchingState == FetchingState.done),
      child: AlertDialog(
        title: const Text('Add Playlist'),
        content: PlaylistInput(
          onSubmit: () => _onSavePress(context),
        ),
        scrollable: false,
        actions: <Widget>[
          SavePlaylistButton(onPress:()=> _onSavePress(context)),
          TextButton(
            child: const Text('Cancel'),
            onPressed: () => context.router.pop(),
          ),
        ],
      ),
    );
  }
}
