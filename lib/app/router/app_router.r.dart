import 'package:admin_panel/features/auth/presentation/auth_guard.dart';
import 'package:admin_panel/features/auth/presentation/login_page.r.dart';
import 'package:admin_panel/features/devices/presentation/app_devices_page.r.dart';
import 'package:admin_panel/features/home_screen/presentation/pages/home_page.r.dart';
import 'package:auto_route/auto_route.dart';

part 'app_router.r.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.custom();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LoginRoute.page,
          path: RoutePaths.login,
        ),
        AutoRoute(
          children: [
            AutoRoute(
              page: AppDevicesRoute.page,
              path: RoutePaths.device,
              initial: true,
            ),
          ],
          page: HomeRoute.page,
          path: RoutePaths.home,
          guards: [AuthGuard()],
        ),
        RedirectRoute(path: '*', redirectTo: RoutePaths.home),
      ];

}

class RoutePaths {
  static const String device = 'devices';
  static const String home = '/admin_panel';
  static const String login = '/login';
}
