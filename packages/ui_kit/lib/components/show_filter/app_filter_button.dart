import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class AppFilterButton extends StatelessWidget {
  const AppFilterButton({
    required this.buttonTitle,
    required this.filterItems,
    required this.width,
    this.menuWidth = 300,
    this.left,
    super.key,
  });
  final double width;
  final double menuWidth;
  final Widget buttonTitle;
  final List<PopupMenuEntry<Widget>> filterItems;
  final Widget? left;

  @override
  Widget build(BuildContext context) {
    return AppButton.uncolored(
      type: AppButtonType.floating,
      width: width,
      onPressed: () {
        final widgetBox = context.findRenderObject()! as RenderBox;

        final offset = widgetBox.localToGlobal(Offset.zero);
        final left = offset.dx;
        final top = offset.dy + widgetBox.size.height;
        final right = left + widgetBox.size.width;
        showMenu(
          position: RelativeRect.fromLTRB(left, top, right, 0),
          constraints: BoxConstraints(
            minWidth: menuWidth,
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          context: context,
          items: filterItems,
        );
      },
      left: left,
      center: buttonTitle,
    );
  }
}
