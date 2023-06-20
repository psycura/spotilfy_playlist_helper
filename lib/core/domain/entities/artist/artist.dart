import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist.freezed.dart';
part 'artist.g.dart';

@freezed
class ArtistEntity with _$ArtistEntity {

  factory ArtistEntity({
    required String href,
    required String id,
    required String name,
}) = _ArtistEntity;

  factory ArtistEntity.fromJson(Map<String, dynamic> json) => _$ArtistEntityFromJson(json);

}
