import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'default_response.b.g.dart';

abstract class DefaultResponse
    implements Built<DefaultResponse, DefaultResponseBuilder> {
  factory DefaultResponse([void Function(DefaultResponseBuilder)? updates]) =
      _$DefaultResponse;
  DefaultResponse._();

  int get code;
  String get message;

  static Serializer<DefaultResponse> get serializer =>
      _$defaultResponseSerializer;
}
