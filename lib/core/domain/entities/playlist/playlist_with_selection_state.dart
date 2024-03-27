import 'package:equatable/equatable.dart';
import 'package:spotify_playlist_helper/core/domain/entities/playlist/playlist.dart';

class PlaylistWithSelectionState extends Equatable {
  final PlaylistEntity playlist;
  final bool selected;

  const PlaylistWithSelectionState({
    required this.playlist,
    this.selected = false,
  });

  PlaylistWithSelectionState copyWith({
    PlaylistEntity? playlist,
    bool? selected,
  }) {
    return PlaylistWithSelectionState(
      playlist: playlist ?? this.playlist,
      selected: selected ?? this.selected,
    );
  }

  @override
  List<Object?> get props => [playlist, selected];
}
