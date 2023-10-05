import 'package:flutter/material.dart';
import 'package:ui_kit/components/option_cell/checkbox_item.dart';
import 'package:ui_kit/theme/app_theme.dart';

class AppOptionCellSmall extends StatelessWidget {
  const AppOptionCellSmall({
    required this.value,
    required this.isSelected,
    required this.onChanged,
    super.key,
  });

  final String value;
  final bool isSelected;
  // ignore: avoid_positional_boolean_parameters
  final void Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final colorScheme = appTheme.colorScheme;

    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 52,
        maxWidth: 164,
        minWidth: 164,
      ),
      child: Ink(
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: InkWell(
          onTap: () => onChanged(!isSelected),
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 52,
                  height: 52,
                  child: Center(
                    child: CheckboxItem(
                      isSelected: isSelected,
                    ),

                    //  RadioItem(
                    //   isSelected: value == selectedValue,
                    // ),
                  ),
                ),
                Expanded(
                  child: Text(
                    value,
                    overflow: TextOverflow.ellipsis,
                    style: appTheme.typography.bodyMedium.copyWith(
                      color: colorScheme.background.onSurface,
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
