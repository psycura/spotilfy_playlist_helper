import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'track_item_response.dart';

part 'track_with_meta_response.g.dart';

@JsonSerializable()
class TrackWithMetaResponse extends Equatable {
  final String added_at;
  final TrackItemResponse track;

  const TrackWithMetaResponse({
    required this.added_at,
    required this.track,
  });

  TrackWithMetaResponse copyWith({
    String? added_at,
    TrackItemResponse? track,
  }) {
    return TrackWithMetaResponse(
      added_at: added_at ?? this.added_at,
      track: track ?? this.track,
    );
  }

  factory TrackWithMetaResponse.fromJson(Map<String, dynamic> json) =>
      _$TrackWithMetaResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TrackWithMetaResponseToJson(this);


  @override
  List<Object?> get props => [
        added_at,
        track,
      ];
}
