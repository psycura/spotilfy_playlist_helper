import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'playlist_tracks_response.g.dart';

@JsonSerializable()
class PlaylistTracksResponse extends Equatable {
  final String href;
  final int total;

  const PlaylistTracksResponse({
    required this.href,
    required this.total,
  });

  PlaylistTracksResponse copyWith({
    String? href,
    int? total,
  }) {
    return PlaylistTracksResponse(
      href: href ?? this.href,
      total: total ?? this.total,
    );
  }

  factory PlaylistTracksResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaylistTracksResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PlaylistTracksResponseToJson(this);


  @override
  List<Object?> get props =>
      [
        href,
        total,
      ];
}
