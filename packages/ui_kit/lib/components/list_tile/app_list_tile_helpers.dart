import 'package:flutter/material.dart';
import 'package:ui_kit/components/list_tile/list_tile_type.dart';

import 'package:ui_kit/theme/data/app_theme_data.dart';

abstract class AppListTileHelpers {
  AppListTileHelpers._();

  static MaterialStateProperty<Color> foregroundColor({
    required AppThemeData themeData,
    required Color color,
  }) =>
      MaterialStateProperty.resolveWith<Color>(
        (states) {
          if (states.contains(MaterialState.disabled)) {
            return themeData.colorScheme.background.background;
          }
          return color;
        },
      );

  static MaterialStateProperty<TextStyle?> textStyle({
    required AppThemeData themeData,
    Color? color,
  }) =>
      MaterialStateProperty.resolveWith<TextStyle?>(
        (states) {
          if (states.contains(MaterialState.disabled)) {
            return themeData.typography.headerSmall.copyWith(color: color);
          }

          return themeData.typography.headerSmall;
        },
      );

  static MaterialStateProperty<Size> fixedSize({
    required ColorScheme colorScheme,
    required ListTileType type,
    double? width,
    double? height,
  }) =>
      MaterialStateProperty.resolveWith<Size>(
        (states) {
          switch (type) {
            case ListTileType.fixedSmall:
              return const Size.fromHeight(36);
            case ListTileType.fixedLarge:
              return const Size.fromHeight(47);
          }
        },
      );
}
