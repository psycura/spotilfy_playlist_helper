import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../track/track_with_meta_response.dart';

part 'playlist_with_tracks_response.g.dart';

@JsonSerializable()
class PlaylistWithTracksResponse extends Equatable {
  final String href;
  final int total;
  final List<TrackWithMetaResponse> items;
  final int limit;
  final int offset;
  final String? next;
  final String? previous;

  const PlaylistWithTracksResponse({
    required this.href,
    required this.total,
    required this.items,
    this.limit = 50,
    this.offset = 0,
    this.next,
    this.previous,
  });

  PlaylistWithTracksResponse copyWith({
    String? href,
    int? total,
    List<TrackWithMetaResponse>? items,
    int? limit,
    int? offset,
    String? next,
    String? previous,
  }) {
    return PlaylistWithTracksResponse(
      href: href ?? this.href,
      total: total ?? this.total,
      items: items ?? this.items,
      limit: limit ?? this.limit,
      offset: offset ?? this.offset,
      next: next ?? this.next,
      previous: previous ?? this.previous,
    );
  }

  factory PlaylistWithTracksResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaylistWithTracksResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PlaylistWithTracksResponseToJson(this);


  @override
  List<Object?> get props => [
        href,
        total,
        items,
        limit,
        offset,
        next,
        previous,
      ];
}
