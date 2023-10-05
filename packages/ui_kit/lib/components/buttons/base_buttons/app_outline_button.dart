import 'package:flutter/material.dart';
import 'package:ui_kit/components/buttons/app_button.dart';
import 'package:ui_kit/components/buttons/app_button_helpers.dart';
import 'package:ui_kit/theme/app_theme.dart';

class AppOutlineButton extends StatefulWidget {
  const AppOutlineButton({
    required this.child,
    required this.type,
    required this.padding,
    required this.textColor,
    required this.backgroundColor,
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
  State<AppOutlineButton> createState() => _AppOutlineButtonState();
}

class _AppOutlineButtonState extends State<AppOutlineButton> {
  ButtonStyle? buttonStyle;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final appTheme = AppTheme.of(context);
    buttonStyle = OutlinedButtonTheme.of(context).style?.copyWith(
          side: MaterialStateProperty.resolveWith(
            (states) {
              if (states.contains(MaterialState.disabled)) {
                return BorderSide(
                  color: appTheme.colorScheme.primary.primaryBlue200,
                );
              }

              if (states.contains(MaterialState.hovered)) {
                return BorderSide(
                  color: appTheme.colorScheme.primary.primaryBlue900,
                );
              }

              if (states.contains(MaterialState.pressed)) {
                return BorderSide(
                  color: appTheme.colorScheme.primary.primaryBlue900,
                );
              }

              return BorderSide(color: widget.backgroundColor);
            },
          ),
          textStyle: AppButtonHelpers.textStyle(appTheme: appTheme),
          foregroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return appTheme.colorScheme.primary.primaryBlue200;
            }

            if (states.contains(MaterialState.hovered)) {
              return appTheme.colorScheme.primary.primaryBlue900;
            }

            if (states.contains(MaterialState.pressed)) {
              return appTheme.colorScheme.primary.primaryBlue900;
            }

            return widget.backgroundColor;
          }),
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
    return OutlinedButton(
      onPressed: widget.onPressed,
      style: buttonStyle,
      child: Padding(
        padding: widget.padding,
        child: widget.child,
      ),
    );
  }
}
