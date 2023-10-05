import 'package:admin_panel/network/core/endpoint/network_endpoint.dart';
import 'package:built_value/serializer.dart';

abstract class NetworkService {
  Future<T> makeRequest<T>({
    required NetworkEndpoint endpoint,
    Serializer<T>? deserializer,
  });

  Future<T> makeUnauthorizedRequest<T>({
    required NetworkEndpoint endpoint,
    Serializer<T>? deserializer,
  });
}
