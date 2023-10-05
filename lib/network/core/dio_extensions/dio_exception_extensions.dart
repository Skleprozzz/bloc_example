import 'package:dio/dio.dart';

const int sessionErrorStatusCode = 401;

extension DioExceptionExtensions on DioException {
  bool get isSessionExpiredError {
    return type == DioExceptionType.badResponse &&
        response?.statusCode == sessionErrorStatusCode;
  }
}
