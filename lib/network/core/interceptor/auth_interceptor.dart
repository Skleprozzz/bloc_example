import 'package:admin_panel/features/auth/domain/services/auth_service.dart';
import 'package:admin_panel/network/core/dio_extensions/dio_exception_extensions.dart';
import 'package:admin_panel/network/core/dio_extensions/dio_extensions.dart';
import 'package:admin_panel/network/core/dio_provider/dio_provider.dart';
import 'package:admin_panel/sl/service_locator.dart';
import 'package:dio/dio.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class AuthInterceptor extends Interceptor {
  final AuthService authService = sl.get<AuthService>();

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final tokens = await authService.getTokens;

    final refreshToken = tokens.refresh ?? '';

    final hasExpiredRefresh =
        refreshToken.isNotEmpty && JwtDecoder.isExpired(refreshToken);

    if (hasExpiredRefresh) {
      return authService.logout();
    }

    var accessToken = tokens.access ?? '';

    final hasExpiredAccess =
        accessToken.isNotEmpty && JwtDecoder.isExpired(accessToken);

    if (hasExpiredAccess) {
      await authService.refreshTokens();
      accessToken = (await authService.getTokens).access ?? '';
    }

    final apiCred = 'Bearer ${tokens.access}';

    options.headers.remove(ApiHeadersKeys.authorization);
    options.headers
        .putIfAbsent(Headers.contentTypeHeader, () => Headers.jsonContentType);
    options.headers
        .putIfAbsent(ApiHeadersKeys.vary, () => ApiHeadersValues.vary);
    if (accessToken.isNotEmpty) {
      options.headers.putIfAbsent(ApiHeadersKeys.authorization, () => apiCred);
    }
    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final tokens = await authService.getTokens;
    if (tokens.refresh == null && err.isSessionExpiredError) {
      await authService.logout();
    }
    if (err.isSessionExpiredError && tokens.refresh != null) {
      try {
        await authService.refreshTokens();
        await _retryRequest(err, handler);
      } catch (e) {
        handler.next(err);
        await authService.logout();
      }
    } else {
      handler.next(err);
    }
  }

  Future<void> _retryRequest(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    try {
      final response =
          await sl.get<DioProvider>().client.makeRequestFromError(err);
      handler.resolve(response);
    } on DioException catch (e) {
      handler.next(e);
    }
  }
}

abstract class ApiHeadersValues {
  static const String vary = 'Accept, Cookie, Origin';
}

abstract class ApiHeadersKeys {
  static const String contentType = 'Content-Type';
  static const String application = 'application';
  static const String authorization = 'Authorization';
  static const String vary = 'vary';
}
