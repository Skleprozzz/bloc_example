import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_kit/theme/data/colors/app_color_scheme.dart';
import 'package:ui_kit/theme/data/colors/app_colors.dart';

import 'package:ui_kit/theme/data/typography/app_typography.dart';

class MaterialTheme {
  MaterialTheme._();

  static ThemeData get darkTheme => _materialTheme(
        colorScheme: AppColorScheme.dark(),
        typography: AppTypography.regular(),
        brightness: Brightness.dark,
      );

  static ThemeData get lightTheme => _materialTheme(
        colorScheme: AppColorScheme.light(),
        typography: AppTypography.regular(),
        brightness: Brightness.light,
      );

  static ThemeData _materialTheme({
    required AppColorScheme colorScheme,
    required AppTypography typography,
    required Brightness brightness,
  }) {
    final backgroundColor = colorScheme.background.surface;

    final isBrightnessLight = brightness == Brightness.light;

    final buttonTheme = ButtonStyle(
      padding: const MaterialStatePropertyAll(EdgeInsets.zero),
      elevation: MaterialStateProperty.all(0),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
    );

    return ThemeData(
      // colorScheme: ColorScheme.light(
      //   background: backgroundColor,
      //   brightness: Brightness.light,
      // ),

      dividerColor: Colors.transparent,

      brightness: brightness,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      scaffoldBackgroundColor: backgroundColor,
      appBarTheme: AppBarTheme(
        titleTextStyle:
            typography.headerLarge.copyWith(color: AppColors.onSurface),
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: backgroundColor,
          systemNavigationBarColor: backgroundColor,
          systemNavigationBarIconBrightness:
              isBrightnessLight ? Brightness.dark : Brightness.light,
          statusBarIconBrightness:
              isBrightnessLight ? Brightness.dark : Brightness.light,
          statusBarBrightness:
              isBrightnessLight ? Brightness.light : Brightness.dark,
        ),
        backgroundColor: backgroundColor,
        centerTitle: false,
        foregroundColor: backgroundColor,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: buttonTheme,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: buttonTheme,
      ),
      textButtonTheme: TextButtonThemeData(
        style: buttonTheme,
      ),
    );
  }
}
