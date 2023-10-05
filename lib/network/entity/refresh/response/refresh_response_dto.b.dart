import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'refresh_response_dto.b.g.dart';

abstract class RefreshResponseDto
    implements Built<RefreshResponseDto, RefreshResponseDtoBuilder> {
  factory RefreshResponseDto([
    void Function(RefreshResponseDtoBuilder)? updates,
  ]) = _$RefreshResponseDto;
  RefreshResponseDto._();

  String get access;
  String get refresh;

  static Serializer<RefreshResponseDto> get serializer =>
      _$refreshResponseDtoSerializer;
}
