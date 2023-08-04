import 'package:flutter/material.dart';
import 'package:rumor_radar/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fill => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fill1 => BoxDecoration(
        color: appTheme.blue700,
      );
  static BoxDecoration get fill3 => BoxDecoration(
        color: theme.colorScheme.errorContainer,
      );
  static BoxDecoration get fill2 => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );
}

class BorderRadiusStyle {}


 StrokeAlign get strokeAlignInside => StrokeAlign.inside;
 StrokeAlign get strokeAlignCenter => StrokeAlign.center;
 StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
