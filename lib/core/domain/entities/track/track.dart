import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';

part 'track.freezed.dart';

part 'track.g.dart';

@freezed
class Track with _$Track {
  factory Track({
    required Album album,
    required List<Artist> artists,
    required int duration_ms,
    required String href,
    required String id,
    required String name,
    required int popularity,
    required int track_number,
    required String uri,
    @Default('') String preview_url,
    @Default(true) bool is_playable,
    @Default(false) bool is_saved,

  }) = _Track;

  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);
}
