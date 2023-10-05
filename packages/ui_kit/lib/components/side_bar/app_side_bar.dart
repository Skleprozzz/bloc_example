import 'package:flutter/material.dart';
import 'package:ui_kit/components/side_bar/side_bar_controller.dart';
import 'package:ui_kit/theme/app_theme.dart';
import 'package:ui_kit/ui_kit.dart';

typedef HeaderBuilder = Widget Function({required bool expanded});
typedef ItemsBuilder = List<Widget> Function({
  required bool expanded,
  required int selectedIndex,
});

class AppSideBar extends StatefulWidget {
  const AppSideBar({
    required this.itemsMenu,
    required this.content,
    required this.sidebarController,
    required this.headerBuilder,
    this.selectedIndex = 0,
    this.appBar,
    super.key,
  });

  final ItemsBuilder itemsMenu;

  final Widget content;

  final SidebarController sidebarController;

  final HeaderBuilder headerBuilder;
  final PreferredSizeWidget? appBar;

  final int selectedIndex;

  @override
  State<AppSideBar> createState() => _AppSideBarState();
}

class _AppSideBarState extends State<AppSideBar> {
  List<IconData> icon = [
    SystemIcons.add,
    SystemIcons.arrowDropDown,
    SystemIcons.arrowUp,
  ];

  final ValueNotifier<List<Widget>> items = ValueNotifier([]);

  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (widget.sidebarController.extended) {
      items.value.addAll(
        widget.itemsMenu(
          expanded: widget.sidebarController.extended,
          selectedIndex: widget.selectedIndex,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: widget.sidebarController,
      builder: (context, _) {
        return ValueListenableBuilder(
          valueListenable: items,
          builder: (context, value, child) {
            if (!widget.sidebarController.extended && items.value.isNotEmpty) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                items.value = List.empty();
              });
            }
            return Row(
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 150),
                  height: MediaQuery.of(context).size.height,
                  onEnd: () {
                    if (widget.sidebarController.extended) {
                      items.value = widget.itemsMenu(
                        expanded: widget.sidebarController.extended,
                        selectedIndex: widget.selectedIndex,
                      );
                    }
                  },
                  width: widget.sidebarController.extended ? 260 : 80,
                  decoration: BoxDecoration(
                    color: context.colorScheme.background.background,
                  ),
                  child: Column(
                    children: [
                      widget.headerBuilder(
                        expanded: widget.sidebarController.extended,
                      ),
                      Expanded(
                        child: Scrollbar(
                          controller: scrollController,
                          scrollbarOrientation: ScrollbarOrientation.left,
                          child: ScrollConfiguration(
                            behavior: _MyBehavior(),
                            child: ListView(
                              controller: scrollController,
                              children: widget.itemsMenu(
                                expanded: widget.sidebarController.extended,
                                selectedIndex: widget.selectedIndex,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Scaffold(
                    appBar: widget.appBar,
                    body: widget.content,
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}

class _MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    return child;
  }

  @override
  Widget buildScrollbar(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    return child;
  }
}
