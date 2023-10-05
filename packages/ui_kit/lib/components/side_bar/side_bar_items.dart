import 'package:flutter/material.dart';
import 'package:ui_kit/components/list_tile/app_list_tile.dart';
import 'package:ui_kit/theme/app_theme.dart';

class AppSideBarItem extends StatelessWidget {
  const AppSideBarItem({
    required this.title,
    this.isSelected = false,
    this.itemsCallback,
    this.left,
    this.right,
    this.isExpanded = true,
    super.key,
  });

  final bool isSelected;
  final VoidCallback? itemsCallback;
  final Widget title;
  final Widget? left;
  final Widget? right;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final colorScheme = appTheme.colorScheme;

    return Container(
      padding: EdgeInsets.zero,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        color: isSelected
            ? colorScheme.background.surface
            : colorScheme.background.background,
      ),
      child: AppListTile.fixedSmall(
        left: isExpanded ? left : null,
        right: right,
        title: isExpanded ? title : left!,
        callback: itemsCallback,
      ),
    );
  }
}
