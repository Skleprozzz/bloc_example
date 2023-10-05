import 'package:admin_panel/core/failures/failure.dart';

sealed class AuthFailure extends Failure {
  const AuthFailure({super.message});
}

final class UnauthorizedFailure extends AuthFailure {
  const UnauthorizedFailure({super.message});
}

final class ForbiddenFailure extends AuthFailure {
  const ForbiddenFailure({super.message});
}
