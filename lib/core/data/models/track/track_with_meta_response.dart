import 'package:freezed_annotation/freezed_annotation.dart';

import 'track_item_response.dart';

part 'track_with_meta_response.freezed.dart';
part 'track_with_meta_response.g.dart';

@freezed
class TrackWithMetaResponse with _$TrackWithMetaResponse {
  factory TrackWithMetaResponse({
    required String added_at,
    required TrackItemResponse track,
  }) = _TrackWithMetaResponse;

  factory TrackWithMetaResponse.fromJson(Map<String, dynamic> json) =>
      _$TrackWithMetaResponseFromJson(json);
}
