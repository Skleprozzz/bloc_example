import 'package:admin_panel/core/logger/logger.dart';
import 'package:dio/dio.dart';

class LoggingInterceptor implements Interceptor {
  factory LoggingInterceptor() => _instance;

  LoggingInterceptor._internal();

  static final LoggingInterceptor _instance = LoggingInterceptor._internal();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final headersBuffer = StringBuffer();
    options.headers
        .forEach((key, value) => headersBuffer.write('$key: $value \n'));
    logger.d(
      '''
      REQUEST
      ${options.method} ${options.uri}
      HEADERS: $headersBuffer
      BODY: ${options.data}
      '''
          .trimMargins(),
    );

    handler.next(options);
  }

  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) {
    logger.d(
      '''
      RESPONSE
      ${response.requestOptions.method} ${response.requestOptions.uri}
      STATUS: ${response.statusCode}
      BODY: ${response.data}
      '''
          .trimMargins(),
    );
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.type != DioExceptionType.badResponse) {
      logger.e(err);
    }

    handler.next(err);
  }
}

extension on String {
  String trimMargins() {
    return splitMapJoin(
      RegExp('^', multiLine: true),
      onMatch: (_) => '\n',
      onNonMatch: (n) => n.trim(),
    ).trim();
  }
}
