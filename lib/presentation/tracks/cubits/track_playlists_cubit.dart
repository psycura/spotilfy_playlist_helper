import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:spotify_playlist_helper/core/domain/entities/playlist/playlist.dart';
import 'package:spotify_playlist_helper/core/domain/entities/playlist/playlist_with_selection_state.dart';
import 'package:spotify_playlist_helper/core/domain/entities/tracks/track.dart';
import 'package:spotify_playlist_helper/core/domain/repositories/playlists_repository.dart';
import 'package:spotify_playlist_helper/core/domain/repositories/tracks_repository.dart';

class TrackPlaylistsState extends Equatable {
  final Map<String, PlaylistWithSelectionState> playlists;

  const TrackPlaylistsState({
    this.playlists = const <String, PlaylistWithSelectionState>{},
  });

  @override
  List<Object?> get props => [playlists];
}

class TrackPlaylistsCubit extends Cubit<TrackPlaylistsState> {
  static const String tag = 'TrackPlaylistsCubit';

  final TrackEntity track;

  final IPlaylistsRepository _playlistsRepo;
  final ITracksRepository _tracksRepo;

  StreamSubscription<TrackEntity>? _trackSub;

  TrackPlaylistsCubit({
    required this.track,
    required List<PlaylistEntity> playlists,
    required IPlaylistsRepository playlistsRepo,
    required ITracksRepository tracksRepo,
  })  : _playlistsRepo = playlistsRepo,
        _tracksRepo = tracksRepo,
        super(
          TrackPlaylistsState(
            playlists: {
              for (var l in playlists)
                l.id: PlaylistWithSelectionState(
                  playlist: l,
                  selected: track.playlists.contains(l.id),
                ),
            },
          ),
        );

  void init() {
    _trackSub =
        _tracksRepo.getTrackStream(track.id).listen(_handlePlaylistsUpdates);
  }

  void _handlePlaylistsUpdates(TrackEntity track) {
    final newMap = <String, PlaylistWithSelectionState>{};

    for (var value in state.playlists.values) {
      newMap[value.playlist.id] = PlaylistWithSelectionState(
        playlist: value.playlist,
        selected: track.playlists.contains(value.playlist.id),
      );
    }

    emit(const TrackPlaylistsState());
    emit(TrackPlaylistsState(playlists: newMap));
  }

  Future<void> addTrackToPlaylist(String playlistId) async {
    await _playlistsRepo.addTracksToPlaylist([track], playlistId);
  }

  Future<void> removeTrackFromPlaylist(String playlistId) async {
    await _playlistsRepo.removeTracksFromPlaylist([track], playlistId);
  }

  @override
  Future<void> close() async {
    await _trackSub?.cancel();
    super.close();
  }
}
