import 'dart:async';

import 'package:config/environments/environment.dart';
import 'package:flutter/material.dart';
import 'package:mgt/app.dart';

class $$Frame {
  $$Frame({
    @required this.environment,
  }) {
    WidgetsFlutterBinding.ensureInitialized();
    _initialized();
  }

  Environment environment;

  Future<void> _initialized() async {
    // 1. init service (push notify, ...)
    // 2. register instance with environment params
    // 3. ......

    return runZonedGuarded(
      () {
        runApp(App());
      },
      (Object error, StackTrace stackTrace) {
        debugPrint('[APP] hanlder error: ${error.toString()}');
      },
    );
  }
}
