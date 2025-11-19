import 'package:go_router/go_router.dart';
import '/features/Nav/presentation/view/Nav.dart';
import '/features/Sitting/presentation/view/SittingView.dart';
import '/features/Sitting/presentation/view/edit_profile.dart';
import '/features/auth/presentation/view/Signupview.dart';
import '/features/auth/presentation/view/forgotpasswordview.dart';
import '/features/auth/presentation/view/loginview.dart';
import '/features/auth/presentation/view/resetpasswordview.dart';
import '/features/auth/presentation/view/verficationcodeview.dart';
import '/features/home/presentation/view/homepageview.dart';
import '/features/profile/presentation/view/profileview.dart';
import '/features/Sitting/presentation/view/changepasswordview.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',

  routes: [
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
        return Verficationcodeview(source: source);
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
    StatefulShellRoute.indexedStack(
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: "/Sitting",
              name: "Sitting",
              builder: (context, state) => Sittingview(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: "/home",
              name: "home",
              builder: (context, state) => Homepageview(),
            ),
          ],
        ),

        StatefulShellBranch(
          routes: [
            GoRoute(
              path: "/Profile",
              name: "profile",
              builder: (context, state) => Profileview(),
            ),
          ],
        ),
      ],
      builder: (context, state, navigationShell) =>
          Nav(navigationShell: navigationShell),
    ),
    GoRoute(
      path: "/Editprofile",
      name: "editprofile",
      builder: (context, state) => EditProfile(),
    ),
    GoRoute(
      path: "/changepassword",
      name: "changepassword",
      builder: (context, state) => Changepasswordview(),
    ),
  ],
);
