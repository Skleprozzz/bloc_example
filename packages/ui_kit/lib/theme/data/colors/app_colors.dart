import 'package:flutter/material.dart';

///App colors
abstract class AppColors {
  AppColors._();

  ///BlueColors
  static const Color primaryBlue900 = Color(0xff002C55);
  static const Color primaryBlue500 = Color(0xff0045AD);
  static const Color primaryBlue400 = Color(0xff0458D7);
  static const Color primaryBlue300 = Color(0xff247BFF);
  static const Color primaryBlue200 = Color(0xffA6CBFF);
  static const Color primaryBlue100 = Color(0xffCDE2FF);
  static const Color primaryBlue50 = Color(0xffD4E6FF);

  ///GrayColors
  static const Color neutralGray200 = Color(0xffA7A7A7);
  static const Color neutralGray100 = Color(0xffDCDBDB);

  ///
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color background = Color(0xFFEFEFEF);
  static const Color surface = Color(0xFFFEFEFE);
  static const Color onSurface = Color(0xFF1B1B1C);

  ///Additionally
  static const Color additionallySuccess = Color(0xFF018700);
  static const Color additionallyFailed = Color(0xFFC21010);
}
