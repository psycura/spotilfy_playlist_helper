import 'package:freezed_annotation/freezed_annotation.dart';

part 'spotify_image.freezed.dart';

part 'spotify_image.g.dart';

@freezed
class SpotifyImage with _$SpotifyImage {
  factory SpotifyImage({
    required String url,
    int? height,
    int? width,
  }) = _SpotifyImage;

  factory SpotifyImage.fromJson(Map<String, dynamic> json) =>
      _$SpotifyImageFromJson(json);
}
