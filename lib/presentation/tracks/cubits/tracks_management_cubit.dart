import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/core/data/errors/failures.dart';
import 'package:spotify_playlist_helper/core/data/success/success.dart';
import 'package:spotify_playlist_helper/core/domain/entities/tracks/track.dart';
import 'package:spotify_playlist_helper/core/domain/repositories/tracks_repository.dart';

part 'tracks_management_cubit.freezed.dart';

@freezed
class TracksState with _$TracksState {
  const TracksState._();

  const factory TracksState.initial() = _InitialTracksState;

  const factory TracksState.processing() = _ProcessingTracksState;

  const factory TracksState.success() = _SuccessTracksState;

  const factory TracksState.failure() = _FailureTracksState;
}

class TracksCubit extends Cubit<TracksState> {
  static const String tag = 'TracksCubit';

  final Logger _logger;

  final ITracksRepository _tracksRepo;

  TracksCubit({
    required Logger logger,
    required ITracksRepository tracksRepo,
  })  : _logger = logger,
        _tracksRepo = tracksRepo,
        super(const TracksState.initial());

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
    emit(const TracksState.processing());
    Either<GeneralFailure, SuccessEmpty> res;


    res = !track.is_saved
        ? await _tracksRepo.saveTrack(track)
        : await _tracksRepo.removeSavedTrack(track);

    res.fold(
      (failure) => emit(const TracksState.failure()),
      (success) => emit(const TracksState.success()),
    );

    emit(const TracksState.initial());
  }

  Future<void> wipeAllData()async {
    await _tracksRepo.wipeAllData();
  }


  void reset() => emit(const TracksState.initial());
}
