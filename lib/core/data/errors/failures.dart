
import 'package:equatable/equatable.dart';

class GeneralFailure extends Equatable implements Exception {
  final StackTrace? stackTrace;
  final String? error;

  const GeneralFailure({
    this.error,
    this.stackTrace,
  });

  @override
  String toString() {
    return error ?? 'General Error';
  }

  @override
  // ignore: list-all-equatable-fields
  List<Object?> get props => [];
}
