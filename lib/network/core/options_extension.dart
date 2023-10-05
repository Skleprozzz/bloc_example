import 'package:dio/dio.dart';

extension OptionsExtension on Options {
  static Options fromRequestOptions(RequestOptions request) {
    return Options(
      method: request.method,
      sendTimeout: request.sendTimeout,
      receiveTimeout: request.receiveTimeout,
      extra: request.extra,
      headers: request.headers,
      responseType: request.responseType,
      contentType: request.contentType,
      validateStatus: request.validateStatus,
      receiveDataWhenStatusError: request.receiveDataWhenStatusError,
      followRedirects: request.followRedirects,
      maxRedirects: request.maxRedirects,
      requestEncoder: request.requestEncoder,
      responseDecoder: request.responseDecoder,
      listFormat: request.listFormat,
    );
  }
}
