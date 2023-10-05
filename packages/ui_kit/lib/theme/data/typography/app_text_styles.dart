import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle headerLarge = GoogleFonts.inter(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );
  static TextStyle headerMedium = GoogleFonts.inter(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );
  static TextStyle headerSmall = GoogleFonts.inter(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static TextStyle bodyMedium = GoogleFonts.inter(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );
  static TextStyle bodySmall = GoogleFonts.inter(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    fontSize: 12,
  );
}
