import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../../theme/colors.dart';
import '../functions/check_dark_mode.dart';

extension ScaffoldExtensions on Scaffold {
  /// Add Annotated Region
  Widget addAnnotatedRegion(BuildContext context,
          {Color? navColor}) =>
      AnnotatedRegion(
          value: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness:
                  isDarkMode ? Brightness.light : Brightness.dark,
              systemNavigationBarColor:
                  navColor ?? Theme.of(context).colorScheme.onPrimary,
              systemNavigationBarIconBrightness:
                  isDarkMode ? Brightness.light : Brightness.dark),
          child: this);
}

extension WidgetExtensions on Widget {
  /// Custom Refresh indicator
  Widget refreshIndicator(
          {required BuildContext context,
          required Future<void> Function() onRefresh}) =>
      !kIsWeb
          ? RefreshIndicator(
              onRefresh: onRefresh,
              backgroundColor: whiteColor,
              color: Theme.of(context).colorScheme.primary,
              child: this)
          : this;

  // animating the onboarding screens
  Widget onBoardingRebuild({required String key}) {
    return AnimationConfiguration.synchronized(key: Key(key), child: this);
  }

  /// Add Mouse Region and Clickable Gesture
  Widget clickableMouse({VoidCallback? onTap}) => onTap == null
      ? MouseRegion(
          cursor: SystemMouseCursors.click,
          child: this,
        )
      : MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: onTap,
            child: this,
          ),
        );
}
