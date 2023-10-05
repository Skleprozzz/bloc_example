import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/theme/data/colors/app_color_scheme.dart';
import 'package:ui_kit/theme/data/material_theme/material_theme.dart';
import 'package:ui_kit/theme/data/typography/app_typography.dart';

class AppThemeData extends Equatable {
  const AppThemeData({
    required this.colorScheme,
    required this.typography,
    required this.materialTheme,
  });

  factory AppThemeData.light() => AppThemeData(
        colorScheme: AppColorScheme.light(),
        typography: AppTypography.regular(),
        materialTheme: MaterialTheme.lightTheme,
      );

  factory AppThemeData.dark() => AppThemeData(
        colorScheme: AppColorScheme.dark(),
        typography: AppTypography.regular(),
        materialTheme: MaterialTheme.darkTheme,
      );

  final AppColorScheme colorScheme;
  final AppTypography typography;

  final ThemeData materialTheme;

  @override
  List<Object?> get props => [
        colorScheme,
        typography,
      ];
}
