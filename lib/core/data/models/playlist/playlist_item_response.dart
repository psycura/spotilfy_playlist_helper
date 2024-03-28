import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'playlist_tracks_response.dart';

part 'playlist_item_response.g.dart';

@JsonSerializable()
class PlaylistItemResponse extends Equatable {
  const PlaylistItemResponse({
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.name,
    required this.owner,
    required this.tracks,
    required this.uri,
    this.images = const <ImageResponse>[],
    this.collaborative = false,
    this.description = '',
    this.public = false,
    this.snapshotId,
    this.type,

  });

  final bool? collaborative;
  final String? description;

  @JsonKey(name: 'external_urls')
  final ExternalUrls? externalUrls;
  final String href;
  final String id;
  final List<ImageResponse>? images;
  final String name;
  final Owner? owner;
  final bool? public;

  @JsonKey(name: 'snapshot_id')
  final String? snapshotId;
  final PlaylistTracksResponse? tracks;
  final String? type;
  final String uri;

  PlaylistItemResponse copyWith({
    bool? collaborative,
    String? description,
    ExternalUrls? externalUrls,
    String? href,
    String? id,
    List<ImageResponse>? images,
    String? name,
    Owner? owner,
    bool? public,
    String? snapshotId,
    PlaylistTracksResponse? tracks,
    String? type,
    String? uri,
  }) {
    return PlaylistItemResponse(
      collaborative: collaborative ?? this.collaborative,
      description: description ?? this.description,
      externalUrls: externalUrls ?? this.externalUrls,
      href: href ?? this.href,
      id: id ?? this.id,
      images: images ?? this.images,
      name: name ?? this.name,
      owner: owner ?? this.owner,
      public: public ?? this.public,
      snapshotId: snapshotId ?? this.snapshotId,
      tracks: tracks ?? this.tracks,
      type: type ?? this.type,
      uri: uri ?? this.uri,
    );
  }

  factory PlaylistItemResponse.fromJson(Map<String, dynamic> json) => _$PlaylistItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PlaylistItemResponseToJson(this);

  @override
  List<Object?> get props => [
        collaborative,
        description,
        externalUrls,
        href,
        id,
        images,
        name,
        owner,
        public,
        snapshotId,
        tracks,
        type,
        uri,
      ];
}

@JsonSerializable()
class ExternalUrls extends Equatable {
  const ExternalUrls({
    required this.spotify,
  });

  final String spotify;

  ExternalUrls copyWith({
    String? spotify,
  }) {
    return ExternalUrls(
      spotify: spotify ?? this.spotify,
    );
  }

  factory ExternalUrls.fromJson(Map<String, dynamic> json) =>
      _$ExternalUrlsFromJson(json);

  Map<String, dynamic> toJson() => _$ExternalUrlsToJson(this);

  @override
  List<Object?> get props => [
        spotify,
      ];
}

@JsonSerializable()
class ImageResponse extends Equatable {
  const ImageResponse({
    required this.url,
    required this.height,
    required this.width,
  });

  final String url;
  final int? height;
  final int? width;

  ImageResponse copyWith({
    String? url,
    int? height,
    int? width,
  }) {
    return ImageResponse(
      url: url ?? this.url,
      height: height ?? this.height,
      width: width ?? this.width,
    );
  }

  factory ImageResponse.fromJson(Map<String, dynamic> json) => _$ImageResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ImageResponseToJson(this);

  @override
  List<Object?> get props => [
        url,
        height,
        width,
      ];
}

@JsonSerializable()
class Owner extends Equatable {
  const Owner({
    required this.externalUrls,
    required this.followers,
    required this.href,
    required this.id,
    required this.type,
    required this.uri,
    required this.displayName,
  });

  @JsonKey(name: 'external_urls')
  final ExternalUrls? externalUrls;
  final Followers? followers;
  final String href;
  final String id;
  final String type;
  final String uri;

  @JsonKey(name: 'display_name')
  final String displayName;

  Owner copyWith({
    ExternalUrls? externalUrls,
    Followers? followers,
    String? href,
    String? id,
    String? type,
    String? uri,
    String? displayName,
  }) {
    return Owner(
      externalUrls: externalUrls ?? this.externalUrls,
      followers: followers ?? this.followers,
      href: href ?? this.href,
      id: id ?? this.id,
      type: type ?? this.type,
      uri: uri ?? this.uri,
      displayName: displayName ?? this.displayName,
    );
  }

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

  Map<String, dynamic> toJson() => _$OwnerToJson(this);

  @override
  List<Object?> get props => [
        externalUrls,
        followers,
        href,
        id,
        type,
        uri,
        displayName,
      ];
}

@JsonSerializable()
class Followers extends Equatable {
  const Followers({
    required this.href,
    required this.total,
  });

  final String href;
  final int total;

  Followers copyWith({
    String? href,
    int? total,
  }) {
    return Followers(
      href: href ?? this.href,
      total: total ?? this.total,
    );
  }

  factory Followers.fromJson(Map<String, dynamic> json) => _$FollowersFromJson(json);

  Map<String, dynamic> toJson() => _$FollowersToJson(this);

  @override
  List<Object?> get props => [
        href,
        total,
      ];
}
