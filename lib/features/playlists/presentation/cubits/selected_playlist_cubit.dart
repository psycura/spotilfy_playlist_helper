import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:logger/logger.dart';
import 'package:spotify_playlist_helper/features/playlists/domain/entities/simplified_playlist.dart';

part 'selected_playlist_cubit.freezed.dart';

part 'selected_playlist_cubit.g.dart';

enum SelectedMode { favorites, playlist }

@freezed
class SelectedPlaylistState with _$SelectedPlaylistState {
  const SelectedPlaylistState._();

  const factory SelectedPlaylistState({
    @Default(SelectedMode.favorites) SelectedMode mode,
    SimplifiedPlaylist? playlist,
  }) = _SelectedPlaylistState;

  factory SelectedPlaylistState.fromJson(Map<String, dynamic> json) =>
      _$SelectedPlaylistStateFromJson(json);
}

class SelectedPlaylistCubit extends HydratedCubit<SelectedPlaylistState> {
  static const String tag = 'SelectedPlaylistCubit';

  final Logger _logger;

  SelectedPlaylistCubit({
    required Logger logger,
  })  : _logger = logger,
        super(const SelectedPlaylistState());

  @override
  void onChange(change) {
    _logger.d(
      '$tag onChange'
      '\n [CURRENT STATE]: ${change.currentState}'
      '\n [NEXT STATE]: ${change.nextState}',
    );
    super.onChange(change);
  }

  void selectPlaylist(SimplifiedPlaylist playlist) {
    emit(
      SelectedPlaylistState(playlist: playlist, mode: SelectedMode.playlist),
    );
  }

  void selectFavorites() {
    emit(const SelectedPlaylistState(mode: SelectedMode.favorites));
  }

  void reset() => emit(const SelectedPlaylistState());

  @override
  SelectedPlaylistState? fromJson(Map<String, dynamic> json) =>
      SelectedPlaylistState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(SelectedPlaylistState state) => state.toJson();
}
