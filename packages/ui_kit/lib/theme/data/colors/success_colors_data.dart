import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class SuccessColorsData extends Equatable {
  const SuccessColorsData({
    required this.additionallySuccess,
  });

  factory SuccessColorsData.light() => const SuccessColorsData(
        additionallySuccess: _additionallySuccessLight,
      );

  final Color additionallySuccess;

  static const Color _additionallySuccessLight = Color(0xFF018700);

  @override
  List<Object?> get props => [
        additionallySuccess,
      ];
}
