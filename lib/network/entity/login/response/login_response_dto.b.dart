import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_response_dto.b.g.dart';

abstract class LoginResponseDto
    implements Built<LoginResponseDto, LoginResponseDtoBuilder> {
  factory LoginResponseDto([void Function(LoginResponseDtoBuilder)? updates]) =
      _$LoginResponseDto;
  LoginResponseDto._();

  String get access;
  String get refresh;

  static Serializer<LoginResponseDto> get serializer =>
      _$loginResponseDtoSerializer;
}
