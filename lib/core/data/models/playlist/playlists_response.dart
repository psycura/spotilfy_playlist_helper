import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'playlist_item_response.dart';

part 'playlists_response.g.dart';

@JsonSerializable()
class PlaylistsResponse extends Equatable {
  final String href;
  final int limit;
  final int offset;
  final int total;
  final List<PlaylistItemResponse> items;
  final String? next;
  final String? previous;

  const PlaylistsResponse({
    required this.href,
    required this.limit,
    required this.offset,
    required this.total,
    required this.items,
    this.next,
    this.previous,
  });

  PlaylistsResponse copyWith({
    String? href,
    int? limit,
    int? offset,
    int? total,
    List<PlaylistItemResponse>? items,
    String? next,
    String? previous,
  }) {
    return PlaylistsResponse(
      href: href ?? this.href,
      limit: limit ?? this.limit,
      offset: offset ?? this.offset,
      total: total ?? this.total,
      items: items ?? this.items,
      next: next ?? this.next,
      previous: previous ?? this.previous,
    );
  }

  factory PlaylistsResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaylistsResponseFromJson(json);

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
