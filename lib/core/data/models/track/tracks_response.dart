import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:spotify_playlist_helper/core/data/models/track/track_with_meta_response.dart';

part 'tracks_response.g.dart';

@JsonSerializable()
class TracksResponse extends Equatable {
  final String href;
  final int limit;
  final int offset;
  final int total;
  final List<TrackWithMetaResponse> items;
  final String? next;
  final String? previous;

  const TracksResponse({
    required this.href,
    required this.limit,
    required this.offset,
    required this.total,
    required this.items,
    this.next,
    this.previous,
  });

  TracksResponse copyWith({
    String? href,
    int? limit,
    int? offset,
    int? total,
    List<TrackWithMetaResponse>? items,
    String? next,
    String? previous,
  }) {
    return TracksResponse(
      href: href ?? this.href,
      limit: limit ?? this.limit,
      offset: offset ?? this.offset,
      total: total ?? this.total,
      items: items ?? this.items,
      next: next ?? this.next,
      previous: previous ?? this.previous,
    );
  }

  factory TracksResponse.fromJson(Map<String, dynamic> json) =>
      _$TracksResponseFromJson(json);

  @override
  List<Object?> get props => [
        href,
        limit,
        offset,
        total,
        items,
        next,
        previous,
      ];
}
