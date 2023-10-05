import 'package:flutter/material.dart';
import 'package:ui_kit/theme/data/app_theme_data.dart';
import 'package:ui_kit/theme/data/colors/app_color_scheme.dart';
import 'package:ui_kit/theme/data/typography/app_typography.dart';

class AppTheme extends InheritedWidget {
  const AppTheme({
    required this.theme,
    required super.child,
    super.key,
  });

  final AppThemeData theme;

  @override
  bool updateShouldNotify(covariant AppTheme oldWidget) =>
      theme != oldWidget.theme;

  static AppThemeData of(BuildContext context) {
    final widget = context.dependOnInheritedWidgetOfExactType<AppTheme>();

    return widget?.theme ?? AppThemeData.light();
  }
}

extension AppThemeContext on BuildContext {
  AppThemeData get theme => AppTheme.of(this);

  AppColorScheme get colorScheme => theme.colorScheme;

  AppTypography get typography => theme.typography;
}
