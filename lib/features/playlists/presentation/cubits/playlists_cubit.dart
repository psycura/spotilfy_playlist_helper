import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/core/enums/fetching_state.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/simplified_playlist.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/repositories/playlists_repository.dart';

part 'playlists_cubit.freezed.dart';

@freezed
class PlaylistsState with _$PlaylistsState {
  const PlaylistsState._();

  const factory PlaylistsState({
    @Default(FetchingState.idle) FetchingState fetchingState,
    @Default(<SimplifiedPlaylist>[]) List<SimplifiedPlaylist> playlists,
  }) = _PlaylistsState;
}

class PlaylistsCubit extends Cubit<PlaylistsState> {
  static const String tag = 'PlaylistsCubit';

  final Logger _logger;

  final IPlaylistsRepository _repo;

  StreamSubscription<Iterable<SimplifiedPlaylist>>? _playlistsSub;

  PlaylistsCubit({
    required Logger logger,
    required IPlaylistsRepository repo,
  })  : _logger = logger,
        _repo = repo,
        super(const PlaylistsState());

  // @override
  // void onChange(change) {
  //   _logger.d(
  //     '$tag onChange'
  //     '\n [CURRENT STATE]: ${change.currentState}'
  //     '\n [NEXT STATE]: ${change.nextState}',
  //   );
  //   super.onChange(change);
  // }

  void init() {
    _playlistsSub =
        _repo.getCurrentPlaylistsStream().listen(_handlePlaylistsUpdates);

    fetchCurrentUserPlaylists();
  }

  void _handlePlaylistsUpdates(Iterable<SimplifiedPlaylist> items) {
    emit(state.copyWith(playlists: items.toList()));
  }

  Future<void> fetchCurrentUserPlaylists() async {
    emit(state.copyWith(fetchingState: FetchingState.fetching));

    final res = await _repo.getCurrentUserPlaylists();

    res.fold(
      (failure) => emit(state.copyWith(fetchingState: FetchingState.failure)),
      (success) => emit(state.copyWith(fetchingState: FetchingState.done)),
    );

    emit(state.copyWith(fetchingState: FetchingState.idle));
  }

  void reset() => emit(const PlaylistsState());

  @override
  Future<void> close() async {
    await _playlistsSub?.cancel();
    super.close();
  }
}
