import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_cubit_app/features/auth/presentation/view/Signupview.dart';
import 'package:my_cubit_app/features/auth/presentation/view/forgotpasswordview.dart';
import 'package:my_cubit_app/features/auth/presentation/view/loginview.dart';
import 'package:my_cubit_app/features/auth/presentation/view/resetpasswordview.dart';
import 'package:my_cubit_app/features/auth/presentation/view/verficationcodeview.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: <GoRoute>[
    GoRoute(path: '/', name: 'login', builder: (context, state) => Loginview()),
    GoRoute(
      path: '/signup',
      name: 'signup',
      builder: (context, state) => Signupview(),
    ),
    GoRoute(
      path: '/verifycode',
      name: 'varifycode',
      builder: (context, state) {
         final String source = state.extra as String;
        return Verficationcodeview(source: source,);
      },
    ),
    GoRoute(
      path: '/resetpasswor',
      name: 'resetpasssword',
      builder: (context, state) => ResetpasswordView(),
    ),
    GoRoute(
      path: '/forgetpassword',
      name: 'forgetpassword',
      builder: (context, state) => ForgotpasswordView(),
    ),
  ],
);
