import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/core/enums/fetching_state.dart';
import 'package:spotify_playlist_helper/core/enums/sorting.dart';
import 'package:spotify_playlist_helper/core/utils/track_utils.dart';
import 'package:spotify_playlist_helper/features/tracks/domain/entities/track.dart';
import 'package:spotify_playlist_helper/features/tracks/domain/entities/track_with_meta.dart';
import 'package:spotify_playlist_helper/features/tracks/domain/repositories/tracks_repository.dart';

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

  final Logger _logger;

  final ITracksRepository _repo;

  StreamSubscription<Iterable<TrackEntity>>? _tracksSub;

  PlaylistCubit({
    required Logger logger,
    required ITracksRepository repo,
  })  : _logger = logger,
        _repo = repo,
        super(const PlaylistState());

  void init(String playlistId) {
    _tracksSub = _repo
        .getPlaylistTracksStream(playlistId)
        // .map(_getSortedTracks)
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

  // @override
  // void onChange(change) {
  //   _logger.d(
  //     '$tag onChange'
  //     '\n [CURRENT STATE]: ${change.currentState}'
  //     '\n [NEXT STATE]: ${change.nextState}',
  //   );
  //   super.onChange(change);
  // }

  void reset() => emit(const PlaylistState());

  @override
  Future<void> close() async {
    await _tracksSub?.cancel();
    super.close();
  }
}
