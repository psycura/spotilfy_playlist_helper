import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/core/domain/repositories/playlists_repository.dart';
import 'package:spotify_playlist_helper/core/enums/fetching_state.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/playlist_track.dart';

part 'playlist_cubit.freezed.dart';

@freezed
class PlaylistState with _$PlaylistState {
  const PlaylistState._();

  const factory PlaylistState({
    @Default(FetchingState.idle) FetchingState fetchingState,
    @Default(<PlaylistTrackEntity>[]) List<PlaylistTrackEntity> tracks,
  }) = _PlaylistState;
}

class PlaylistCubit extends Cubit<PlaylistState> {
  static const String tag = 'PlaylistCubit';

  final Logger _logger;
  final IPlaylistsRepository _repo;

  PlaylistCubit({
    required Logger logger,
    required IPlaylistsRepository repo,
  })  : _logger = logger,
        _repo = repo,
        super(const PlaylistState());

  @override
  void onChange(change) {
    _logger.d(
      '$tag onChange'
      '\n [CURRENT STATE]: ${change.currentState}'
      '\n [NEXT STATE]: ${change.nextState}',
    );
    super.onChange(change);
  }

  Future<void> getPlaylistTracks(String playlistId) async {
    emit(const PlaylistState(fetchingState: FetchingState.fetching));

    final res = await _repo.getPlaylistTracks(playlistId);

    res.fold(
      (failure) => emit(state.copyWith(fetchingState: FetchingState.failure)),
      (tracks) => emit(
        state.copyWith(fetchingState: FetchingState.done, tracks: tracks),
      ),
    );
  }

  void reset() => emit(const PlaylistState());
}
