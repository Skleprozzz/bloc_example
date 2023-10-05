import 'package:flutter/material.dart';
import 'package:ui_kit/components/buttons/app_button.dart';
import 'package:ui_kit/components/buttons/app_button_helpers.dart';
import 'package:ui_kit/theme/app_theme.dart';
import 'package:ui_kit/theme/data/app_theme_data.dart';

class AppTextButton extends StatefulWidget {
  const AppTextButton({
    required this.child,
    required this.type,
    required this.padding,
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

  final double? width;
  final double? height;
  final EdgeInsetsGeometry padding;

  @override
  State<AppTextButton> createState() => _AppTextButtonState();
}

class _AppTextButtonState extends State<AppTextButton> {
  late AppThemeData appTheme;
  ButtonStyle? buttonStyle;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    appTheme = AppTheme.of(context);
    buttonStyle = OutlinedButtonTheme.of(context).style?.copyWith(
          foregroundColor: AppButtonHelpers.foregroundColor(
            appTheme: appTheme,
            color: widget.textColor,
          ),
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) {
              if (states.contains(MaterialState.disabled)) {
                return appTheme.colorScheme.background.background;
              }
              if (states.contains(MaterialState.hovered)) {
                return appTheme.colorScheme.background.background;
              }
              if (states.contains(MaterialState.pressed)) {
                return appTheme.colorScheme.background.background;
              }

              return null;
            },
          ),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: MaterialStateProperty.resolveWith<Size>(
            (states) {
              switch (widget.type) {
                case AppButtonType.floating:
                  return Size(
                    widget.width ?? double.infinity,
                    widget.height ?? double.infinity,
                  );
                case AppButtonType.fixedSmall:
                  return const Size.fromHeight(36);
                case AppButtonType.fixedLarge:
                  return const Size.fromHeight(44);
              }
            },
          ),
          textStyle: AppButtonHelpers.textStyle(
            color: widget.textColor,
            appTheme: appTheme,
          ),
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
        maxHeight: 44,
        minHeight: 36,
      ),
      child: TextButton(
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
