// screen sizes
import 'package:flutter/material.dart';

const double maximumWidthConstraint = 700.0;

bool isMobile(BuildContext context) => MediaQuery.sizeOf(context).width < 600;

bool isTablet(BuildContext context) =>
    MediaQuery.sizeOf(context).width < 1100 &&
    MediaQuery.sizeOf(context).width >= 600;

bool isSmallDesktop(BuildContext context) =>
    MediaQuery.sizeOf(context).width < 1500 &&
    MediaQuery.sizeOf(context).width >= 1100;

bool isDesktop(BuildContext context) =>
    MediaQuery.sizeOf(context).width >= 1500;

double getHorizontalPadding(context) {
  if (isMobile(context)) {
    return 24;
  } else if (isTablet(context)) {
    return 28;
  } else {
    return 32;
  }
}

class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget? smallDesktop;
  final Widget desktop;

  const ResponsiveWidget(
      {super.key,
      required this.mobile,
      required this.desktop,
      this.tablet,
      this.smallDesktop});

  @override
  Widget build(BuildContext context) {
    return isMobile(context)
        ? mobile
        : isTablet(context) && tablet != null
            ? tablet!
            : isTablet(context) && tablet == null
                ? mobile
                : isSmallDesktop(context) && smallDesktop != null
                    ? smallDesktop!
                    : desktop;
  }
}
