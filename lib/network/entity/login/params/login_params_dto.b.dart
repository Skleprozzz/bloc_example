import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_params_dto.b.g.dart';

abstract class LoginParamsDto
    implements Built<LoginParamsDto, LoginParamsDtoBuilder> {
  factory LoginParamsDto([void Function(LoginParamsDtoBuilder)? updates]) =
      _$LoginParamsDto;
  LoginParamsDto._();

  String get phone;
  String get password;

  static Serializer<LoginParamsDto> get serializer =>
      _$loginParamsDtoSerializer;
}
