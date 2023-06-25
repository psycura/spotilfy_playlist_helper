import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_playlist_helper/core/domain/repositories/playlists_repository.dart';
import 'package:spotify_playlist_helper/core/enums/fetching_state.dart';

part 'add_playlist_cubit.freezed.dart';

@freezed
class AddPlaylistState with _$AddPlaylistState {
  const AddPlaylistState._();

  const factory AddPlaylistState({
    @Default('') String name,
    @Default(FetchingState.idle) FetchingState fetchingState,
  }) = _AddPlaylistState;
}

class AddPlaylistCubit extends Cubit<AddPlaylistState> {
  static const String tag = 'AddPlaylistCubit';

  final IPlaylistsRepository _repo;

  AddPlaylistCubit({required IPlaylistsRepository repo})
      : _repo = repo,
        super(const AddPlaylistState());

  void changeName(String value) => emit(state.copyWith(name: value));

  Future<void> savePlaylist() async {
    emit(state.copyWith(fetchingState: FetchingState.fetching));
    final res = await _repo.createPlaylist(state.name);

    res.fold(
      (failure) => emit(state.copyWith(fetchingState: FetchingState.failure)),
      (success) => _handleSuccess(),
    );
  }

  void _handleSuccess() {
    emit(state.copyWith(fetchingState: FetchingState.done));
    reset();
  }

  void reset() => emit(const AddPlaylistState());
}
