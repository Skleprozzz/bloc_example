import 'package:flutter/widgets.dart';

extension ListWidgetExtension on List<Widget> {
  List<Widget> addSpacers({double? width, double? height}) {
    assert(
      width != null || height != null,
      (width ?? 0.0) >= 0.0 || (height ?? 0.0) >= 0.0,
    );

    return expand((child) sync* {
      yield SizedBox(width: width, height: height);
      yield child;
    }).skip(1).toList();
  }

  List<Widget> addSeparators(Widget separator) {
    return expand((child) sync* {
      yield separator;
      yield child;
    }).skip(1).toList();
  }
}
