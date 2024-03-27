import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/core/domain/repositories/playlists_repository.dart';
import 'package:spotify_playlist_helper/core/enums/fetching_state.dart';
import 'package:spotify_playlist_helper/core/enums/sorting.dart';
import 'package:spotify_playlist_helper/core/utils/track_utils.dart';
import 'package:spotify_playlist_helper/core/domain/entities/tracks/track.dart';
import 'package:spotify_playlist_helper/core/domain/repositories/tracks_repository.dart';

import '../../../core/results/result.dart';

class SavedTracksState extends Equatable {
  final FetchingState fetchingState;
  final List<TrackEntity> tracks;
  final SortBy sortBy;
  final SortOrder order;

  const SavedTracksState({
    this.fetchingState = FetchingState.idle,
    this.tracks = const <TrackEntity>[],
    this.sortBy = SortBy.name,
    this.order = SortOrder.asc,
  });

  SavedTracksState copyWith({
    FetchingState? fetchingState,
    List<TrackEntity>? tracks,
    SortBy? sortBy,
    SortOrder? order,
  }) {
    return SavedTracksState(
      fetchingState: fetchingState ?? this.fetchingState,
      tracks: tracks ?? this.tracks,
      sortBy: sortBy ?? this.sortBy,
      order: order ?? this.order,
    );
  }

  @override
  List<Object?> get props => [
        fetchingState,
        tracks,
        sortBy,
        order,
      ];
}

class SavedTracksCubit extends Cubit<SavedTracksState> {
  static const String tag = 'SavedTracksCubit';

  final ITracksRepository _tracksRepo;
  final IPlaylistsRepository _playlistsRepo;

  StreamSubscription<Iterable<TrackEntity>>? _tracksSub;

  SavedTracksCubit({
    required ITracksRepository tracksRepo,
    required IPlaylistsRepository playlistRepo,
  })  : _tracksRepo = tracksRepo,
        _playlistsRepo = playlistRepo,
        super(const SavedTracksState());

  void init() {
    _tracksSub =
        _tracksRepo.getSavedTracksStream().listen(_handleTracksUpdates);
  }

  void _handleTracksUpdates(Iterable<TrackEntity> items) {
    final tracks = TrackUtils.getSortedTracks(
      items,
      sortBy: state.sortBy,
      sortOrder: state.order,
    );
    emit(state.copyWith(tracks: tracks));
  }

  void changeSortBy(SortBy sortBy) {
    SortOrder order = state.order;
    SortBy currentSortBy = state.sortBy;

    // ignore: match-positional-field-names-on-assignment
    final (newSortBy, sortOrder) = TrackUtils.getSortByAndOrder(
      currentSortBy: currentSortBy,
      newSortBy: sortBy,
      currentOrder: order,
    );

    emit(
      state.copyWith(
        order: sortOrder,
        sortBy: newSortBy,
        tracks: TrackUtils.getSortedTracks(
          state.tracks,
          sortBy: newSortBy,
          sortOrder: sortOrder,
        ),
      ),
    );
  }

  Future<void> addUnlinkedTracksToPlaylist() async {
    emit(state.copyWith(fetchingState: FetchingState.fetching));

    final res = await _playlistsRepo.moveAllUnlinkedTracksToPlaylist();

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

  Future<void> fetchSavedTracks() async {
    emit(state.copyWith(fetchingState: FetchingState.fetching));

    final res = await _tracksRepo.fetchSavedTracks();

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

  void reset() => emit(const SavedTracksState());

  @override
  Future<void> close() async {
    await _tracksSub?.cancel();
    super.close();
  }
}
