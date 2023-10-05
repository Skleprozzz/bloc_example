import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ErrorColorsData extends Equatable {
  const ErrorColorsData({
    required this.additionallyFailed,
  });

  factory ErrorColorsData.light() => const ErrorColorsData(
        additionallyFailed: _additionallyFailedLight,
      );

  factory ErrorColorsData.dark() => const ErrorColorsData(
        additionallyFailed: _additionallyFailedDark,
      );

  final Color additionallyFailed;

  static const Color _additionallyFailedLight = Color(0xFFC21010);
  static const Color _additionallyFailedDark = Color(0xFFC21010);

  @override
  List<Object?> get props => [
        additionallyFailed,
      ];
}
