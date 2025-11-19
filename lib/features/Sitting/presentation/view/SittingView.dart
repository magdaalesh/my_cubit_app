import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '/core/theme/theme.dart';
import '/core/theme/theme_state.dart';
import '/features/Sitting/presentation/view/widget/sictiontitle.dart';
import '/features/Sitting/presentation/view/widget/sittingcard.dart';

import '../../../../core/function/function.dart';
import '../../../../core/theme/theme_cubit.dart';
import '../../../../core/widget/appbar.dart';

class Sittingview extends StatefulWidget {
  const Sittingview({super.key});

  @override
  State<Sittingview> createState() => _SittingviewState();
}

class _SittingviewState extends State<Sittingview> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Appbarcustom(title: "Setting", icon: Icons.settings_outlined),
        Sictiontitle(title: "Account Sitting"),
        Sittingcard(
          sittingicon: Icons.manage_accounts,
          sittingtype: "Edit profile",
          ontap: () {
            context.push("/Editprofile");
          },
        ),
        Sittingcard(
          sittingicon: Icons.lock_reset,
          sittingtype: "Change password",
          ontap: () {
            context.push("/changepassword");
          },
        ),
        Sictiontitle(title: "Other Sitting"),
        BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) {
            return Sittingcard(
              sittingicon: state.mode == ThemeMode.dark
                  ? Icons.light_mode
                  : Icons.dark_mode,
              sittingtype: "Theme",
              ontap: () {
                context.read<ThemeCubit>().toggleTheme();
              },
            );
          },
        ),
        Sittingcard(
          sittingicon: Icons.delete,
          sittingtype: "Delete account",
          ontap: () {
            showcustomdialoge(
              context,
              "Delete account",
              Text("are you sure you want to delete your account ?"),
              () {
                context.go("/");
              },
            );
          },
        ),
        Sittingcard(
          sittingicon: Icons.logout,
          sittingtype: "Sign out",
          ontap: () {
            context.go('/');
          },
        ),
      ],
    );
  }
}
