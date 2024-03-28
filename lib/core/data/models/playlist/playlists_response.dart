import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'playlist_item_response.dart';

part 'playlists_response.g.dart';

@JsonSerializable()
class PlaylistsResponse extends Equatable {
  const PlaylistsResponse({
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
    required this.items,
  });

  final String href;
  final int limit;
  final String? next;
  final int offset;
  final String? previous;
  final int total;
  final List<PlaylistItemResponse> items;

  PlaylistsResponse copyWith({
    String? href,
    int? limit,
    String? next,
    int? offset,
    String? previous,
    int? total,
    List<PlaylistItemResponse>? items,
  }) {
    return PlaylistsResponse(
      href: href ?? this.href,
      limit: limit ?? this.limit,
      next: next ?? this.next,
      offset: offset ?? this.offset,
      previous: previous ?? this.previous,
      total: total ?? this.total,
      items: items ?? this.items,
    );
  }

  factory PlaylistsResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaylistsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PlaylistsResponseToJson(this);

  @override
  List<Object?> get props => [
    href,
    limit,
    next,
    offset,
    previous,
    total,
    items,
  ];
}


/*
{
	"href": "https://api.spotify.com/v1/me/shows?offset=0&limit=20",
	"limit": 20,
	"next": "https://api.spotify.com/v1/me/shows?offset=1&limit=1",
	"offset": 0,
	"previous": "https://api.spotify.com/v1/me/shows?offset=1&limit=1",
	"total": 4,
	"items": [
		{
			"collaborative": false,
			"description": "string",
			"external_urls": {
				"spotify": "string"
			},
			"href": "string",
			"id": "string",
			"images": [
				{
					"url": "https://i.scdn.co/image/ab67616d00001e02ff9ca10b55ce82ae553c8228",
					"height": 300,
					"width": 300
				}
			],
			"name": "string",
			"owner": {
				"external_urls": {
					"spotify": "string"
				},
				"followers": {
					"href": "string",
					"total": 0
				},
				"href": "string",
				"id": "string",
				"type": "user",
				"uri": "string",
				"display_name": "string"
			},
			"public": false,
			"snapshot_id": "string",
			"tracks": {
				"href": "string",
				"total": 0
			},
			"type": "string",
			"uri": "string"
		}
	]
}*/
