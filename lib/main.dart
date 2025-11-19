import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/core/appp-route.dart';
import '/core/theme/theme_cubit.dart';
import '/core/theme/theme_state.dart';


import 'core/theme/theme.dart';

void main() {
  runApp(BlocProvider(create: (context) => ThemeCubit(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return MaterialApp.router(
          darkTheme: AppTheme.dark,
          theme: AppTheme.light,
          themeMode: state.mode,
          debugShowCheckedModeBanner: false,
          routerConfig: router,
        );
      },
    );
  }
}
