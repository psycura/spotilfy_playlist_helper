import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/di.dart';
import 'package:spotify_playlist_helper/features/playlists/presentation/cubits/selected_playlist_cubit.dart';


class GlobalBlocsProvider extends StatelessWidget {
  static const String tag = 'GlobalBlocsProvider';

  final Widget child;

  const GlobalBlocsProvider({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SelectedPlaylistCubit>(
          create: (_) => SelectedPlaylistCubit(logger: di.get()),
        ),
      ],
      child: child,
    );

  }
}
