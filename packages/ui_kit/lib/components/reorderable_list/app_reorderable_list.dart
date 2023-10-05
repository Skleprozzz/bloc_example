import 'package:flutter/material.dart';
import 'package:ui_kit/theme/app_theme.dart';
import 'package:ui_kit/ui_kit.dart';

class AppReorderableList extends StatefulWidget {
  const AppReorderableList({
    required this.items,
    required this.onReorder,
    super.key,
  });

  final List<AppOptionCellSmall> items;

  final void Function(int, int) onReorder;

  @override
  State<AppReorderableList> createState() => _AppReorderableListExampleState();
}

class _AppReorderableListExampleState extends State<AppReorderableList> {
  @override
  Widget build(BuildContext context) {
    final items = widget.items;
    return Theme(
      data: context.theme.materialTheme.copyWith(
        hoverColor: Colors.transparent,
      ),
      child: SizedBox(
        width: 200,
        height: 400,
        child: ReorderableListView(
          buildDefaultDragHandles: false,
          // shrinkWrap: true,

          children: <Widget>[
            for (int index = 0; index < items.length; index += 1)
              Row(
                key: Key('$index'),
                children: [
                  items[index],
                  // AppOptionCellSmall(
                  //   value: 'All',
                  //   onChanged: (value) {},
                  //   isSelected: false,
                  // ),
                  ReorderableDragStartListener(
                    index: index,
                    child: UiKitAssets.icons.sectionIcons.dragIndicator.svg(),
                  ),
                ],
              ),
          ],
          onReorder: (int oldIndex, int newIndex) {
            setState(() {
              if (oldIndex < newIndex) {
                newIndex -= 1;
              }
              final item = items.removeAt(oldIndex);
              items.insert(newIndex, item);
            });
            widget.onReorder(oldIndex, newIndex);
          },
        ),
      ),
    );
  }
}
