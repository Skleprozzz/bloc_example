import 'dart:convert';

import 'package:admin_panel/core/logger/logger.dart';
import 'package:admin_panel/network/core/endpoint/network_endpoint.dart';
import 'package:admin_panel/network/core/options_extension.dart';
import 'package:admin_panel/network/entity/network_serializers.b.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

extension DioExtensions on Dio {
  Future<R> makeRequest<R>({
    required NetworkEndpoint endpoint,
    Serializer<R>? deserializer,
    // ErrorConverter? errorConverter,
  }) async {
    final uri = _createUri(
      endpoint.protocol,
      endpoint.baseUrl,
      endpoint.path,
      endpoint.queryParams,
    );
    final options = Options(
      method: endpoint.method.name,
      headers: endpoint.headers,
    );
    final response = await _makeRequest(
      uri,
      options,
      body: endpoint.body is String || endpoint.body is Map
          ? endpoint.body ?? Object
          : const JsonCodec()
              .encode(networkSerializers.serialize(endpoint.body ?? '')),
      // errorConverter: errorConverter,
    );

    // TODO(all): можно вынести в отдельный изолят.
    return deserializeResponse<R>(response, deserializer);
  }

  Future<Response> _makeRequest(
    Uri uri,
    Options options, {
    required Object body,
  }) {
    try {
      return requestUri(
        uri,
        data: body,
        options: options,
      );
    } catch (error) {
      if (error is DioException) {
        logger.e(
          '''
            PATH: ${error.requestOptions.path},
            errorCode: ${error.message},
            errorMessage: ${error.message},
            errorBody: ${error.response},
            error: $error
            ''',
          // _makeRequest: errorConverter: $error
        );

        // final appError = errorConverter.converter(error);
        // if (appError is! IgnoreError) {
        //   throw appError;
        // }
      }
      rethrow;
    }
  }

  R deserializeResponse<R>(
    Response response,
    Serializer<R>? deserializer,
  ) {
    try {
      if (deserializer == null) {
        return response.data as R;
      }
      final result = networkSerializers.deserializeWith<R>(
        deserializer,
        response.data,
      );
      if (result == null) {
        throw const FormatException(
          "Deserialization result mustn't be null",
        );
      }

      return result;
    } catch (error) {
      logger.e(error.toString());
      rethrow;
    }
  }

  Uri _createUri(
    Protocol protocol,
    String host,
    String url, [
    Map<String, String>? queryParameters,
  ]) {
    final hostPath = '//$host$url';

    final uri = Uri.tryParse(hostPath);
    if (uri == null) {
      throw FormatException('Illegal host/path: $hostPath');
    }

    switch (protocol) {
      case Protocol.http:
        return Uri.http(uri.authority, uri.path, queryParameters);
      case Protocol.https:
        return Uri.https(uri.authority, uri.path, queryParameters);
    }
  }

  Future<Response> makeRequestFromError(DioException error) async {
    final request = error.requestOptions;
    final options = OptionsExtension.fromRequestOptions(request);
    final response = await this.request(
      request.path,
      options: options,
      data: request.data,
      queryParameters: request.queryParameters,
      cancelToken: request.cancelToken,
    );

    return response;
  }
}
