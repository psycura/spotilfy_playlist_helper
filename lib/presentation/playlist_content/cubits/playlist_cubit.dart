import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_playlist_helper/core/enums/fetching_state.dart';
import 'package:spotify_playlist_helper/core/enums/sorting.dart';
import 'package:spotify_playlist_helper/core/utils/track_utils.dart';
import 'package:spotify_playlist_helper/core/domain/entities/tracks/track.dart';
import 'package:spotify_playlist_helper/core/domain/repositories/tracks_repository.dart';

part 'playlist_cubit.freezed.dart';

@freezed
class PlaylistState with _$PlaylistState {
  const PlaylistState._();

  const factory PlaylistState({
    @Default(FetchingState.idle) FetchingState fetchingState,
    @Default(<TrackEntity>[]) List<TrackEntity> tracks,
    @Default(SortBy.name) SortBy sortBy,
    @Default(SortOrder.asc) SortOrder order,
  }) = _PlaylistState;
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
    _tracksSub = _repo
        .getPlaylistTracksStream(playlistId)
        .listen(_handleTracksUpdates);
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
