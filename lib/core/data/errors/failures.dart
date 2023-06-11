import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

abstract interface class Failure {}


@freezed
class GeneralFailure with _$GeneralFailure implements Failure {
  const factory GeneralFailure() = _GeneralFailure;
}
