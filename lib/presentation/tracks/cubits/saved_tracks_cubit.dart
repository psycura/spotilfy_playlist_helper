import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:spotify_playlist_helper/core/enums/fetching_state.dart';
import 'package:spotify_playlist_helper/core/enums/sorting.dart';
import 'package:spotify_playlist_helper/core/utils/track_utils.dart';
import 'package:spotify_playlist_helper/core/domain/entities/tracks/track.dart';
import 'package:spotify_playlist_helper/core/domain/repositories/tracks_repository.dart';

part 'saved_tracks_cubit.freezed.dart';

@freezed
class SavedTracksState with _$SavedTracksState {
  const SavedTracksState._();

  const factory SavedTracksState({
    @Default(FetchingState.idle) FetchingState fetchingState,
    @Default(<TrackEntity>[]) List<TrackEntity> tracks,
    @Default(SortBy.name) SortBy sortBy,
    @Default(SortOrder.asc) SortOrder order,
  }) = _SavedTracksState;
}

class SavedTracksCubit extends Cubit<SavedTracksState> {
  static const String tag = 'SavedTracksCubit';

  final ITracksRepository _repo;

  StreamSubscription<Iterable<TrackEntity>>? _tracksSub;

  SavedTracksCubit({
    required ITracksRepository repo,
  })  : _repo = repo,
        super(const SavedTracksState());

  void init() {
    _tracksSub = _repo.getSavedTracksStream().listen(_handleTracksUpdates);
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

  Future<void> fetchSavedTracks() async {
    emit(state.copyWith(fetchingState: FetchingState.fetching));

    final res = await _repo.fetchSavedTracks();

    res.fold(
      (failure) => emit(state.copyWith(fetchingState: FetchingState.failure)),
      (success) => emit(state.copyWith(fetchingState: FetchingState.done)),
    );

    emit(state.copyWith(fetchingState: FetchingState.idle));
  }

  void reset() => emit(const SavedTracksState());

  @override
  Future<void> close() async {
    await _tracksSub?.cancel();
    super.close();
  }
}
