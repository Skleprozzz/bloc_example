import 'package:admin_panel/app/router/app_router.r.dart';
import 'package:admin_panel/features/auth/domain/failure/auth_failure.dart';
import 'package:admin_panel/features/auth/presentation/bloc/auth_bloc.f.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/components/toasts/show_app_toast.dart';
import 'package:ui_kit/theme/app_theme.dart';
import 'package:ui_kit/theme/data/app_theme_data.dart';
import 'package:ui_kit/ui_kit.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController loginController;
  late final TextEditingController passwordController;

  final passwordValue = ValueNotifier('');
  final loginValue = ValueNotifier('');

  final textFieldFocusNode = FocusNode();
  bool _obscured = true;

  @override
  void initState() {
    super.initState();
    loginController = TextEditingController();
    passwordController = TextEditingController();
    loginController.addListener(() => loginValue.value = loginController.text);
    passwordController
        .addListener(() => passwordValue.value = passwordController.text);
  }

  @override
  void dispose() {
    loginController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final colorScheme = appTheme.colorScheme;
    final typography = appTheme.typography;

    return Scaffold(
      backgroundColor: colorScheme.background.background,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SizedBox(
            width: constraints.maxWidth,
            child: BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                _authListener(state, context, appTheme);
              },
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 300,
                      child: Card(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        elevation: 1,
                        shadowColor: colorScheme.background.onSurface,
                        color: colorScheme.background.onPrimary,
                        // margin: const EdgeInsets.symmetric(horizontal: 500),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Center(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    UiKitAssets.icons.sectionIcons.hbtLogo
                                        .svg(height: 36),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Admin Panel',
                                      style: typography.headerLarge.copyWith(
                                        color:
                                            colorScheme.primary.primaryBlue500,
                                      ),
                                    ),
                                  ],
                                ),
                                AppInputField(
                                  isEnabled: true,
                                  controller: loginController,
                                  hintText: 'Enter login',
                                ),
                                AppInputField(
                                  isEnabled: true,
                                  controller: passwordController,
                                  hintText: 'Enter password',
                                  suffixIcon: GestureDetector(
                                    onTap: _toggleObscured,
                                    child: Icon(
                                      _obscured
                                          ? Icons.visibility_rounded
                                          : Icons.visibility_off_rounded,
                                      size: 24,
                                    ),
                                  ),
                                  obscureText: _obscured,
                                ),
                                ValueListenableBuilder(
                                  valueListenable: passwordValue,
                                  builder: (context, password, _) {
                                    return ValueListenableBuilder(
                                      valueListenable: loginValue,
                                      builder: (context, login, _) {
                                        return AppButton.outline(
                                          onPressed: login.isNotEmpty &&
                                                  password.isNotEmpty
                                              ? () {
                                                  context.read<AuthBloc>().add(
                                                        AuthEvent.login(
                                                          login: login,
                                                          password: password,
                                                        ),
                                                      );
                                                }
                                              : null,
                                          type: AppButtonType.floating,
                                          width: 200,
                                          height: 40,
                                          center: const Text('Sign in'),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }

  void _authListener(
    AuthState state,
    BuildContext context,
    AppThemeData appTheme,
  ) {
    if (state is AuthStateAuthorized) {
      context.router.replace(const HomeRoute());
    }
    if (state is AuthStateError) {
      final errorText = switch (state.authFailure.runtimeType) {
        UnauthorizedFailure => 'UnauthorizedFailure',
        ForbiddenFailure => 'Login error',
        _ => 'Unknown failure'
      };

      final configuration = switch (state.authFailure.runtimeType) {
        UnauthorizedFailure => ToastConfiguration.warning(appTheme: appTheme),
        ForbiddenFailure => ToastConfiguration.alert(appTheme: appTheme),
        _ => ToastConfiguration.info(appTheme: appTheme)
      };

      showAppToast(
        toastConfiguration: configuration,
        context: context,
        infoText: errorText,
      );
    }
  }

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
    });
  }
}
