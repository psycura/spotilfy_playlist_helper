import 'package:freezed_annotation/freezed_annotation.dart';

part 'tracks.freezed.dart';

part 'tracks.g.dart';

@freezed
class Tracks with _$Tracks {
  factory Tracks({
    required String href,
    required int total,
  }) = _Tracks;

  factory Tracks.fromJson(Map<String, dynamic> json) => _$TracksFromJson(json);
}
