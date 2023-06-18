import 'package:freezed_annotation/freezed_annotation.dart';

part 'tracks.freezed.dart';

part 'tracks.g.dart';

@freezed
class TracksEntity with _$TracksEntity {
  factory TracksEntity({
    required String href,
    required int total,
  }) = _TracksEntity;

  factory TracksEntity.fromJson(Map<String, dynamic> json) => _$TracksEntityFromJson(json);
}
