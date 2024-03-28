// ignore_for_file: prefer-widget-private-members

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/presentation/playlists/cubits/add_playlist_cubit.dart';

class PlaylistInput extends StatefulWidget {
  const PlaylistInput({required this.onSubmit});

  final Function onSubmit;

  @override
  State<PlaylistInput> createState() => _PlaylistInputState();
}

class _PlaylistInputState extends State<PlaylistInput> {
  late FocusNode focus;

  @override
  void initState() {
    super.initState();
    focus = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextFormField(
        onChanged: context.read<AddPlaylistCubit>().changeName,
        onFieldSubmitted: (_) => widget.onSubmit(context),
        focusNode: focus,
        autofocus: true,
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Enter playlist name',
        ),
      ),
    );
  }

  @override
  void dispose() {
    focus.dispose();
    super.dispose();
  }
}
