import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:logger/logger.dart';

part 'selected_playlist_cubit.freezed.dart';

enum SelectedMode { favorites, playlist }

@freezed
class SelectedPlaylistState with _$SelectedPlaylistState {
  const SelectedPlaylistState._();

  const factory SelectedPlaylistState({
    @Default(SelectedMode.favorites) SelectedMode mode,
    String? playlistId,
  }) = _SelectedPlaylistState;
}

class SelectedPlaylistCubit extends Cubit<SelectedPlaylistState> {
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

  void selectPlaylist(String id) {
    emit(
      SelectedPlaylistState(playlistId: id, mode: SelectedMode.playlist),
    );
  }

  void selectFavorites() {
    emit(const SelectedPlaylistState(mode: SelectedMode.favorites));
  }

  void reset() => emit(const SelectedPlaylistState());
}
