import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';

part 'track.g.dart';

@JsonSerializable()
class TrackEntity extends Equatable {
  final AlbumEntity album;
  final List<ArtistEntity> artists;
  final int duration_ms;
  final String href;
  final String id;
  final String name;
  final int popularity;
  final int track_number;
  final String uri;
  final String preview_url;
  final bool is_playable;
  final bool is_saved;
  final List<String> playlists;

  const TrackEntity({
    required this.album,
    required this.artists,
    required this.duration_ms,
    required this.href,
    required this.id,
    required this.name,
    required this.popularity,
    required this.track_number,
    required this.uri,
    this.preview_url = '',
    this.is_playable = true,
    this.is_saved = false,
    this.playlists = const <String>[],
  });

  TrackEntity copyWith({
    AlbumEntity? album,
    List<ArtistEntity>? artists,
    int? duration_ms,
    String? href,
    String? id,
    String? name,
    int? popularity,
    int? track_number,
    String? uri,
    String? preview_url,
    bool? is_playable,
    bool? is_saved,
    List<String>? playlists,
  }) {
    return TrackEntity(
      album: album ?? this.album,
      artists: artists ?? this.artists,
      duration_ms: duration_ms ?? this.duration_ms,
      href: href ?? this.href,
      id: id ?? this.id,
      name: name ?? this.name,
      popularity: popularity ?? this.popularity,
      track_number: track_number ?? this.track_number,
      uri: uri ?? this.uri,
      preview_url: preview_url ?? this.preview_url,
      is_playable: is_playable ?? this.is_playable,
      is_saved: is_saved ?? this.is_saved,
      playlists: playlists ?? this.playlists,
    );
  }

  factory TrackEntity.fromJson(Map<String, dynamic> json) =>
      _$TrackEntityFromJson(json);

  @override
  List<Object?> get props => [
        album,
        artists,
        duration_ms,
        href,
        id,
        name,
        popularity,
        track_number,
        uri,
        preview_url,
        is_playable,
        is_saved,
        playlists,
      ];
}
