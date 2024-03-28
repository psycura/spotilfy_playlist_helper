import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';

part 'album.g.dart';

@JsonSerializable()
class AlbumEntity extends Equatable {
  final String href;
  final String id;
  final String name;
  final List<ImageEntity> images;

  const AlbumEntity({
    required this.href,
    required this.id,
    required this.name,
    required this.images,
  });

  AlbumEntity copyWith({
    String? href,
    String? id,
    String? name,
    List<ImageEntity>? images,
  }) {
    return AlbumEntity(
      href: href ?? this.href,
      id: id ?? this.id,
      name: name ?? this.name,
      images: images ?? this.images,
    );
  }

  factory AlbumEntity.fromJson(Map<String, dynamic> json) =>
      _$AlbumEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AlbumEntityToJson(this);


  @override
  List<Object?> get props => [
        href,
        id,
        name,
        images,
      ];
}
