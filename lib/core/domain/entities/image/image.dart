import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'image.g.dart';

@JsonSerializable()
class ImageEntity extends Equatable {
  final String url;
  final int? height;
  final int? width;

  const ImageEntity({
    required this.url,
    this.height,
    this.width,
  });

  ImageEntity copyWith({
    String? url,
    int? height,
    int? width,
  }) {
    return ImageEntity(
      url: url ?? this.url,
      height: height ?? this.height,
      width: width ?? this.width,
    );
  }

  factory ImageEntity.fromJson(Map<String, dynamic> json) =>
      _$ImageEntityFromJson(json);

  @override
  List<Object?> get props => [
        url,
        height,
        width,
      ];
}
