import 'package:admin_panel/app/router/app_router.r.dart';
import 'package:admin_panel/features/auth/domain/services/auth_service.dart';
import 'package:admin_panel/features/auth/presentation/bloc/auth_bloc.f.dart';
import 'package:admin_panel/sl/service_locator.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/theme/adaptive_theme.dart';

class AdminPanel extends StatelessWidget {
  AdminPanel({super.key});

  final appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(authService: sl.get<AuthService>()),
      child: AdaptiveTheme(
        builder: (context, theme) => MaterialApp.router(
          title: 'Flutter Demo',
          routerConfig: appRouter.config(
            navigatorObservers: () => [
              AutoRouteObserver(),
            ],
          ),

          // routerDelegate: _appRouter.delegate(),
          // routeInformationParser: _appRouter.defaultRouteParser(),
          theme: theme.materialTheme,
          localizationsDelegates: const <LocalizationsDelegate>[
            // UiKitLocalizationsIntl.delegate,
            // GlobalMaterialLocalizations.delegate,
            // GlobalWidgetsLocalizations.delegate,
            // GlobalCupertinoLocalizations.delegate,
          ],
          // supportedLocales: UiKitLocalizationsIntl
          // .delegate.supportedLocales,
        ),
      ),
    );
  }
}
