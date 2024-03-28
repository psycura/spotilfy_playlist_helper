import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'artist.g.dart';

@JsonSerializable()
class ArtistEntity extends Equatable {
  final String href;
  final String id;
  final String name;

  const ArtistEntity({
    required this.href,
    required this.id,
    required this.name,
  });

  ArtistEntity copyWith({
    String? href,
    String? id,
    String? name,
  }) {
    return ArtistEntity(
      href: href ?? this.href,
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toJson() => _$ArtistEntityToJson(this);


  factory ArtistEntity.fromJson(Map<String, dynamic> json) =>
      _$ArtistEntityFromJson(json);

  @override
  List<Object?> get props => [
        href,
        id,
        name,
      ];
}
