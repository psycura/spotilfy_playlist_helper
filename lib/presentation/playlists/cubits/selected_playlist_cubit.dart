// ignore_for_file: avoid-dynamic

import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:logger/logger.dart';

enum SelectedMode { favorites, playlist }

class SelectedPlaylistState extends Equatable {
  final SelectedMode mode;
  final String? playlistId;

  const SelectedPlaylistState({
    this.mode =SelectedMode.favorites,
    this.playlistId,
  });

  @override
  List<Object?> get props => [mode, playlistId];
}

class SelectedPlaylistCubit extends Cubit<SelectedPlaylistState> {
  static const String tag = 'SelectedPlaylistCubit';

  final Logger _logger;

  SelectedPlaylistCubit({
    required Logger logger,
  })  : _logger = logger,
        super(const SelectedPlaylistState());

  @override
  void onChange(change) {
    _logger.d(
      '$tag onChange'
      '\n [CURRENT STATE]: ${change.currentState}'
      '\n [NEXT STATE]: ${change.nextState}',
    );
    super.onChange(change);
  }

  void selectPlaylist(String id) {
    emit(
      SelectedPlaylistState(playlistId: id, mode: SelectedMode.playlist),
    );
  }

  void selectFavorites() {
    emit(const SelectedPlaylistState(mode: SelectedMode.favorites));
  }

  void reset() => emit(const SelectedPlaylistState());
}
