import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/core/enums/fetching_state.dart';
import 'package:spotify_playlist_helper/core/enums/sorting.dart';
import 'package:spotify_playlist_helper/core/utils/track_utils.dart';
import 'package:spotify_playlist_helper/features/tracks/domain/entities/track.dart';
import 'package:spotify_playlist_helper/features/tracks/domain/repositories/tracks_repository.dart';

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

  final Logger _logger;

  final ITracksRepository _repo;

  StreamSubscription<Iterable<TrackEntity>>? _tracksSub;

  SavedTracksCubit({
    required Logger logger,
    required ITracksRepository repo,
  })  : _logger = logger,
        _repo = repo,
        super(const SavedTracksState());

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
    _tracksSub = _repo
        .getSavedTracksStream()
        .listen(_handleTracksUpdates);
  }

  void _handleTracksUpdates(Iterable<TrackEntity> items) {
    emit(state.copyWith(tracks: items.toList()));
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
