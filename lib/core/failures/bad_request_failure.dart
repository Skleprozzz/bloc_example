import 'package:admin_panel/core/failures/failure.dart';

final class BadRequestFailure extends ApiFailure {
  BadRequestFailure({super.message, super.responseCode});
}
