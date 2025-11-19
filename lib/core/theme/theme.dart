import 'package:flutter/material.dart';
import '/core/const/color.dart';

class AppTheme {
  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
    colorSchemeSeed: mycolorapp,
    useMaterial3: true,
  );

  static final ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    colorSchemeSeed: mycolorapp,
    useMaterial3: true,
  );
}
