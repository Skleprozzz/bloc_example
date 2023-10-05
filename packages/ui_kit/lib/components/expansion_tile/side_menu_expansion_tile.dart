import 'package:flutter/material.dart';
import 'package:ui_kit/theme/app_theme.dart';

class SideMenuExpansionTile extends StatelessWidget {
  const SideMenuExpansionTile({
    required this.title,
    required this.children,
    this.leading,
    this.iconColor,
    this.backgroundColor,
    this.controller,
    this.maintainState = false,
    super.key,
    this.textColor,
    this.tilePadding = EdgeInsets.zero,
    this.expandedAlignment = Alignment.centerLeft,
    this.expandedCrossAxisAlignment = CrossAxisAlignment.start,
    this.isExpanded = true,
    this.initiallyExpanded = false,
    this.onExpansionChanged,
  });

  final Widget title;
  final Widget? leading;
  final Color? iconColor;
  final Color? backgroundColor;
  final List<Widget> children;
  final ExpansionTileController? controller;
  final bool maintainState;
  final Color? textColor;
  final EdgeInsetsGeometry tilePadding;
  final Alignment expandedAlignment;
  final CrossAxisAlignment expandedCrossAxisAlignment;
  final bool isExpanded;
  final bool initiallyExpanded;
  // ignore: avoid_positional_boolean_parameters
  final void Function(bool)? onExpansionChanged;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data:
          context.theme.materialTheme.copyWith(hoverColor: Colors.transparent),
      child: ExpansionTile(
        title: isExpanded ? title : leading!,
        leading: isExpanded ? leading : null,
        tilePadding: tilePadding,
        iconColor: iconColor,
        collapsedIconColor: iconColor,
        backgroundColor: backgroundColor,
        controller: controller,
        maintainState: maintainState,
        collapsedTextColor: textColor,
        textColor: textColor,
        initiallyExpanded: initiallyExpanded,
        onExpansionChanged: onExpansionChanged,
        trailing: const SizedBox.shrink(),
        expandedCrossAxisAlignment: expandedCrossAxisAlignment,
        expandedAlignment: expandedAlignment,
        children: children,
      ),
    );
  }
}
