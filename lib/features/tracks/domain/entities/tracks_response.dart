import 'package:freezed_annotation/freezed_annotation.dart';

import 'track_with_meta.dart';


part 'tracks_response.freezed.dart';

part 'tracks_response.g.dart';

@freezed
class TracksResponse with _$TracksResponse {
  factory TracksResponse({
    required String href,
    required int limit,
    required int offset,
    required int total,
    required List<TrackWithMeta> items,
    String? next,
    String? previous,

  }) = _TracksResponse;

  factory TracksResponse.fromJson(Map<String, dynamic> json) =>
      _$TracksResponseFromJson(json);
}
