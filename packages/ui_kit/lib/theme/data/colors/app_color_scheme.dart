import 'package:ui_kit/theme/data/colors/background_colors_data.dart';
import 'package:ui_kit/theme/data/colors/error_colors_data.dart';
import 'package:ui_kit/theme/data/colors/neutral_colors_data.dart';
import 'package:ui_kit/theme/data/colors/primary_colors_data.dart';
import 'package:ui_kit/theme/data/colors/success_colors_data.dart';

class AppColorScheme {
  const AppColorScheme({
    required this.primary,
    required this.neutral,
    required this.background,
    required this.error,
    required this.success,
  });

  factory AppColorScheme.light() => AppColorScheme(
        primary: PrimaryColorsData.light(),
        neutral: NeutralColorsData.light(),
        background: BackgroundColorsData.light(),
        error: ErrorColorsData.light(),
        success: SuccessColorsData.light(),
      );

  factory AppColorScheme.dark() => AppColorScheme(
        primary: PrimaryColorsData.dark(),
        neutral: NeutralColorsData.dark(),
        background: BackgroundColorsData.dark(),
        error: ErrorColorsData.dark(),
        success: SuccessColorsData.light(),
      );

  final PrimaryColorsData primary;
  final NeutralColorsData neutral;
  final BackgroundColorsData background;
  final ErrorColorsData error;
  final SuccessColorsData success;

  AppColorScheme copyWith({
    PrimaryColorsData? primary,
    NeutralColorsData? neutral,
    BackgroundColorsData? background,
    ErrorColorsData? error,
    SuccessColorsData? success,
  }) =>
      AppColorScheme(
        primary: primary ?? this.primary,
        neutral: neutral ?? this.neutral,
        background: background ?? this.background,
        error: error ?? this.error,
        success: success ?? this.success,
      );
}
