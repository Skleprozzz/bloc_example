import 'package:flutter/material.dart';
import 'package:ui_kit/components/buttons/app_button_style.dart';
import 'package:ui_kit/components/buttons/app_button_type.dart';
import 'package:ui_kit/components/buttons/base_buttons/app_elevated_button.dart';
import 'package:ui_kit/components/buttons/base_buttons/app_outline_button.dart';
import 'package:ui_kit/components/buttons/base_buttons/app_secondary_elevated_button.dart';
import 'package:ui_kit/components/buttons/base_buttons/app_text_button.dart';
import 'package:ui_kit/components/buttons/base_buttons/app_warning_button.dart';
import 'package:ui_kit/theme/app_theme.dart';

export 'app_button_style.dart';
export 'app_button_type.dart';
export 'app_close_button.dart';

class AppButton extends StatelessWidget {
  const AppButton.primary({
    required this.type,
    required this.center,
    this.onPressed,
    this.left,
    this.right,
    this.height,
    this.width,
    this.style = const PrimaryAppButtonStyle(),
    super.key,
  });

  const AppButton.secondary({
    required this.type,
    required this.center,
    this.onPressed,
    this.left,
    this.right,
    this.height,
    this.width,
    super.key,
  }) : style = const SecondaryAppButtonStyle();

  const AppButton.outline({
    required this.type,
    required this.center,
    this.onPressed,
    this.left,
    this.right,
    this.height,
    this.width,
    super.key,
  }) : style = const OutlineAppButtonStyle();

  const AppButton.uncolored({
    required this.type,
    required this.center,
    this.onPressed,
    this.left,
    this.right,
    this.height,
    this.width,
    super.key,
  }) : style = const UncoloredAppButtonStyle();

  const AppButton.warning({
    required this.type,
    required this.center,
    this.onPressed,
    this.left,
    this.right,
    this.height,
    this.width,
    super.key,
  }) : style = const WarningAppButtonStyle();

  final VoidCallback? onPressed;
  final AppButtonType type;
  final AppButtonStyle style;
  final Widget center;
  final Widget? left;
  final Widget? right;
  final double? height;
  final double? width;

  static const defaultButtonPadding = EdgeInsets.symmetric(horizontal: 10);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);

    final colorScheme = appTheme.colorScheme;

    final Widget child = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (left != null)
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: left,
          ),
        center,
        if (right != null)
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: right,
          ),
      ],
    );

    return switch (style) {
      final PrimaryAppButtonStyle _ => AppElevatedButton(
          height: height,
          width: width,
          type: type,
          onPressed: onPressed,
          textColor: colorScheme.primary.primaryBlue500,
          backgroundColor: colorScheme.primary.primaryBlue100,
          padding: defaultButtonPadding,
          child: child,
        ),
      final SecondaryAppButtonStyle _ => AppSecondaryElevatedButton(
          height: height,
          width: width,
          type: type,
          onPressed: onPressed,
          backgroundColor: colorScheme.primary.primaryBlue500,
          textColor: colorScheme.background.onPrimary,
          padding: defaultButtonPadding,
          child: child,
        ),
      final OutlineAppButtonStyle _ => AppOutlineButton(
          height: height,
          width: width,
          type: type,
          onPressed: onPressed,
          backgroundColor: colorScheme.primary.primaryBlue500,
          textColor: colorScheme.primary.primaryBlue500,
          padding: defaultButtonPadding,
          child: child,
        ),
      final UncoloredAppButtonStyle _ => AppTextButton(
          height: height,
          width: width,
          type: type,
          onPressed: onPressed,
          textColor: colorScheme.primary.primaryBlue500,
          padding: EdgeInsets.zero,
          child: child,
        ),
      final WarningAppButtonStyle _ => AppWarningButton(
          height: height,
          width: width,
          type: type,
          onPressed: onPressed,
          backgroundColor: colorScheme.error.additionallyFailed,
          textColor: colorScheme.background.background,
          padding: defaultButtonPadding,
          child: child,
        ),
    };
  }
}
