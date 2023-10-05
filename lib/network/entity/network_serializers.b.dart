import 'package:admin_panel/network/entity/default_response/default_response.b.dart';
import 'package:admin_panel/network/entity/entries/response/entries_response_dto.b.dart';
import 'package:admin_panel/network/entity/login/params/login_params_dto.b.dart';
import 'package:admin_panel/network/entity/login/response/login_response_dto.b.dart';
import 'package:admin_panel/network/entity/refresh/params/refresh_params_dto.b.dart';
import 'package:admin_panel/network/entity/refresh/response/refresh_response_dto.b.dart';
import 'package:admin_panel/network/entity/user/response/user_response_dto.b.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'network_serializers.b.g.dart';

@SerializersFor([
  DefaultResponse,
  EntriesResponseDto,
  EntryDTO,
  //login
  LoginParamsDto,
  LoginResponseDto,
  //refresh
  RefreshParamsDto,
  RefreshResponseDto,
  //user
  UserResponseDto,
])
final Serializers networkSerializers = (_$networkSerializers.toBuilder()
      ..addPlugin(
        StandardJsonPlugin(),
      ))
    .build();
