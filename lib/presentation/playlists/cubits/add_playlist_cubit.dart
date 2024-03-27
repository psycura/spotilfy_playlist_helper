import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_playlist_helper/core/domain/repositories/playlists_repository.dart';
import 'package:spotify_playlist_helper/core/enums/fetching_state.dart';
import 'package:spotify_playlist_helper/core/results/result.dart';

class AddPlaylistState extends Equatable {
  final String name;
  final FetchingState fetchingState;

  const AddPlaylistState({
    this.name = '',
    this.fetchingState = FetchingState.idle,
  });

  AddPlaylistState copyWith({
    String? name,
    FetchingState? fetchingState,
  }) {
    return AddPlaylistState(
      name: name ?? this.name,
      fetchingState: fetchingState ?? this.fetchingState,
    );
  }

  @override
  List<Object?> get props => [name, fetchingState];
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

    switch (res) {
      case Success():
        _handleSuccess();
        break;

      case Failure():
        emit(state.copyWith(fetchingState: FetchingState.failure));
        break;
    }
  }

  void _handleSuccess() {
    emit(state.copyWith(fetchingState: FetchingState.done));
    reset();
  }

  void reset() => emit(const AddPlaylistState());
}
