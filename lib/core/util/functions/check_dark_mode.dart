import 'dart:ui';

import 'package:flutter/scheduler.dart';

bool get isDarkMode {
  var brightness =
      SchedulerBinding.instance.platformDispatcher.platformBrightness;
  bool isDarkMode = (brightness == Brightness.dark);

  return isDarkMode;
}
