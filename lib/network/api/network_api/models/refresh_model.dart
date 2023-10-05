import 'package:admin_panel/network/api/network_api/request_model.dart';
import 'package:admin_panel/network/api_url.dart';
import 'package:admin_panel/network/core/endpoint/network_endpoint.dart';
import 'package:admin_panel/network/entity/refresh/params/refresh_params_dto.b.dart';

class RefreshModel extends RequestModel {
  const RefreshModel(RefreshParamsDto body)
      : super(
          path: ApiUrl.refresh,
          method: RequestMethod.post,
          body: body,
        );
}
