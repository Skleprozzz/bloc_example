import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_kit/components/input_fields/input_button.dart';
import 'package:ui_kit/theme/app_theme.dart';
import 'package:ui_kit/theme/data/app_theme_data.dart';
export 'input_button.dart';

class AppSearchField extends StatelessWidget {
  const AppSearchField({
    required this.isEnabled,
    required this.controller,
    this.suffixIcon,
    this.onSuffixIconPress,
    this.helpText,
    this.labelText,
    this.keyboardType,
    this.inputFormatters,
    this.hintText,
    this.errorText,
    super.key,
    this.prefixIcon,
  });

  const AppSearchField.withSuffixIcon({
    required this.isEnabled,
    required this.controller,
    this.helpText,
    this.suffixIcon = const InputButton(),
    this.onSuffixIconPress,
    this.labelText,
    this.keyboardType,
    this.inputFormatters,
    this.hintText,
    this.errorText,
    super.key,
    this.prefixIcon,
  });
  const AppSearchField.withPrefixIcon({
    required this.isEnabled,
    required this.controller,
    this.helpText,
    this.prefixIcon = const InputButton(),
    this.onSuffixIconPress,
    this.labelText,
    this.keyboardType,
    this.inputFormatters,
    this.hintText,
    this.errorText,
    super.key,
    this.suffixIcon,
  });

  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool isEnabled;
  final String? helpText;
  final String? labelText;
  final VoidCallback? onSuffixIconPress;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final String? hintText;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final colorScheme = appTheme.colorScheme;
    final typography = appTheme.typography;
    final gray100 = colorScheme.neutral.neutralGray100;
    final gray200 = colorScheme.neutral.neutralGray200;

    final border = _border(
      color: isEnabled ? gray200 : gray100,
      appTheme: appTheme,
    );

    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 280),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 35,
            ),
            child: TextField(
              cursorColor: colorScheme.background.onSurface,
              controller: controller,
              keyboardType: keyboardType,
              inputFormatters: inputFormatters,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(
                  top: 6,
                  right: 15,
                  bottom: 6,
                  left: 15,
                ),
                prefixIconColor: isEnabled ? gray200 : gray100,
                prefixIcon: prefixIcon,
                helperText: helpText,
                helperStyle: typography.bodyMedium.copyWith(fontSize: 0),
                hintText: hintText,
                hintStyle: typography.bodyMedium.copyWith(
                  color: isEnabled ? gray200 : gray100,
                ),
                errorText: errorText,
                errorStyle: typography.bodyMedium.copyWith(fontSize: 0),
                enabledBorder: border,
                border: border,
                enabled: isEnabled,
                errorBorder: _border(
                  color: colorScheme.error.additionallyFailed,
                  appTheme: appTheme,
                ),
                focusedBorder: _border(color: gray200, appTheme: appTheme),
                disabledBorder: border,
                suffixIconColor:
                    isEnabled ? colorScheme.primary.primaryBlue900 : gray100,
                suffixIcon: suffixIcon,
              ),
            ),
          ),
        ],
      ),
    );
  }

  OutlineInputBorder _border({
    required Color color,
    required AppThemeData appTheme,
  }) =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: color),
      );
}
