// ignore_for_file: no-object-declaration

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

class ApiRequest extends Equatable {
  final String url;
  final Options? options;
  final Object? data;

  const ApiRequest({
    required this.url,
    this.options,
    this.data,
  });

  ApiRequest copyWith({
    String? url,
    Options? options,
    Object? data,
  }) {
    return ApiRequest(
      url: url ?? this.url,
      options: options ?? this.options,
      data: data ?? this.data,
    );
  }

  @override
  List<Object?> get props => [
        url,
        options,
        data,
      ];
}
