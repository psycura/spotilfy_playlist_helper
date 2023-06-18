import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/core/enums/fetching_state.dart';
import 'package:spotify_playlist_helper/features/tracks/domain/entities/track_with_meta.dart';
import 'package:spotify_playlist_helper/features/tracks/domain/repositories/tracks_repository.dart';

part 'saved_tracks_cubit.freezed.dart';

@freezed
class SavedTracksState with _$SavedTracksState {
  const SavedTracksState._();

  const factory SavedTracksState({
    @Default(FetchingState.idle) FetchingState fetchingState,
    @Default(<TrackWithMeta>[]) List<TrackWithMeta> tracks,
  }) = _SavedTracksState;
}

class SavedTracksCubit extends Cubit<SavedTracksState> {
  static const String tag = 'SavedTracksCubit';

  final Logger _logger;

  final ITracksRepository _repo;

  StreamSubscription<Iterable<TrackWithMeta>>? _tracksSub;

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
    _tracksSub = _repo.getSavedTracksStream().listen(_handleTracksUpdates);
  }

  void _handleTracksUpdates(Iterable<TrackWithMeta> items) {
    emit(state.copyWith(tracks: items.toList()));
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
