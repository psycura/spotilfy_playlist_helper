import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_request.freezed.dart';

@freezed
class ApiRequest with _$ApiRequest {

  factory ApiRequest({
    required String url,
    Options? options,
    Object? data,
  }) = _ApiRequest;

}
