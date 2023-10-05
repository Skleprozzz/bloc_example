import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class PrimaryColorsData extends Equatable {
  const PrimaryColorsData({
    required this.primaryBlue900,
    required this.primaryBlue500,
    required this.primaryBlue400,
    required this.primaryBlue300,
    required this.primaryBlue200,
    required this.primaryBlue100,
    required this.primaryBlue50,
  });

  factory PrimaryColorsData.light() => const PrimaryColorsData(
        primaryBlue900: _primaryBlue900Light,
        primaryBlue500: _primaryBlue500Light,
        primaryBlue400: _primaryBlue400Light,
        primaryBlue300: _primaryBlue300Light,
        primaryBlue200: _primaryBlue200Light,
        primaryBlue100: _primaryBlue100Light,
        primaryBlue50: _primaryBlue50Light,
      );

  factory PrimaryColorsData.dark() => const PrimaryColorsData(
        primaryBlue900: _primaryBlue900Dark,
        primaryBlue500: _primaryBlue500Dark,
        primaryBlue400: _primaryBlue400Dark,
        primaryBlue300: _primaryBlue300Dark,
        primaryBlue200: _primaryBlue200Dark,
        primaryBlue100: _primaryBlue100Dark,
        primaryBlue50: _primaryBlue50Dark,
      );

  final Color primaryBlue900;
  final Color primaryBlue500;
  final Color primaryBlue400;
  final Color primaryBlue300;
  final Color primaryBlue200;
  final Color primaryBlue100;
  final Color primaryBlue50;

  static const Color _primaryBlue900Light = Color(0xff002C55);

  static const Color _primaryBlue500Light = Color(0xff0045AD);
  static const Color _primaryBlue400Light = Color(0xff0458D7);
  static const Color _primaryBlue300Light = Color(0xff247BFF);
  static const Color _primaryBlue200Light = Color(0xffA6CBFF);
  static const Color _primaryBlue100Light = Color(0xffCDE2FF);
  static const Color _primaryBlue50Light = Color(0xffD4E6FF);

  static const Color _primaryBlue900Dark = Color(0xff002C55);

  static const Color _primaryBlue500Dark = Color(0xff0045AD);
  static const Color _primaryBlue400Dark = Color(0xff0458D7);
  static const Color _primaryBlue300Dark = Color(0xff247BFF);
  static const Color _primaryBlue200Dark = Color(0xffA6CBFF);
  static const Color _primaryBlue100Dark = Color(0xffCDE2FF);
  static const Color _primaryBlue50Dark = Color(0xffD4E6FF);

  @override
  List<Object?> get props => [
        primaryBlue900,
        primaryBlue500,
        primaryBlue400,
        primaryBlue300,
        primaryBlue200,
        primaryBlue100,
        primaryBlue50,
      ];
}
