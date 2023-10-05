import 'package:admin_panel/network/core/dio_extensions/dio_extensions.dart';
import 'package:admin_panel/network/core/dio_provider/dio_provider.dart';
import 'package:admin_panel/network/core/endpoint/network_endpoint.dart';
import 'package:admin_panel/network/core/network_service.dart';
import 'package:built_value/serializer.dart';

const int connectionTimeout = 60 * 1000;

class NetworkServiceImpl implements NetworkService {
  NetworkServiceImpl(
    this.dioProvider,
  );

  final DioProvider dioProvider;

  @override
  Future<R> makeRequest<R>({
    required NetworkEndpoint endpoint,
    Serializer<R>? deserializer,
  }) async {
    return dioProvider.client.makeRequest<R>(
      endpoint: endpoint,
      deserializer: deserializer,
    );
  }

  @override
  Future<R> makeUnauthorizedRequest<R>({
    required NetworkEndpoint endpoint,
    Serializer<R>? deserializer,
  }) async {
    return dioProvider.unauthorizedClient.makeRequest<R>(
      endpoint: endpoint,
      deserializer: deserializer,
    );
  }
}
