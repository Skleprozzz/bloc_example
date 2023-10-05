import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class BackgroundColorsData extends Equatable {
  const BackgroundColorsData({
    required this.onPrimary,
    required this.background,
    required this.surface,
    required this.onSurface,
  });

  factory BackgroundColorsData.light() => const BackgroundColorsData(
        onPrimary: _onPrimaryLight,
        background: _backgroundLight,
        surface: _surfaceLight,
        onSurface: _onSurfaceLight,
      );

  factory BackgroundColorsData.dark() => const BackgroundColorsData(
        onPrimary: _onPrimaryDark,
        background: _backgroundDark,
        surface: _surfaceDark,
        onSurface: _onSurfaceDark,
      );

  final Color onPrimary;
  final Color background;
  final Color surface;
  final Color onSurface;

  static const Color _onPrimaryLight = Color(0xFFFFFFFF);
  static const Color _backgroundLight = Color(0xFFEFEFEF);
  static const Color _surfaceLight = Color(0xFFFEFEFE);
  static const Color _onSurfaceLight = Color(0xFF1B1B1C);

  static const Color _onPrimaryDark = Color(0xFFFFFFFF);
  static const Color _backgroundDark = Color(0xFFEFEFEF);
  static const Color _surfaceDark = Color(0xFFFEFEFE);
  static const Color _onSurfaceDark = Color(0xFF1B1B1C);

  @override
  List<Object?> get props => [
        onPrimary,
        background,
        surface,
        onSurface,
      ];
}
