import 'package:flutter/material.dart';
import 'package:ui_kit/theme/app_theme.dart';

class AppCloseButton extends StatelessWidget {
  const AppCloseButton({
    this.onTap,
    super.key,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final colorScheme = theme.colorScheme;

    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 24,
        height: 24,
        child: Container(
          constraints: const BoxConstraints(maxWidth: 24, maxHeight: 24),
          decoration: BoxDecoration(
            color: colorScheme.background.background,
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: Center(
            child: Icon(
              Icons.close_rounded,
              color: colorScheme.background.background,
              size: 18,
            ),
          ),
        ),
      ),
    );
  }
}
