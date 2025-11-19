import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeLight());

  void toggleTheme() {
    if (state.mode == ThemeMode.light) {
      emit(ThemeDark());
    } else {
      emit(ThemeLight());
    }
  }
}
