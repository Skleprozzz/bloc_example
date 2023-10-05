import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/theme/data/typography/app_text_styles.dart';

class AppTypography extends Equatable {
  const AppTypography({
    required this.headerLarge,
    required this.headerMedium,
    required this.headerSmall,
    required this.bodyMedium,
    required this.bodySmall,
  });

  factory AppTypography.regular() => AppTypography(
        headerLarge: AppTextStyles.headerLarge,
        headerMedium: AppTextStyles.headerMedium,
        headerSmall: AppTextStyles.headerSmall,
        bodyMedium: AppTextStyles.bodyMedium,
        bodySmall: AppTextStyles.bodySmall,
      );

  final TextStyle headerLarge;
  final TextStyle headerMedium;
  final TextStyle headerSmall;
  final TextStyle bodyMedium;
  final TextStyle bodySmall;

  @override
  List<Object?> get props => [
        headerLarge,
        headerMedium,
        headerSmall,
        bodyMedium,
        bodySmall,
      ];

  AppTypography withColor(Color? color) => AppTypography(
        headerLarge: AppTextStyles.headerLarge.apply(color: color),
        headerMedium: AppTextStyles.headerMedium.apply(color: color),
        headerSmall: AppTextStyles.headerSmall.apply(color: color),
        bodyMedium: AppTextStyles.bodyMedium.apply(color: color),
        bodySmall: AppTextStyles.bodySmall.apply(color: color),
      );
}
