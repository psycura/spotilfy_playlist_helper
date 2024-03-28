import 'package:equatable/equatable.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';
import 'package:spotify_playlist_helper/core/domain/entities/owner/owner.dart';

import 'playlist_tracks_response.dart';

// part 'playlist_item_response.g.dart';

// @JsonSerializable()
class PlaylistItemResponse extends Equatable {
  final String href;
  final String id;
  final List<ImageEntity> images;
  final String name;
  final String uri;
  final PlaylistTracksResponse? tracks;
  final Owner? owner;
  final String? description;

  const PlaylistItemResponse({
    required this.href,
    required this.id,
    required this.images,
    required this.name,
    required this.uri,
    this.tracks,
    this.owner,
    this.description,
  });

  PlaylistItemResponse copyWith({
    String? href,
    String? id,
    List<ImageEntity>? images,
    String? name,
    String? uri,
    PlaylistTracksResponse? tracks,
    Owner? owner,
    String? description,
  }) {
    return PlaylistItemResponse(
      href: href ?? this.href,
      id: id ?? this.id,
      images: images ?? this.images,
      name: name ?? this.name,
      uri: uri ?? this.uri,
      tracks: tracks ?? this.tracks,
      owner: owner ?? this.owner,
      description: description ?? this.description,
    );
  }

  @override
  List<Object?> get props =>
      [
        id,
        href,
        images,
        name,
        uri,
        tracks,
        owner,
        description,
      ];
  //
  // factory PlaylistItemResponse.fromJson(Map<String, dynamic> json) =>
  //     _$PlaylistItemResponseFromJson(json);
  //
  // Map<String, dynamic> toJson() => _$PlaylistItemResponseToJson(this);



}
