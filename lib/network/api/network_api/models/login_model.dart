import 'package:admin_panel/network/api/network_api/request_model.dart';
import 'package:admin_panel/network/api_url.dart';
import 'package:admin_panel/network/core/endpoint/network_endpoint.dart';
import 'package:admin_panel/network/entity/login/params/login_params_dto.b.dart';

class LoginModel extends RequestModel {
  const LoginModel(LoginParamsDto body)
      : super(
          path: ApiUrl.login,
          method: RequestMethod.post,
          body: body,
        );
}
