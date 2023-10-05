import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'refresh_params_dto.b.g.dart';

abstract class RefreshParamsDto
    implements Built<RefreshParamsDto, RefreshParamsDtoBuilder> {
  factory RefreshParamsDto([void Function(RefreshParamsDtoBuilder)? updates]) =
      _$RefreshParamsDto;
  RefreshParamsDto._();

  String get refresh;

  static Serializer<RefreshParamsDto> get serializer =>
      _$refreshParamsDtoSerializer;
}
