import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_response_dto.b.g.dart';

abstract class UserResponseDto
    implements Built<UserResponseDto, UserResponseDtoBuilder> {
  factory UserResponseDto([
    void Function(UserResponseDtoBuilder)? updates,
  ]) = _$UserResponseDto;
  UserResponseDto._();

  String get phone;
  BuiltList<String> get permissions;

  static Serializer<UserResponseDto> get serializer =>
      _$userResponseDtoSerializer;
}
