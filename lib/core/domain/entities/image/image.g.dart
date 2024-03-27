// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageEntity _$ImageEntityFromJson(Map<String, dynamic> json) => ImageEntity(
      url: json['url'] as String,
      height: json['height'] as int?,
      width: json['width'] as int?,
    );

Map<String, dynamic> _$ImageEntityToJson(ImageEntity instance) =>
    <String, dynamic>{
      'url': instance.url,
      'height': instance.height,
      'width': instance.width,
    };
