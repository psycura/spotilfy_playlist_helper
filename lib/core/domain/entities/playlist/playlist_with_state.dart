import 'package:equatable/equatable.dart';
import 'package:spotify_playlist_helper/core/enums/fetching_state.dart';
import 'package:spotify_playlist_helper/core/domain/entities/playlist/playlist.dart';

class PlaylistWithState extends Equatable {
  final PlaylistEntity playlist;
  final FetchingState state;

  const PlaylistWithState({
    required this.playlist,
    this.state = FetchingState.idle,
  });

  PlaylistWithState copyWith({
    PlaylistEntity? playlist,
    FetchingState? state,
  }) {
    return PlaylistWithState(
      playlist: playlist ?? this.playlist,
      state: state ?? this.state,
    );
  }

  @override
  List<Object?> get props => [playlist, state];
}
