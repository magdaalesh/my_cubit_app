import 'package:flutter/material.dart';

abstract class ThemeState {
  final ThemeMode mode;
  const ThemeState(this.mode);
}

class ThemeLight extends ThemeState {
  ThemeLight() : super(ThemeMode.light);
}

class ThemeDark extends ThemeState {
  ThemeDark() : super(ThemeMode.dark);
}
