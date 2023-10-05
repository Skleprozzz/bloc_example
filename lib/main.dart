import 'dart:async';

import 'package:admin_panel/app/admin_panel.dart';
import 'package:admin_panel/sl/service_locator.dart';
import 'package:flutter/material.dart';

void main() {
  FlutterError.onError = (details) {
    Zone.current.handleUncaughtError(
      details.exception,
      details.stack ?? StackTrace.fromString(''),
    );
  };

  runZonedGuarded<void>(
    _run,
    (error, stackTrace) {},
  );
}

Future<void> _run() async {
  WidgetsFlutterBinding.ensureInitialized();

  await slInit();
  runApp(AdminPanel());
}
