import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/core/enums/fetching_state.dart';
import 'package:spotify_playlist_helper/core/enums/sorting.dart';
import 'package:spotify_playlist_helper/core/utils/track_utils.dart';
import 'package:spotify_playlist_helper/core/domain/entities/tracks/track.dart';
import 'package:spotify_playlist_helper/core/domain/repositories/tracks_repository.dart';

class PlaylistState extends Equatable {
  final FetchingState fetchingState;
  final List<TrackEntity> tracks;
  final SortBy sortBy;
  final SortOrder order;

  const PlaylistState({
    this.fetchingState = FetchingState.idle,
    this.tracks = const <TrackEntity>[],
    this.sortBy = SortBy.name,
    this.order = SortOrder.asc,
  });

  PlaylistState copyWith({
    FetchingState? fetchingState,
    List<TrackEntity>? tracks,
    SortBy? sortBy,
    SortOrder? order,
  }) {
    return PlaylistState(
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

class PlaylistCubit extends Cubit<PlaylistState> {
  static const String tag = 'PlaylistCubit';

  final ITracksRepository _repo;

  StreamSubscription<Iterable<TrackEntity>>? _tracksSub;

  PlaylistCubit({
    required ITracksRepository repo,
  })  : _repo = repo,
        super(const PlaylistState());

  void init(String playlistId) {
    _tracksSub =
        _repo.getPlaylistTracksStream(playlistId).listen(_handleTracksUpdates);
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

  void reset() => emit(const PlaylistState());

  @override
  Future<void> close() async {
    await _tracksSub?.cancel();
    super.close();
  }
}
