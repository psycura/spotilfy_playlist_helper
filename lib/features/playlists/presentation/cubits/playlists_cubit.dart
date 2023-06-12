import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/core/enums/fetching_state.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/playlists_response.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/simplified_playlist.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/repositories/playlists_repository.dart';

part 'playlists_cubit.freezed.dart';

part 'playlists_cubit.g.dart';

@freezed
class PlaylistsState with _$PlaylistsState {
  const PlaylistsState._();

  const factory PlaylistsState({
    @Default(FetchingState.idle) FetchingState fetchingState,
    PlaylistsResponse? playlistsResponse,
  }) = _PlaylistsState;

  List<SimplifiedPlaylist> get playlists =>
      playlistsResponse?.items ?? List<SimplifiedPlaylist>.empty();

  factory PlaylistsState.fromJson(Map<String, dynamic> json) =>
      _$PlaylistsStateFromJson(json);
}

class PlaylistsCubit extends HydratedCubit<PlaylistsState> {
  static const String tag = 'PlaylistsCubit';

  final Logger _logger;

  final IPlaylistsRepository _repo;

  PlaylistsCubit({
    required Logger logger,
    required IPlaylistsRepository repo,
  })  : _logger = logger,
        _repo = repo,
        super(const PlaylistsState());



  // @override
  // void onChange(change) {
  //   _logger.d(
  //     '$tag onChange'
  //     '\n [CURRENT STATE]: ${change.currentState}'
  //     '\n [NEXT STATE]: ${change.nextState}',
  //   );
  //   super.onChange(change);
  // }

  Future<void> fetchCurrentUserPlaylists() async {
    print('[alitz] fetchCurrentUserPlaylists:$state');

    emit(state.copyWith(fetchingState: FetchingState.fetching));

    final res = await _repo.getCurrentUserPlaylists();

    res.fold(
      (failure) => emit(state.copyWith(fetchingState: FetchingState.failure)),
      (response) => emit(
        state.copyWith(
          fetchingState: FetchingState.done,
          playlistsResponse: response,
        ),
      ),
    );

    emit(state.copyWith(fetchingState: FetchingState.idle));
  }

  void reset() => emit(const PlaylistsState());

  @override
  PlaylistsState? fromJson(Map<String, dynamic> json) =>
      PlaylistsState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(PlaylistsState state) => state.toJson();
}
