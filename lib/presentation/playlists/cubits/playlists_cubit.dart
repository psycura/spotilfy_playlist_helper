import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:spotify_playlist_helper/core/domain/entities/playlist/playlist_with_state.dart';
import 'package:spotify_playlist_helper/core/enums/fetching_state.dart';
import 'package:spotify_playlist_helper/core/domain/entities/playlist/playlist.dart';
import 'package:spotify_playlist_helper/core/domain/repositories/playlists_repository.dart';
import 'package:spotify_playlist_helper/core/domain/repositories/tracks_repository.dart';

import '../../../core/results/result.dart';

class PlaylistsState extends Equatable {
  final FetchingState fetchingState;
  final Map<String, PlaylistWithState> playlists;

  const PlaylistsState({
    this.fetchingState = FetchingState.idle,
    this.playlists = const <String, PlaylistWithState>{},
  });

  PlaylistsState copyWith({
    FetchingState? fetchingState,
    Map<String, PlaylistWithState>? playlists,
  }) {
    return PlaylistsState(
      fetchingState: fetchingState ?? this.fetchingState,
      playlists: playlists ?? this.playlists,
    );
  }

  @override
  List<Object?> get props => [fetchingState, playlists];
}

class PlaylistsCubit extends Cubit<PlaylistsState> {
  static const String tag = 'PlaylistsCubit';

  final IPlaylistsRepository _playlistsRepo;

  final ITracksRepository _tracksRepo;

  StreamSubscription<Iterable<PlaylistEntity>>? _playlistsSub;

  PlaylistsCubit({
    required IPlaylistsRepository playlistsRepo,
    required ITracksRepository tracksRepo,
  })  : _playlistsRepo = playlistsRepo,
        _tracksRepo = tracksRepo,
        super(const PlaylistsState());

  void init() {
    _playlistsSub = _playlistsRepo
        .getCurrentPlaylistsStream()
        .listen(_handlePlaylistsUpdates);

    fetchCurrentUserPlaylists();
  }

  void _handlePlaylistsUpdates(Iterable<PlaylistEntity> items) {
    final newMap = <String, PlaylistWithState>{};

    items.map((e) => PlaylistWithState(playlist: e)).forEach((element) {
      newMap[element.playlist.id] = element;
    });

    emit(state.copyWith(playlists: newMap));
  }

  Future<void> fetchCurrentUserPlaylists() async {
    emit(state.copyWith(fetchingState: FetchingState.fetching));

    final res = await _playlistsRepo.getCurrentUserPlaylists();

    switch (res) {
      case Success():
        emit(state.copyWith(fetchingState: FetchingState.done));
        break;

      case Failure():
        emit(state.copyWith(fetchingState: FetchingState.failure));
        break;
    }

    emit(state.copyWith(fetchingState: FetchingState.idle));
  }

  Future<void> fetchPlaylistTracks(String playlistId) async {
    final playlists = Map<String, PlaylistWithState>.from(state.playlists);

    var fetchState = FetchingState.fetching;

    playlists.update(
      playlistId,
      (value) => value.copyWith(state: fetchState),
    );

    emit(state.copyWith(playlists: playlists));

    final res =
        await _tracksRepo.fetchPlaylistTracks(playlists[playlistId]!.playlist);

    switch (res) {
      case Success():
        fetchState = FetchingState.done;
        break;

      case Failure():
        fetchState = FetchingState.failure;
        break;
    }

    playlists.update(
      playlistId,
      (value) => value.copyWith(state: fetchState),
    );

    emit(state.copyWith(playlists: playlists));

    emit(state.copyWith(playlists: <String, PlaylistWithState>{}));

    playlists.update(
      playlistId,
      (value) => value.copyWith(state: FetchingState.idle),
    );

    final newState = state.copyWith(playlists: playlists);

    emit(newState);
  }

  void reset() => emit(const PlaylistsState());

  @override
  Future<void> close() async {
    await _playlistsSub?.cancel();
    super.close();
  }
}
