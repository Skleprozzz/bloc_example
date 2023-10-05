import 'package:flutter/material.dart';
import 'package:ui_kit/theme/app_theme.dart';

class CheckboxItem extends StatelessWidget {
  const CheckboxItem({required this.isSelected, super.key});

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final colorScheme = appTheme.colorScheme;

    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 100),
      firstCurve: Curves.easeIn,
      secondCurve: Curves.easeOut,
      crossFadeState:
          isSelected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      firstChild: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          color: colorScheme.primary.primaryBlue500,
          borderRadius: const BorderRadius.all(Radius.circular(4)),
        ),
        child: Icon(
          Icons.check,
          size: 18,
          color: colorScheme.background.onPrimary,
        ),
      ),
      secondChild: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          border: Border.all(
            color: colorScheme.neutral.neutralGray200,
            width: 2,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(4)),
        ),
      ),
    );
  }
}
