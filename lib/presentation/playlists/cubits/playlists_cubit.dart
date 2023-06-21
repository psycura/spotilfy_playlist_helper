import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:spotify_playlist_helper/core/domain/entities/playlist/playlist_with_state.dart';
import 'package:spotify_playlist_helper/core/enums/fetching_state.dart';
import 'package:spotify_playlist_helper/core/domain/entities/playlist/playlist.dart';
import 'package:spotify_playlist_helper/core/domain/repositories/playlists_repository.dart';
import 'package:spotify_playlist_helper/core/domain/repositories/tracks_repository.dart';

part 'playlists_cubit.freezed.dart';

@freezed
class PlaylistsState with _$PlaylistsState {
  const PlaylistsState._();

  const factory PlaylistsState({
    @Default(FetchingState.idle) FetchingState fetchingState,
    @Default(<String, PlaylistWithState>{})
    Map<String, PlaylistWithState> playlists,
  }) = _PlaylistsState;
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

    res.fold(
      (failure) => emit(state.copyWith(fetchingState: FetchingState.failure)),
      (success) => emit(state.copyWith(fetchingState: FetchingState.done)),
    );

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

    res.fold(
      (failure) => fetchState = FetchingState.failure,
      (tracks) => fetchState = FetchingState.done,
    );

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
