import 'package:WinWin/core/utils/enums/devicetype_enum.dart';
import 'package:flutter/material.dart';

class Responsive {
  // Breakpoints
  static const double mobileMaxWidth = 600;
  static const double tabletMaxWidth = 1024;

  /// Get device type from width
  static DeviceType getDeviceType(double width) {
    if (width < mobileMaxWidth) {
      return DeviceType.mobile;
    } else if (width < tabletMaxWidth) {
      return DeviceType.tablet;
    } else {
      return DeviceType.desktop;
    }
  }

  /// From context (screens)
  static DeviceType deviceType(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return getDeviceType(width);
  }

  /// Helpers
  static bool isMobile(BuildContext context) =>
      deviceType(context) == DeviceType.mobile;

  static bool isTablet(BuildContext context) =>
      deviceType(context) == DeviceType.tablet;

  static bool isDesktop(BuildContext context) =>
      deviceType(context) == DeviceType.desktop;

  // extension ResponsiveConstraints on BoxConstraints {
  //   double rw(double factor) {
  //     assert(factor > 0 && factor <= 1);
  //     return maxWidth * factor;
  //   }

  //   double rh(double factor) {
  //     assert(factor > 0 && factor <= 1);
  //     return maxHeight * factor;
  //   }
  // }

  static double ResponsiveHeight({
    required BuildContext context,
    double? height,
  }) => height != null
      ? MediaQuery.of(context).size.height * height
      : MediaQuery.of(context).size.height;

  static double ResponsiveWidth({
    required BuildContext context,
    double? width,
  }) => width != null
      ? MediaQuery.of(context).size.width * width
      : MediaQuery.of(context).size.width;
}
