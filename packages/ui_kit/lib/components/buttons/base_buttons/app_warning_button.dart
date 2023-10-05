import 'package:flutter/material.dart';
import 'package:ui_kit/components/buttons/app_button.dart';
import 'package:ui_kit/components/buttons/app_button_helpers.dart';
import 'package:ui_kit/theme/app_theme.dart';

class AppWarningButton extends StatefulWidget {
  const AppWarningButton({
    required this.child,
    required this.type,
    required this.padding,
    required this.backgroundColor,
    required this.textColor,
    this.onPressed,
    this.width,
    this.height,
    super.key,
  });

  final VoidCallback? onPressed;
  final Widget child;
  final AppButtonType type;
  final Color textColor;
  final Color backgroundColor;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry padding;

  @override
  State<AppWarningButton> createState() => _AppWarningButtonState();
}

class _AppWarningButtonState extends State<AppWarningButton> {
  ButtonStyle? buttonStyle;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final appTheme = AppTheme.of(context);
    buttonStyle = ElevatedButtonTheme.of(context).style?.copyWith(
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) {
              if (states.contains(MaterialState.disabled)) {
                return appTheme.colorScheme.error.additionallyFailed
                    .withOpacity(0.5);
              }
              if (states.contains(MaterialState.hovered)) {
                return appTheme.colorScheme.error.additionallyFailed;
              }
              if (states.contains(MaterialState.pressed)) {
                return appTheme.colorScheme.error.additionallyFailed;
              }

              return widget.backgroundColor;
            },
          ),
          foregroundColor: AppButtonHelpers.foregroundColor(
            appTheme: appTheme,
            color: widget.textColor,
          ),
          textStyle: AppButtonHelpers.textStyle(appTheme: appTheme),
          fixedSize: AppButtonHelpers.fixedSize(
            appTheme: appTheme,
            type: widget.type,
            width: widget.width,
            height: widget.height,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 50,
        maxWidth: 220,
      ),
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: buttonStyle,
        child: Padding(
          padding: widget.padding,
          child: widget.child,
        ),
      ),
    );
  }
}
