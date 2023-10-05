import 'package:flutter/material.dart';
import 'package:ui_kit/components/buttons/app_button.dart';
import 'package:ui_kit/theme/data/app_theme_data.dart';

abstract class AppButtonHelpers {
  AppButtonHelpers._();

  static MaterialStateProperty<Color> foregroundColor({
    required AppThemeData appTheme,
    required Color color,
  }) =>
      MaterialStateProperty.resolveWith<Color>(
        (states) {
          if (states.contains(MaterialState.disabled)) {
            return appTheme.colorScheme.primary.primaryBlue200;
          }

          return color;
        },
      );

  static MaterialStateProperty<TextStyle?> textStyle({
    required AppThemeData appTheme,
    Color? color,
  }) =>
      MaterialStateProperty.resolveWith<TextStyle?>(
        (states) {
          if (states.contains(MaterialState.disabled)) {
            return appTheme.typography.headerSmall.copyWith(color: color);
          }

          return appTheme.typography.headerSmall;
        },
      );

  static MaterialStateProperty<Size> fixedSize({
    required AppThemeData appTheme,
    required AppButtonType type,
    double? width,
    double? height,
  }) =>
      MaterialStateProperty.resolveWith<Size>(
        (states) {
          switch (type) {
            case AppButtonType.floating:
              return Size(
                width ?? double.infinity,
                height ?? double.infinity,
              );
            case AppButtonType.fixedSmall:
              return const Size.fromHeight(36);
            case AppButtonType.fixedLarge:
              return const Size.fromHeight(44);
          }
        },
      );
}
