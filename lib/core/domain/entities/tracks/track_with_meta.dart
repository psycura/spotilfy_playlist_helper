import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../core/domain/entities/tracks/track.dart';

part 'track_with_meta.g.dart';

@JsonSerializable()
class TrackWithMetaEntity extends Equatable {
  final String added_at;
  final TrackEntity track;

  const TrackWithMetaEntity({
    required this.added_at,
    required this.track,
  });

  TrackWithMetaEntity copyWith({
    String? added_at,
    TrackEntity? track,
  }) {
    return TrackWithMetaEntity(
      added_at: added_at ?? this.added_at,
      track: track ?? this.track,
    );
  }

  factory TrackWithMetaEntity.fromJson(Map<String, dynamic> json) =>
      _$TrackWithMetaEntityFromJson(json);

  @override
  List<Object?> get props => [
        added_at,
        track,
      ];
}
