import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';

part 'playlist.g.dart';

@JsonSerializable()
class PlaylistEntity extends Equatable {
  final String href;
  final String id;
  final List<ImageEntity> images;
  final String name;
  final String uri;
  final String? description;

  const PlaylistEntity({
    required this.href,
    required this.id,
    required this.images,
    required this.name,
    required this.uri,
    this.description,
  });

  PlaylistEntity copyWith({
    final String? href,
    final String? id,
    final List<ImageEntity>? images,
    final String? name,
    final String? uri,
    final String? description,
  }) {
    return PlaylistEntity(
      href: href ?? this.href,
      id: id ?? this.id,
      images: images ?? this.images,
      name: name ?? this.name,
      uri: uri ?? this.uri,
      description: description ?? this.description,
    );
  }

  factory PlaylistEntity.fromJson(Map<String, dynamic> json) =>
      _$PlaylistEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PlaylistEntityToJson(this);


  @override
  List<Object?> get props => [
        href,
        id,
        images,
        name,
        uri,
        description,
      ];
}
