// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaylistItemResponse _$PlaylistItemResponseFromJson(
        Map<String, dynamic> json) =>
    PlaylistItemResponse(
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String,
      id: json['id'] as String,
      name: json['name'] as String,
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      tracks: json['tracks'] == null
          ? null
          : PlaylistTracksResponse.fromJson(
              json['tracks'] as Map<String, dynamic>),
      uri: json['uri'] as String,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ImageResponse>[],
      collaborative: json['collaborative'] as bool? ?? false,
      description: json['description'] as String? ?? '',
      public: json['public'] as bool? ?? false,
      snapshotId: json['snapshot_id'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$PlaylistItemResponseToJson(
        PlaylistItemResponse instance) =>
    <String, dynamic>{
      'collaborative': instance.collaborative,
      'description': instance.description,
      'external_urls': instance.externalUrls?.toJson(),
      'href': instance.href,
      'id': instance.id,
      'images': instance.images?.map((e) => e.toJson()).toList(),
      'name': instance.name,
      'owner': instance.owner?.toJson(),
      'public': instance.public,
      'snapshot_id': instance.snapshotId,
      'tracks': instance.tracks?.toJson(),
      'type': instance.type,
      'uri': instance.uri,
    };

ExternalUrls _$ExternalUrlsFromJson(Map<String, dynamic> json) => ExternalUrls(
      spotify: json['spotify'] as String,
    );

Map<String, dynamic> _$ExternalUrlsToJson(ExternalUrls instance) =>
    <String, dynamic>{
      'spotify': instance.spotify,
    };

ImageResponse _$ImageResponseFromJson(Map<String, dynamic> json) =>
    ImageResponse(
      url: json['url'] as String,
      height: json['height'] as int?,
      width: json['width'] as int?,
    );

Map<String, dynamic> _$ImageResponseToJson(ImageResponse instance) =>
    <String, dynamic>{
      'url': instance.url,
      'height': instance.height,
      'width': instance.width,
    };

Owner _$OwnerFromJson(Map<String, dynamic> json) => Owner(
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      followers: json['followers'] == null
          ? null
          : Followers.fromJson(json['followers'] as Map<String, dynamic>),
      href: json['href'] as String,
      id: json['id'] as String,
      type: json['type'] as String,
      uri: json['uri'] as String,
      displayName: json['display_name'] as String,
    );

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
      'external_urls': instance.externalUrls?.toJson(),
      'followers': instance.followers?.toJson(),
      'href': instance.href,
      'id': instance.id,
      'type': instance.type,
      'uri': instance.uri,
      'display_name': instance.displayName,
    };

Followers _$FollowersFromJson(Map<String, dynamic> json) => Followers(
      href: json['href'] as String,
      total: json['total'] as int,
    );

Map<String, dynamic> _$FollowersToJson(Followers instance) => <String, dynamic>{
      'href': instance.href,
      'total': instance.total,
    };
