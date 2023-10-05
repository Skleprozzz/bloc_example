import 'dart:async';

import 'package:flutter/material.dart';

class SidebarController extends ChangeNotifier {
  SidebarController({
    bool? extended,
  }) {
    _setExtended(extended ?? false);
  }

  var _extended = false;

  final _extendedController = StreamController<bool>.broadcast();
  Stream<bool> get extendStream =>
      _extendedController.stream.asBroadcastStream();

  bool get extended => _extended;
  // ignore: avoid_positional_boolean_parameters
  void setExtended(bool extended) {
    _extended = extended;
    _extendedController.add(extended);
    notifyListeners();
  }

  void toggleExtended() {
    _extended = !_extended;
    _extendedController.add(_extended);
    notifyListeners();
  }

  void _setExtended(bool val) {
    _extended = val;
    notifyListeners();
  }

  @override
  void dispose() {
    _extendedController.close();
    super.dispose();
  }
}
