import 'package:admin_panel/network/core/interceptor/auth_interceptor.dart';
import 'package:admin_panel/network/core/interceptor/logging_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

abstract class DioProvider {
  Dio get unauthorizedClient;
  Dio get client;
}

class DioProviderImpl implements DioProvider {
  @override
  Dio get unauthorizedClient {
    return unauthorizedDio;
  }

  @override
  Dio get client {
    return dio;
  }
}

final dio = Dio()
  ..interceptors.addAll([
    InterceptorsWrapper(
      onRequest: (options, handler) {
        final customHeaders = <String, String>{
          'Content-Type': 'application/json',
        };
        options.headers.addAll(customHeaders);

        handler.next(options);
      },
    ),
    AuthInterceptor(),
    if (kDebugMode) LoggingInterceptor(),
  ])
  ..transformer = RawResponseTransformer()
  ..options.connectTimeout = const Duration(milliseconds: 10 * 1000);

final unauthorizedDio = Dio()
  ..interceptors.addAll([
    InterceptorsWrapper(
      onRequest: (options, handler) {
        final customHeaders = <String, String>{
          'Content-Type': 'application/json',
        };
        options.headers.addAll(customHeaders);

        handler.next(options);
      },
    ),
    if (kDebugMode) LoggingInterceptor(),
  ])
  ..transformer = RawResponseTransformer()
  ..options.connectTimeout = const Duration(milliseconds: 10 * 1000);

class RawResponseTransformer extends BackgroundTransformer {
  @override
  set jsonDecodeCallback(_) {
    super.jsonDecodeCallback = (data) => data;
  }
}
