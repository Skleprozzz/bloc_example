import 'package:admin_panel/app/router/app_router.r.dart';
import 'package:admin_panel/features/auth/domain/services/auth_service.dart';
import 'package:admin_panel/sl/service_locator.dart';
import 'package:auto_route/auto_route.dart';

class AuthGuard extends AutoRouteGuard {
  AuthGuard();

  final AuthService _authService = sl.get<AuthService>();

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    final isLoggedIn = await _authService.isUserAuthenticated();

    if (isLoggedIn) {
      resolver.next();
      
      return;
    }

    await resolver.redirect(const LoginRoute());
  }
}
