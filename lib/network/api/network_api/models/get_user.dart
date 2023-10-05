import 'package:admin_panel/network/api/network_api/request_model.dart';
import 'package:admin_panel/network/api_url.dart';
import 'package:admin_panel/network/core/endpoint/network_endpoint.dart';

class GetUser extends RequestModel {
  const GetUser()
      : super(
          path: ApiUrl.userMe,
          method: RequestMethod.get,
        );
}
