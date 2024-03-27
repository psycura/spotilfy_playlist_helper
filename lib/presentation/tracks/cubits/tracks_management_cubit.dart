// ignore_for_file: avoid-dynamic

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/core/domain/entities/tracks/track.dart';
import 'package:spotify_playlist_helper/core/domain/repositories/tracks_repository.dart';
import 'package:spotify_playlist_helper/core/results/result.dart';

import 'track_management_state.dart';

class TracksCubit extends Cubit<TracksState> {
  static const String tag = 'TracksCubit';

  final Logger _logger;

  final ITracksRepository _tracksRepo;

  TracksCubit({
    required Logger logger,
    required ITracksRepository tracksRepo,
  })  : _logger = logger,
        _tracksRepo = tracksRepo,
        super(const InitialTracksState());

  @override
  void onChange(change) {
    _logger.d(
      '$tag onChange'
      '\n [CURRENT STATE]: ${change.currentState}'
      '\n [NEXT STATE]: ${change.nextState}',
    );
    super.onChange(change);
  }

  Future<void> toggleSaved(TrackEntity track) async {
    emit(const ProcessingTracksState());

    final res = !track.is_saved
        ? await _tracksRepo.saveTrack(track)
        : await _tracksRepo.removeSavedTrack(track);

    switch (res) {
      case Success():
        emit(const SuccessTracksState());
        break;
      case Failure():
        emit(const FailureTracksState());
        break;
    }

    emit(const InitialTracksState());
  }

  Future<void> wipeAllData() async {
    await _tracksRepo.wipeAllData();
  }

  void reset() => emit(const InitialTracksState());
}
