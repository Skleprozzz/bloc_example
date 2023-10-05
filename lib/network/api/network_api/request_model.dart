import 'package:admin_panel/network/api/network_api/models/get_user.dart';
import 'package:admin_panel/network/api/network_api/models/login_model.dart';
import 'package:admin_panel/network/api/network_api/models/refresh_model.dart';
import 'package:admin_panel/network/api_url.dart';
import 'package:admin_panel/network/core/endpoint/network_endpoint.dart';
import 'package:admin_panel/network/entity/login/params/login_params_dto.b.dart';
import 'package:admin_panel/network/entity/refresh/params/refresh_params_dto.b.dart';

abstract class RequestModel extends NetworkEndpoint {
  const RequestModel({
    required super.path,
    required super.method,
    super.baseUrl = ApiUrl.baseUrl,
    super.protocol = Protocol.https,
    super.headers,
    super.queryParams,
    super.body,
    super.contentType,
  });

  factory RequestModel.getUser() = GetUser;
  factory RequestModel.login(LoginParamsDto body) = LoginModel;
  factory RequestModel.refresh(RefreshParamsDto body) = RefreshModel;
}
