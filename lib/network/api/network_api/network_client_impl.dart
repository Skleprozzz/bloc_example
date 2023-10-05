import 'package:admin_panel/network/api/network_api/network_client.dart';
import 'package:admin_panel/network/api/network_api/request_model.dart';
import 'package:admin_panel/network/core/network_service.dart';
import 'package:admin_panel/network/entity/login/params/login_params_dto.b.dart';
import 'package:admin_panel/network/entity/login/response/login_response_dto.b.dart';
import 'package:admin_panel/network/entity/refresh/params/refresh_params_dto.b.dart';
import 'package:admin_panel/network/entity/refresh/response/refresh_response_dto.b.dart';
import 'package:admin_panel/network/entity/user/response/user_response_dto.b.dart';

class NetworkClientImpl extends NetworkClient {
  NetworkClientImpl({required this.networkService});

  final NetworkService networkService;

  @override
  Future<UserResponseDto> getUser() {
    return networkService.makeRequest<UserResponseDto>(
      endpoint: RequestModel.getUser(),
      deserializer: UserResponseDto.serializer,
    );
  }

  @override
  Future<LoginResponseDto> postLogin({
    required String phone,
    required String password,
  }) {
    return networkService.makeUnauthorizedRequest<LoginResponseDto>(
      endpoint: RequestModel.login(
        LoginParamsDto(
          (b) => b
            ..phone = phone
            ..password = password,
        ),
      ),
      deserializer: LoginResponseDto.serializer,
    );
  }

  @override
  Future<RefreshResponseDto> postRefresh({
    required String refresh,
  }) {
    return networkService.makeUnauthorizedRequest<RefreshResponseDto>(
      endpoint: RequestModel.refresh(
        RefreshParamsDto(
          (b) => b..refresh = refresh,
        ),
      ),
      deserializer: RefreshResponseDto.serializer,
    );
  }
}
