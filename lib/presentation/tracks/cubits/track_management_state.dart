import 'package:equatable/equatable.dart';

sealed class TracksState extends Equatable {
  const TracksState();
}

final class InitialTracksState extends TracksState {
  const InitialTracksState();

  @override
  List<Object?> get props => [];
}

final class ProcessingTracksState extends TracksState {
  const ProcessingTracksState();

  @override
  List<Object?> get props => [];
}

final class SuccessTracksState extends TracksState {
  const SuccessTracksState();

  @override
  List<Object?> get props => [];
}

final class FailureTracksState extends TracksState {
  const FailureTracksState();

  @override
  List<Object?> get props => [];
}


