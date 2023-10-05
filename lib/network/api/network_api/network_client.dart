import 'package:admin_panel/network/entity/login/response/login_response_dto.b.dart';
import 'package:admin_panel/network/entity/refresh/response/refresh_response_dto.b.dart';
import 'package:admin_panel/network/entity/user/response/user_response_dto.b.dart';

abstract class NetworkClient {
  Future<LoginResponseDto> postLogin({
    required String phone,
    required String password,
  });
  Future<RefreshResponseDto> postRefresh({
    required String refresh,
  });
  Future<UserResponseDto> getUser();
}
