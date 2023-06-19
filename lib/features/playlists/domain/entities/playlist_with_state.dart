import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_playlist_helper/core/enums/fetching_state.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/playlist.dart';


part 'playlist_with_state.freezed.dart';

@freezed
class PlaylistWithState with _$PlaylistWithState {
  factory PlaylistWithState({
    required PlaylistEntity playlist,
    @Default(FetchingState.idle) FetchingState state,
  }) = _PlaylistWithState;
}
