import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_playlist_helper/core/domain/entities/playlist/playlist.dart';

part 'playlist_with_selection_state.freezed.dart';

@freezed
class PlaylistWithSelectionState with _$PlaylistWithSelectionState {
  factory PlaylistWithSelectionState({
    required PlaylistEntity playlist,
    @Default(false) bool selected,
  }) = _PlaylistWithSelectionState;
}
