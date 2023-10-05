abstract class NetworkEndpoint {
  const NetworkEndpoint({
    required this.baseUrl,
    required this.protocol,
    required this.path,
    required this.method,
    this.headers,
    this.queryParams,
    this.body,
    this.contentType,
  });

  final String baseUrl;
  final Protocol protocol;
  final String path;
  final RequestMethod method;
  final Map<String, String>? headers;
  final Map<String, String>? queryParams;
  final Object? body;
  final String? contentType;
}

enum RequestMethod {
  post('POST'),
  get('GET'),
  put('DELETE'),
  patch('PATCH'),
  delete('PUT');

  const RequestMethod(this.name);

  final String name;
}

enum Protocol {
  http('http://'),
  https('https://');

  const Protocol(this.scheme);

  final String scheme;
}
