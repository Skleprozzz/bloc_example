import 'package:flutter/material.dart';
import 'package:ui_kit/components/option_cell/radio_item.dart';
import 'package:ui_kit/theme/app_theme.dart';

class AppOptionCellMedium extends StatelessWidget {
  const AppOptionCellMedium({
    required this.value,
    required this.selectedValue,
    required this.onChanged,
    super.key,
  });

  final String value;
  final String selectedValue;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final colorScheme = appTheme.colorScheme;

    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 52,
        maxWidth: 250,
      ),
      child: Ink(
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: InkWell(
          onTap: () => onChanged(value),
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    value,
                    overflow: TextOverflow.ellipsis,
                    style: appTheme.typography.bodyMedium.copyWith(
                      color: colorScheme.background.onSurface,
                    ),
                  ),
                ),
                SizedBox(
                  width: 52,
                  height: 52,
                  child: Center(
                    child: RadioItem(
                      isSelected: value == selectedValue,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
