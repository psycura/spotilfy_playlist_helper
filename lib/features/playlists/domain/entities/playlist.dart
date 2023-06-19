import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';

part 'playlist.freezed.dart';

part 'playlist.g.dart';

@freezed
class PlaylistEntity with _$PlaylistEntity {
  factory PlaylistEntity({
    required String href,
    required String id,
    required List<ImageEntity> images,
    required String name,
    required String uri,
    String? description,
  }) = _PlaylistEntity;

  factory PlaylistEntity.fromJson(Map<String, dynamic> json) =>
      _$PlaylistEntityFromJson(json);
}
