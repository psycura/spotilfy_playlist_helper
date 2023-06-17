import 'package:freezed_annotation/freezed_annotation.dart';

part 'image.freezed.dart';

part 'image.g.dart';

@freezed
class ImageEntity with _$ImageEntity {
  factory ImageEntity({
    required String url,
    int? height,
    int? width,
  }) = _ImageEntity;

  @override
  String toString() {
    return 'SpotifyImage(\n'
        'url: $url,\n'
        ' height: $height, width: $width\n'
        ')';
  }

  factory ImageEntity.fromJson(Map<String, dynamic> json) =>
      _$ImageEntityFromJson(json);
}
