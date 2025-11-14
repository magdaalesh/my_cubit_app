import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_cubit_app/core/appp-route.dart';
import 'package:my_cubit_app/features/auth/presentation/view/manager/password_cubit.dart';

import 'features/auth/presentation/view/forgotpasswordview.dart';
import 'features/auth/presentation/view/loginview.dart';
import 'features/auth/presentation/view/resetpasswordview.dart';
import 'features/auth/presentation/view/verficationcodeview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return PasswordCubit();
      },
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      ),
    );
  }
}
